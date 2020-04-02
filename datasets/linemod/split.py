import glob
import os


percentage_test = 15
# Create and/or truncate train.txt and test.txt
file_train = open('train.txt', 'w')
file_test = open('test.txt', 'w')
# Populate train.txt and test.txt
counter = 1
index_test = round(100 / percentage_test)
current_dir = "/home/jaco/DenseFusion/datasets/linemod/grelhas/data/01/rgb"
for pathAndFilename in glob.iglob(os.path.join(current_dir, "*.jpg")):
    title, ext = os.path.splitext(os.path.basename(pathAndFilename))
    if counter == index_test:
        counter = 1
        file_test.write(title + "\n")
    else:
        file_train.write(title + "\n")
        counter = counter + 1
