from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    users = [
        {'first_name' : 'Francisco', 'last_name' : 'Rene'},
        {'first_name' : 'Javier', 'last_name' : 'Lepiz'},
        {'first_name' : 'Marion', 'last_name' : 'Matarrita'},
        {'first_name' : 'Stephanie', 'last_name' : 'Polanski'}
    ]
    return render_template("HTMLTable.html",users=users)



if __name__=="__main__":
    app.run(debug=True)