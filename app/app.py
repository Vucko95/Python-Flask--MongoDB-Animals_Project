from flask import Flask, render_template, request, url_for, redirect
from pymongo import MongoClient
app = Flask(__name__)
client = MongoClient('192.168.6.1', 27017,
                     username='superadmin', password='password')
db = client.animal_db
todos = db.todos


@app.route('/', methods=('GET', 'POST'))
def index():
    if request.method == 'POST':
        content = request.form['content']
        gender = request.form['gender']
        todos.insert_one({'content': content, 'gender': gender})
        return redirect(url_for('index'))

    all_todos = todos.find()
    return render_template('index.html', todos=all_todos)


if __name__ == '__main__':
    app.run(debug=True)


# @app.route('/add', methods=['POST'])
# def add_todo():
#     new_todo = request.form.get('new-todo')
#     todos.insert_one({'text': new_todo, 'complete': False})
#     return redirect(url_for('index'))


# @app.route('/complete/<oid>')
# def complete(oid):
#     todo_item = todos.find_one({'_id': ObjectId(oid)})
#     todo_item['complete'] = True
#     todos.save(todo_item)
#     return redirect(url_for('index'))


# @app.route('/delete_completed')
# def delete_completed():
#     todos.delete_many({'complete': True})
#     return redirect(url_for('index'))


# @app.route('/delete_all')
# def delete_all():
#     todos.delete_many({})
#     return redirect(url_for('index'))
