import os
import requests
import sys
import shutil


# New directory to add to the PATH
username = os.getlogin()
get_command = rf"C:\Users\{username}\AppData\Local\MEGAcmd\mega-get.bat"

folder_path = os.getcwd()

print("activator is running.......  Getting Activation Packages")

folder_url = "https://mega.nz/folder/pZAEUJZJ#PX9NZ_d4B7HAGBNrv49-pA"

command = get_command + " " + folder_url + " " + folder_path

os.system(command)


