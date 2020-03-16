from picamera import PiCamera
from time import sleep
from datetime import datetime

camera = PiCamera()
camera.rotation=180

# capture 4,500 images each 8 seconds apart (approx. interval train is in shot)
for i in range(4500):
    sleep(8)
    camera.capture('Training-photos/%s.jpg' % datetime.now().strftime("%H_%M_%S"))

# print time when script finishes
print("Finishing time: ", datetime.now().strftime("%H:%M:%S"))
