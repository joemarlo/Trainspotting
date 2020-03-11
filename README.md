# Trainspotting
Goal of the project is to predict when trains will pass by my apartment using [Poisson process](https://en.wikipedia.org/wiki/Poisson_point_process). Data will be recorded using a [Raspberry Pi](https://www.raspberrypi.org) and associated camera. Trains will be counted by feeding the images through a TensorFlow algo which will determine when the image contains a train.


## To-do
- [x] Set up Raspberry Pi and camera
- [x] Capture training photos
- [ ] Label training photos
- [ ] Train algo
- [ ] Derive parameters for Poisson process by running algo for a day or two to count trains
- [ ] Set up video stream with live prediction
