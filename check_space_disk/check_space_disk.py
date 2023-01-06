import shutil
import requests

def telegram_notify(_msg=''):
    TOKEN = 'XXXX:XXXXXXXXX'
    CHAT_ID = 'XXXXXXXX'
    TELEGRAM_API_SEND_MSG = f'https://api.telegram.org/bot{TOKEN}/sendMessage'
    data = { 'chat_id': CHAT_ID, 'text': _msg }
    r = requests.post(TELEGRAM_API_SEND_MSG, data=data)
    if not r.ok:
        print("Error telegram_notify()")



total, used, free = shutil.disk_usage("/")

#print("Total: %d GiB" % (total // (2**30)))
#print("Used: %d GiB" % (used // (2**30)))
myfree=(free // (2**30))
print("Free: %d GiB" % myfree)
if myfree < 2:
    telegram_notify("Poco espacio en VPS Roboforex")
