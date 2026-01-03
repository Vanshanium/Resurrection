import os
import subprocess
import sys
from pathlib import Path

def run(cmd):
    print(f"> {cmd}")
    subprocess.run(cmd, shell=True, check=True)

def command_exists(cmd):
    return subprocess.run(
        f"where {cmd}", shell=True,
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL
    ).returncode == 0

# 3. SSH directory
ssh_dir = Path.home() / ".ssh"
ssh_dir.mkdir(exist_ok=True)

# 4. Generate SSH key
key = ssh_dir / "Git_Windows"

if not key.exists():
    print("🔑 Generating RSA key...")
    run(f'ssh-keygen -t rsa -b 4096 -C "vansh.singh8272@gmail.com" -f "{key}" -N ""')
else:
    print("🔑 SSH key already exists")

# 5. Add key to agent
run(f'ssh-add "{key}"')

# 6. Force Git to use Windows OpenSSH
run('git config --global core.sshCommand "C:/Windows/System32/OpenSSH/ssh.exe"')

# 7. Git identity
run('git config --global user.name "Vanshanium"')
run('git config --global user.email "your_email@example.com"')


# 9. Show public key
print("\n=== ADD THIS KEY TO GITHUB ===")
print((key.with_suffix(".pub")).read_text())

print("\n✅ Setup complete")
