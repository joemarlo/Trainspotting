from picamera import PiCamera #, Color
from time import sleep
from datetime import datetime

camera = PiCamera()

camera.rotation=180

for i in range(4500):
    sleep(8)
    camera.capture('Training-photos/%s.jpg' % datetime.now().strftime("%H_%M_%S"))

current_time = datetime.now().strftime("%H_%M_%S")
print("Current time = ", current_time)



# camera.start_preview(alpha=200)
# for i in range(5):
#    sleep(5)
#    camera.capture('/home/pi/Desktop/image%s.jpg' % i)
# camera.stop_preview()

#camera.rotation = 90
# camera.capture('image.jpg')
# camera.annotate_text = 'poisson prediction'
# camera.annotate_background = Color('black')
# camera.annotate_foreground = Color('white')
# camera.annotate_text_size = 50
# camera.exposure_mode = 'night'

# camera.resolution = (64, 64)
# camera.framerate = 15
# camera.start_recording('video.h264')
# sleep(10)
# camera.stop_recording()
