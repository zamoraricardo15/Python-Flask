from flask import Flask, render_template, session, redirect,request

app = Flask(__name__)

app.secret_key="surveykey."

@app.route('/')
def dojo():
    return render_template("dojo.html")

@app.route('/process',methods=['POST'])
def process():
    session['name'] = request.form['name']
    session['location'] = request.form['location']
    session['language'] = request.form['language']
    session['comments'] = request.form['comments']
    return redirect('/info')

@app.route('/info')
def info():
    return render_template('info.html')
    
if __name__=="__main__":
    app.run(debug=True)