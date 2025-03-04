import os
os.system("python -m pip install requests")

os.system("python -m pip install elevate")
import elevate
elevate.elevate()

import requests
import subprocess
import sys
import shutil

def Create_Temp_folder(folder_name): 

    cwd = os.getcwd()
    folder_path = os.path.join(cwd,folder_name)

    print(folder_path)
    if os.path.exists(folder_path):
        print("The Temp Folder already exist Remove it to conntine!")   
    else:
        os.mkdir(folder_path)
        print("the file is created")

    return folder_path
folder_path = Create_Temp_folder("setup_files")

def software_installer(soft_name,link):

    print(f"Installing {soft_name}....")

    installer_path = os.path.join(folder_path, f"{soft_name}.exe")

    response = requests.get(link)

    if response.status_code == 200:
        with open(installer_path, "wb") as file:
            file.write(response.content)
        print(f"{soft_name} downloaded successfully.")

    else:
        print("Failed to download.")
        sys.exit(1)

    os.system(installer_path)

    print(f"{soft_name} Installed!!")

#This Starts the Show

Packages = {

    "Google_Chrome" : "https://dl.google.com/chrome/install/latest/chrome_installer.exe",
    "WinRar"    : "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-701.exe",
    "Vs_Code"   : "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user",
    "Figma"     : "https://desktop.figma.com/win/FigmaSetup.exe",
    "Obs"       : "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-30.2.3-Windows-Installer.exe",
    "MEGAsyncSetup64"  : "https://mega.nz/MEGAsyncSetup64.exe",
    "MEGAcmdSetup64"   : "https://mega.nz/MEGAcmdSetup64.exe",
    "Git" : "https://github.com/git-for-windows/git/releases/download/v2.47.0.windows.2/Git-2.47.0.2-64-bit.exe"
}

for package_name, url in Packages.items():

    answer = input(f"Do you want to downlaod {package_name}?? Y/N")

    if(answer in ["yes","y","Y"]):
        software_installer(package_name,url)
    
print("Installation Done!!")


print("Install the MegaCMD manually!!!")
response = input("Do you want to Run the Activator??")

if response in ["yes","YES","Y","y"]:
    os.system("python Activator.py")

shutil.rmtree(folder_path) # Remove the Setup files.