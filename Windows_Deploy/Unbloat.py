# Read this : https://christitus.com/windows-tool/

# TODO: Add Error Handling and logging 
import os
os.system("python -m pip install elevate")

import elevate
elevate.elevate()

os.system("iwr -useb https://christitus.com/win | iex")


