import json
from subprocess import call


with open('earth-view.widget/response.json', 'rb') as response:
    res = json.load(response)
photo_url = res['photoUrl']
next_api = 'https://earthview.withgoogle.com' + res['nextApi']

print photo_url
print next_api
call(["curl", "-so",
      "earth-view.widget/images/img.jpg", "{0}".format(photo_url)])
call(["curl", "-so",
      "earth-view.widget/response.json", "{0}".format(next_api)])
