import os
import shutil
import sys
# Favorites
# Tempus Spring
# nordp
# tempus summer
# solarized dark
# original

def forceCopyFile(sfile, dfile):
    if os.path.isfile(sfile):
        shutil.copy2(sfile, dfile)



if __name__ == "__main__":
    forceCopyFile(sys.argv[1], "./foot.ini")
