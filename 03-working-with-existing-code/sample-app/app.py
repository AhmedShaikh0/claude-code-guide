from flask import Flask, render_template, request, redirect, url_for

# BUG 1: Missing import — jsonify is used in /api/todos but not imported

app = Flask(__name__)

todos = [
    {"id": 1, "title": "Buy groceries", "done": False},
    {"id": 2, "title": "Write README", "done": True},
    {"id": 3, "title": "Fix bugs", "done": False},
]


def get_next_id():
    if not todos:
        return 1
    return max(todo["id"] for todo in todos) + 1


@app.route("/")
def index():
    return render_template("index.html", todos=todos)


@app.route("/add", methods=["POST"])
def add_todo():
    title = request.form.get("title", "").strip()
    if title:
        todos.append({"id": get_next_id(), "title": title, "done": False})
    return redirect(url_for("index"))


@app.route("/toggle/<int:todo_id>", methods=["POST"])
def toggle_todo(todo_id):
    for todo in todos:
        if todo["id"] == todo_id:
            # BUG 2: typo — 'tood' instead of 'todo'
            tood["done"] = not todo["done"]
            break
    return redirect(url_for("index"))


@app.route("/delete/<int:todo_id>", methods=["POST"])
def delete_todo(todo_id):
    # BUG 4: off-by-one — range should go to len(todos), not len(todos)-1
    for i in range(len(todos) - 1):
        if todos[i]["id"] == todo_id:
            todos.pop(i)
            break
    return redirect(url_for("index"))


@app.route("/api/todos")
def api_todos():
    return jsonify(todos)


# BUG 3: Missing if __name__ == '__main__' block
# BUG 5: debug=True is hardcoded instead of using an env variable
app.run(debug=True, port=5000)
