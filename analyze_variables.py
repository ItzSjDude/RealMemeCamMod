import glob
import os

print("Searching for soong variables file...")
paths = glob.glob("/mnt/aosp/out/soong/soong.*.variables")

if not paths:
    print("Path glob yielded nothing. Attempting broad search...")

for fpath in paths:
    print(f"Analyzing: {fpath}")
    try:
        with open(fpath, 'r') as f:
            content = f.read()
            
        # JSON invalid character 'v' implies there is literally \v in the raw text file
        # JSON parser processes it as a string escape.
        idx = content.find('\\v')
        if idx != -1:
            print(f"--- MATCH FOUND in {fpath} at index {idx} ---")
            print(content[max(0, idx - 100):min(len(content), idx + 100)])
            print("-" * 50)
        else:
            print("No literal '\\v' found in text file.")
            
    except Exception as e:
         print(f"Error reading file: {e}")
