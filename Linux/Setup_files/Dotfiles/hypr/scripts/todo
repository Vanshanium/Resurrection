#!/usr/bin/env python3

import os
import argparse

parser = argparse.ArgumentParser(description="Manage your todo list")
parser.add_argument("-c","--category", help="List tasks in a category")
parser.add_argument("-r","--remove", help="Remove Task from a category")
parser.add_argument("-a","--add", help="Add a new category")
parser.add_argument("-t","--task", help="Add a task to a category")
parser.add_argument("-d","--delete", help="Delete a category")
parser.add_argument("-l","--list", action="store_true", help="List all categories")
args = parser.parse_args()



folder = os.path.expanduser("~/Library/todo")
os.makedirs(folder, exist_ok=True)

def color_text(text, color):
    return f"\033[{color}m{text}\033[0m"

def show_category(cat_name):
    print(color_text(cat_name, "1;36"))
    with open(folder + "/" + cat_name, "r") as f:
        for line in f:
            print(color_text(line.rstrip(), "91"))

def show_all():
    for file in os.listdir(folder):
        print(color_text(file, "1;36"))
        with open(folder + "/" + file, "r") as f:
            for line in f:
                print(color_text(line.rstrip(), "91"))

def list_categories():
    for file in os.listdir(folder):
        print(color_text(file, "1;36"))

def add_category(cat_name):
    with open(folder + "/" + cat_name, "w") as f:
        f.write("")

def add_task(cat_name,task):
    task = task.strip()
    with open(folder + "/" + cat_name, "a") as f:
        f.write(task + "\n")

def remove_task(cat_name, task):
    task = task.strip()
    with open(folder + "/" + cat_name, "r") as f:
        lines = f.readlines()
    with open(folder + "/" + cat_name, "w") as f:
        for line in lines:
            if line.strip() != task:
                f.write(line)

def delete_category(cat_name):
    try:
        os.remove(folder + "/" + cat_name)
    except FileNotFoundError:
        print(color_text(f"Category '{cat_name}' does not exist.", "91"))
        return
    print(color_text(f"Category '{cat_name}' deleted.", "92"))

if args.task:
    if args.category:
        add_task(args.category, args.task)
        print(color_text(f"Task '{args.task}' added to category '{args.category}'.", "92"))
    else:
        print(color_text("Please specify a category with -c or --category.", "91"))


elif args.remove:
    if args.category:
        remove_task(args.category, args.remove)
        print(color_text(f"Task '{args.remove}' removed from category '{args.category}'.", "92"))
    else:
        print(color_text("Please specify a category with -c or --category.", "91"))
elif args.delete:
    delete_category(args.delete)        

elif args.category:
    cat_name = args.category
    show_category(cat_name)

elif args.list:
    list_categories()

elif args.add:
    add_category(args.add)
    print(color_text(f"Category '{args.add}' added.", "92"))

else:
    show_all()