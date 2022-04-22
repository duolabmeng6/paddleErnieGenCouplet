import requests
import json

def getResult(text):
    data = {"texts": text, "beam_width": 5, "use_gpu":False}
    r = requests.post("http://127.0.0.1:9000/predict/ernie_gen_couplet", data=json.dumps(data),
                        headers={'Content-Type': 'application/json'})
    return json.dumps(r.json(), indent=4, ensure_ascii=False)

print(getResult(["人增福寿年增岁", "风吹云乱天垂泪"]))