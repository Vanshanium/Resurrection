import os
import requests
import sys
import shutil


# TODO : Write Logics to check if Mega_CMD is installed

username = os.getlogin()
get_command = rf"C:\Users\{username}\AppData\Local\MEGAcmd\mega-get.bat"

folder_path = os.getcwd()


# TODO : Make a Loading animation

print("Downloading the Setup Files")

folder_url = "https://mega.nz/folder/pZAEUJZJ#PX9NZ_d4B7HAGBNrv49-pA"

command = get_command + " " + folder_url + " " + folder_path

os.system(command)

print("Setups Downloaded")

# TODO : Make logics for Installation of PowerToys
# extract ./Win/PowerToys.rar


# TODO : Make logics for Activation of WinRar 
# Get rarreg.key.txt from the folder and move it to C:\Program Files\WinRAR
# os.system("move rarreg.key.txt C:\Program Files\WinRAR")


# TODO Make logics for Installation of MS OFFICE 
# extract ./Win/office.rar
# os.command(./Win/office/setup.exe \configure ./configuration.xml)  this will install the OFFICE
# os.command(./Win/office/Activate/all/activate.cmd) 
