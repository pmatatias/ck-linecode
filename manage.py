#!/usr/bin/python3

import argparse
import subprocess

parser = argparse.ArgumentParser("(Example: ./manage.py run app dev)")

parser.add_argument("action")
parser.add_argument("subapp")
parser.add_argument("env")

args = parser.parse_args()

action = args.action
subapp = args.subapp
env = args.env

# env_file = open("./env.json")
# env_json = json.loads(env_file.read())
# env_file.close()


print(action)
print(subapp)
print(env)