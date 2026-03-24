import urllib.request, json, os

# 1. Fetch JSON Node setups thresholds layout benchmarks formulation
url = "https://raw.githubusercontent.com/username/status-tracker/main/status.json" # Edit this Node
try:
    response = urllib.request.urlopen(url)
    data = json.loads(response.read().decode())
except Exception as e:
    print(f"Failed to fetch JSON: {e}")
    exit(1)

# 2. Build Markdown Table setups thresholds layout benchmarks setups dashboard structure finalizer
table = "| Device | Model | Status | Notes |\n| :--- | :--- | :--- | :--- |\n"
for d in data.get("devices", []):
    table += f"| **{d['name']}** | `{d['model']}` | {d['status']} | {d['notes']} |\n"

# 3. Replace inside README Node setups thresholds layouts setups dashboard structure dashboard finalizers
with open("README.md", "r") as f: content = f.read()

start_marker = "<!-- SUPPORT_TABLE_START -->"
end_marker = "<!-- SUPPORT_TABLE_END -->"

if start_marker in content and end_marker in content:
    before = content.split(start_marker)[0]
    after = content.split(end_marker)[1]
    new_readme = before + start_marker + "\n" + table + end_marker + after
    open("README.md", "w").write(new_readme)
    print("README.md updated successfully")
else:
    print("Markers not found in README.md")
