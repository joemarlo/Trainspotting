# Trainspotting
Goal of the project is to predict when trains will pass by my apartment using [Poisson process](https://en.wikipedia.org/wiki/Poisson_point_process). Data will be recorded using a [Raspberry Pi](https://www.raspberrypi.org) and associated camera. Trains will be counted by feeding the images through a TensorFlow image classifier which will determine whether the image contains a train.


## To-do
- [x] Set up Raspberry Pi and camera
- [x] Capture training images
  - Captured 4,500 images in sunny, overcast, and rainy conditions
- [x] Label training images
  - 800 of the 4,500 contain at least one train
- [ ] Train classifier
- [ ] Derive parameters for Poisson process by running algo for a day or two to count trains
- [ ] Set up video stream with live prediction
