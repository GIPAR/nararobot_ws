import os
from tqdm import tqdm
import glob
import shutil

source_dir = '/home/gipar/Documentos/tese/'
dst = '/home/gipar/Documentos/valid/'

files = glob.glob(os.path.join(source_dir, "*.txt"))

for file in files:
    if os.path.isfile(file):
        shutil.move(file, dst)




  


  

  


