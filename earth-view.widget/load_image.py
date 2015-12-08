import json
from subprocess import call


with open('earth-view.widget/response.json', 'rb') as response:
    res = json.load(response)
photo_url = unicode(res['photoUrl'])
next_api = unicode('https://earthview.withgoogle.com' + res['nextApi'])

call(["curl", "-so",
      u"earth-view.widget/images/img.jpg", photo_url])
call(["curl", "-so",
      u"earth-view.widget/response.json", next_api])
