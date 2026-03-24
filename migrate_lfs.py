import subprocess

output = subprocess.check_output(["git", "lfs", "ls-files"]).decode('utf-8')
lines = output.split('\n')

files_to_migrate = []
for line in lines:
    if line.strip().endswith(".so"):
        path = line.split('-')[-1].strip()
        files_to_migrate.append(path)

print(f"Found {len(files_to_migrate)} .so files in LFS. Migrating out...")

for fpath in files_to_migrate:
    subprocess.run(["git", "rm", "--cached", fpath], capture_output=True)
    subprocess.run(["git", "add", fpath], capture_output=True)

print("Finished staging. Ready to commit.")
