#!/bin/bash

TF_OUTPUT_FILE="tf_outputs.json"
INVENTORY_FILE="inventory.ini"

if [ -f "$TF_OUTPUT_FILE" ]; then
    INSTANCE_IPS=$(jq -r '.ec2_instance_ips.value[]' < "$TF_OUTPUT_FILE")
    echo "[ec2_instances]" > "$INVENTORY_FILE"
    for ip in $INSTANCE_IPS; do
        echo "$ip ansible_user=ec2-user" >> "$INVENTORY_FILE"
    done
    echo "Inventory file '$INVENTORY_FILE' generated successfully."
else
    echo "Error: Terraform output file '$TF_OUTPUT_FILE' not found."
    exit 1
fi
