# script splits the images into training and validation sets by sampling
# for sake of simplicity, 'object' refers a 'train' 

# path to images
main.dir <- '/Users/joemarlo/Dropbox/Data/Projects/Trainspotting/'


# Images without trains ---------------------------------------------------

# list of images with no train in them
images <- list.files(paste0(main.dir, 'Images/No train'))

# split between training and validation images
train.split <- 0.7

# sample to get the training images and the validation images
train <- sample(images, size = length(images)*.7)
validate <- images[!(images %in% train)]

# check to ensure all images are included
(length(train) + length(validate)) == length(images)

# move the images into their respective folders
file.copy(from = paste0(main.dir, 'Images/No train/', train),
          to = paste0(main.dir, 'Training_dir/train/no_object'))
file.copy(from = paste0(main.dir, 'Images/No train/', validate),
          to = paste0(main.dir, 'Training_dir/validation/no_object'))


# Images with trains ------------------------------------------------------

# list of images with no train in them
images <- list.files(paste0(main.dir, 'Images/Yes train'))

# split between training and validation images
train.split <- 0.7

# sample to get the training images and the validation images
train <- sample(images, size = length(images)*.7)
validate <- images[!(images %in% train)]

# check to ensure all images are included
(length(train) + length(validate)) == length(images)

# move the images into their respective folders
file.copy(from = paste0(main.dir, 'Images/Yes train/', train),
          to = paste0(main.dir, 'Training_dir/train/object'))
file.copy(from = paste0(main.dir, 'Images/Yes train/', validate),
          to = paste0(main.dir, 'Training_dir/validation/object'))


# check totals ------------------------------------------------------------

# check number of images in the new folders
length(list.files(paste0(main.dir, 'Training_dir/train/object')))
length(list.files(paste0(main.dir, 'Training_dir/validation/object')))
length(list.files(paste0(main.dir, 'Training_dir/train/no_object')))
length(list.files(paste0(main.dir, 'Training_dir/validation/no_object')))
