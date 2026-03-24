import glob

files = glob.glob("**/*.mk", recursive=True) + glob.glob("**/*.bp", recursive=True)

print(f"Total files: {len(files)}")

for filepath in files:
    try:
        with open(filepath, 'r') as f:
            lines = f.readlines()
            
        for i in range(len(lines)):
            line = lines[i].rstrip('\r\n')
            if line.endswith("\\"):
                print(f"--- {filepath} : Line {i+1} ---")
                start = max(0, i - 1)
                end = min(len(lines), i + 3)
                for j in range(start, end):
                    prefix = ">> " if j == i else "   "
                    print(f"{prefix}{j+1}: {lines[j].rstrip('r\n')}")
                print("-" * 40)
    except Exception:
        pass
