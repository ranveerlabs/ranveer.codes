import flask,json

app=flask.Flask(__name__)
@app.get('/')
@app.get('/api')
def rocks():
    with open('rocks.json','r') as f:
        data=json.load(f)
    return data


