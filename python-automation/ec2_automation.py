
### 3. **Python Automation Script**
**Folder Structure**: `/python-automation`
- **Files**: `ec2_automation.py`, `README.md`

**Contents for `ec2_automation.py`** (for EC2 start/stop based on tags):
```python
import boto3

ec2 = boto3.client('ec2', region_name='us-east-1')

def start_instances(tag_key, tag_value):
    instances = ec2.describe_instances(
        Filters=[{
            'Name': f"tag:{tag_key}",
            'Values': [tag_value]
        }]
    )
    instance_ids = [i['InstanceId'] for r in instances['Reservations'] for i in r['Instances']]
    if instance_ids:
        ec2.start_instances(InstanceIds=instance_ids)
        print(f"Started instances: {instance_ids}")
    else:
        print("No instances found with the specified tag.")

def stop_instances(tag_key, tag_value):
    instances = ec2.describe_instances(
        Filters=[{
            'Name': f"tag:{tag_key}",
            'Values': [tag_value]
        }]
    )
    instance_ids = [i['InstanceId'] for r in instances['Reservations'] for i in r['Instances']]
    if instance_ids:
        ec2.stop_instances(InstanceIds=instance_ids)
        print(f"Stopped instances: {instance_ids}")
    else:
        print("No instances found with the specified tag.")

if __name__ == "__main__":
    start_instances('Environment', 'Development')