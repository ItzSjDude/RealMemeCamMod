import os
import re

# Source dirs to scan
SOURCES_DIRS = [
    "oplus-frameworks/opcore-fwk/src",
    "oplus-frameworks/op-support-wrapper/src",
    "CoreSdk/7pro/com.oplus.camera.unit.sdk/src",
    "CoreSdk/8pro/com.oplus.camera.unit.sdk/src"
]

# Standard AOSP packages that are assumed safe (whitelist)
SAFE_PACKAGES = [
    "java.", "javax.", "android.os.", "android.util.", "android.content.", 
    "android.widget.", "android.app.", "android.net.", "android.hardware.",
    "android.view.View", "android.view.ViewGroup", "android.view.Window",
    "android.view.WindowManager", "android.view.LayoutInflater"
]

def get_class_path_from_import(import_line):
    # import static com.oplus.something; OR import com.oplus.something;
    match = re.search(r'import\s+(?:static\s+)?([\w\.]+);', import_line)
    if match:
        return match.group(1)
    return None

def class_exists_in_sources(class_path):
    rel_path = class_path.replace('.', '/') + ".java"
    for s_dir in SOURCES_DIRS:
        full_path = os.path.join(s_dir, rel_path)
        if os.path.exists(full_path):
            return True
    return False

def audit_imports():
    unresolved_imports = {}
    all_files_scanned = 0

    print("--- Starting Framework Audit for Unresolved Imports ---")

    for s_dir in SOURCES_DIRS:
        if not os.path.exists(s_dir):
            continue
        for root, _, files in os.walk(s_dir):
            for file in files:
                if file.endswith(".java"):
                    all_files_scanned += 1
                    file_path = os.path.join(root, file)
                    with open(file_path, 'r', errors='ignore') as f:
                        for line in f:
                            if line.startswith("import "):
                                class_path = get_class_path_from_import(line.strip())
                                if class_path:
                                    # Skip if it's on safe list
                                    is_safe = False
                                    for safe in SAFE_PACKAGES:
                                        if class_path.startswith(safe):
                                            is_safe = True
                                            break
                                    if is_safe:
                                        continue

                                    # Check if exists in workspace
                                    if not class_exists_in_sources(class_path):
                                        if class_path not in unresolved_imports:
                                            unresolved_imports[class_path] = []
                                        unresolved_imports[class_path].append(file_path)

    print(f"\nScanned {all_files_scanned} .java files.")
    print(f"Found {len(unresolved_imports)} Unresolved Imports:\n")

    for imp, files in sorted(unresolved_imports.items()):
        print(f"🔴 {imp}")
        for f_path in files[:2]: # Show first 2 files citing it
            print(f"   -> Used in: {f_path}")
        if len(files) > 2:
            print(f"   -> ... and {len(files)-2} other files")

    print("\n--- Audit Complete ---")

audit_imports()
