from flask import Flask, request, send_from_directory, redirect

# set the project root directory as the static folder, you can set others.
app = Flask(__name__, static_url_path='')

@app.route('/<path:path>')
def send_static_files(path):
    return send_from_directory('static', path)

@app.route('/')
def index():
    return redirect('/index.html')    

if __name__ == "__main__":
    app.run(port=8080, debug=True)