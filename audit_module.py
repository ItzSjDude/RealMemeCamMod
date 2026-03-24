import os
import glob

print("=== STARTING FULL DISCREPANCY AUDIT ===\n")

print("--- [1] Auditing PRODUCT_COPY_FILES local file presence ---")
# Scan all Makefiles including subfolders Node 
paths = glob.glob("features/**/*.mk", recursive=True) + \
        glob.glob("CoreAlgo/**/*.mk", recursive=True) + \
        glob.glob("CoreSdk/**/*.mk", recursive=True) + \
        glob.glob("*.mk")

missing_files = []

for mk in paths:
    with open(mk, 'r') as f:
        content = f.read()
    import re
    matches = re.findall(r"(vendor/realmeme_cam_mod/[^:\s\\]+)", content)
    for fpath in matches:
        if "$(CORE_PATH)" in fpath: continue # Dynamic setups triggers Node
        rel_path = fpath.replace("vendor/realmeme_cam_mod/", "./")
        if not os.path.exists(rel_path):
             # Fix static path to point to current directory
             missing_files.append(f"{mk} -> Missing: {rel_path}")

if missing_files:
    for m in set(missing_files): print(f"  [MISSING] {m}")
else: print("  ✅ All referenced static files exist in workspace.")

print("\n--- [2] Auditing Android.mk/bp for partition targets ---")
# Scans all potential subfolders setups thresholds Node layout 
for root_folder in ["features", "CoreSdk", "CoreAlgo", "apps"]:
    if not os.path.exists(root_folder): continue
    for root, dirs, files in os.walk(root_folder):
        for file in files:
            if file in ["Android.mk", "Android.bp"]:
                 with open(os.path.join(root, file), 'r') as f: content = f.read()
                 if "BUILD_JAVA_LIBRARY" in content and "LOCAL_PRODUCT_MODULE" not in content:
                      print(f"  [WARNING] {root}/{file} declares java library WITHOUT explicit partition!")

print("\n=== SYSTEM INCLUDES VERIFICATION ===")
with open("featureflags.mk", 'r') as f: flags = f.read()
if "-include vendor/realmeme_cam_mod/CoreAlgo/core_algo.mk" not in flags:
    print("  [WARNING] CoreAlgo/core_algo.mk not included in featureflags.mk")
if "-include vendor/realmeme_cam_mod/CoreSdk/core_sdk.mk" not in flags:
    print("  [WARNING] CoreSdk/core_sdk.mk not included in featureflags.mk")

print("\n=== AUDIT FINISHED ===")
