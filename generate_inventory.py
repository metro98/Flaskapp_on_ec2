import subprocess
import re

# Step 1: Extract Terraform output
try:
    terraform_output = subprocess.check_output(['terraform', 'show'], text=True)
except FileNotFoundError:
    print("Error: Terraform is not installed or not in the system PATH.")
    exit(1)
except subprocess.CalledProcessError as e:
    print(f"Error running 'terraform show': {e}")
    exit(1)

# Step 2: Extract public IP using regex
ip_match = re.search(r'public_ip\s*=\s*\"([0-9]{1,3}(?:\.[0-9]{1,3}){3})\"', terraform_output)
if not ip_match:
    print("Error: No public IP found in Terraform output.")
    exit(1)

public_ip = ip_match.group(1)

# Step 3: Write to inventory.ini file
inventory_content = f"""[web]
{public_ip} ansible_user=ec2-user
"""

try:
    with open("inventory.ini", "w") as inventory_file:
        inventory_file.write(inventory_content)
    print("inventory.ini file created successfully.")
except Exception as e:
    print(f"Error writing to inventory.ini file: {e}")
    exit(1)
