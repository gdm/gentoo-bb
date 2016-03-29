import os
from flask import Flask, request, redirect, url_for, Response
from werkzeug import secure_filename
import zipfile, tempfile
import shutil
import subprocess

UPLOAD_FOLDER = '/tmp'
ALLOWED_EXTENSIONS = set(['apk'])

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
app.config['MAX_CONTENT_LENGTH'] = 32 * 1024 * 1024



def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1] in ALLOWED_EXTENSIONS


@app.route('/', methods=['GET', 'POST'])
def upload_file():
    if request.method == 'POST':
        file = request.files['apk']
        if file and allowed_file(file.filename):
            filename = secure_filename(file.filename)
            apkPath = os.path.join(app.config['UPLOAD_FOLDER'], filename)
            file.save(apkPath)
            tmpdir = tempfile.mkdtemp()
            print "tmp folder created " + tmpdir
            with zipfile.ZipFile(apkPath, "r") as z:
                z.extractall(tmpdir)
            shutil.rmtree(os.path.join(tmpdir,'META-INF'))
            # replace connector.xml if provided
            xml = request.files['xml']
            if xml :
                xmlName = secure_filename(xml.filename)
                xmlPath = os.path.join(app.config['UPLOAD_FOLDER'], xmlName)
                xml.save(xmlPath)
                shutil.copy(xmlPath, os.path.join(tmpdir, 'assets/connector.xml'))

            fd, tmpZip = tempfile.mkstemp('zip')
            os.close(fd)
            shutil.make_archive(tmpZip, 'zip', tmpdir)

            print "zipfile is " + tmpZip

            # sign
            print subprocess.check_output("jarsigner -verbose -sigalg MD5withRSA -digestalg SHA1 -keystore {} -storepass {} {} installer-rel".
                    format(os.environ['KEYSTORE'], os.environ['KEYSTORE_PASSWORD'], tmpZip + ".zip"),
                stderr=subprocess.STDOUT,
                shell=True
                )

            bytes_read = open(tmpZip + ".zip", "rb").read()
            return Response(bytes_read, mimetype='application/zip', headers={'Content-Disposition':'attachment;filename=' + file.filename })

    return '''<!doctype html>
<title>Upload new File</title>
<h2>CNA Installer re-signer tool</h2>

<p>This tool will re-sign provided apk with the same private key as CNA Installer use for distributed apks. </p>
Use cases:
    <li>
     <ul>Replace connector.xml settings file in ServiceConnector.apk and re-sign</ul>
     <ul>Signing tools that need to access files owned by navkit/navui</ul>
    </li>
<br/>
<form action="" method=post enctype=multipart/form-data>
  <p><label for="apk">Apk for signing with CNA Installer key</label><input type="file" id="apk" name="apk">
  <p><label for="xml">(Optional) assets/connector.xml</label><input type="file" id="xml" name="xml"> 
  <p>
  <input type="submit" value="Get re-signed apk">
</form>
'''

if __name__ == '__main__':
        #print os.environ['KEYSTORE_PASSWORD']
        #print os.environ['JAVA_HOME']
        app.run(host='0.0.0.0', debug=True)
