from flask import Flask, render_template, request, redirect, url_for

app = Flask(__name__)

@app.route("/", methods=["GET", "POST"])
def login():
    if request.method == "POST":
        usuario = request.form["username"]
        senha = request.form["password"]
        if usuario == "admin" and senha == "123456":
            return redirect(url_for("dashboard"))
        else:
            return render_template("login.html", erro="Credenciais inválidas.")
    return render_template("login.html")

@app.route("/dashboard")
def dashboard():
    return render_template("dashboard.html")

if __name__ == "__main__":
    app.run(debug=True)
