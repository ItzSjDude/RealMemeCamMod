import glob

files = glob.glob("**/*.mk", recursive=True) + glob.glob("**/*.bp", recursive=True)

print("Found files:", len(files))

match_count = 0

for filepath in files:
    try:
        with open(filepath, 'r') as f:
            lines = f.readlines()
            
        for i in range(len(lines) - 1):
            if lines[i].rstrip().endswith("\\"):
                next_line = lines[i+1].lstrip()
                if next_line.startswith("o"):
                    print(f"FOUND MATCH in {filepath} near line {i+1}:")
                    print(f"Line {i+1}: {lines[i].rstrip()}")
                    print(f"Line {i+2}: {lines[i+1].rstrip()}")
                    print("-" * 40)
                    match_count += 1
    except Exception:
        pass

print(f"Total matches found: {match_count}")
