import os
import subprocess

dir1 = "product/framework/com.oplus.camera.unit.sdk"
dir2 = "product/framework/com.oplus.camera.unit.sdk_8pro/sources"

files = [
    "com/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi.java",
    "com/anc/humansdk/fusion/HumanEffectFusionApi.java",
    "com/anc/humansdk/HumanEffectBokehApi.java",
    "com/anc/humansdk/retain/HumanEffectRetainApiV2.java"
]

print("Comparing remaining differs...")

for fpath in files:
    path1 = os.path.join(dir1, fpath)
    path2 = os.path.join(dir2, fpath)
    if os.path.exists(path1) and os.path.exists(path2):
        print(f"--- FILE: {fpath} ---")
        try:
            res = subprocess.run(["diff", "-u", path1, path2], capture_output=True, text=True)
            output = res.stdout
            if not output:
                 print("No logic diff\n")
                 continue
                 
            lines = output.splitlines()
            for l in lines:
                if (l.startswith("+") or l.startswith("-")) and not l.startswith("+++") and not l.startswith("---"):
                    # Print line cleanly
                    print(l)
            print("-" * 40 + "\n")
        except Exception:
            pass
