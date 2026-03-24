import os

folder_map = {
    "FaceBeautification": "face_beautification",
    "Configs": "configs",
    "DoubleExposure": "double_exposure",
    "Darksight": "darksight",
    "DynamicBokeh": "dynamic_bokeh",
    "PerfectColor": "perfect_color",
    "Stickers": "stickers",
    "Tonemap": "tonemap",
    "TrafficMode": "traffic_mode",
    "WaterMode": "water_mode",
    "XDoc": "xdoc",
    "SuperNightscape": "super_nightscape",
    "SuperText": "super_text",
    "NeonPortrait": "neon_portrait"
}

with open("featureflags.mk", 'r') as f:
    content = f.read()

for old, new in folder_map.items():
    old_path = f"features/{old}"
    new_path = f"features/{new}"
    if os.path.exists(old_path):
        print(f"Renaming {old} -> {new}")
        # 1. Rename internal file setups Node triggers
        for f in os.listdir(old_path):
            if f.endswith(".mk"):
                old_f = os.path.join(old_path, f)
                new_f = os.path.join(old_path, f"{new}.mk")
                os.rename(old_f, new_f)
                
                old_include = f"vendor/realmeme_cam_mod/features/{old}/{f}"
                new_include = f"vendor/realmeme_cam_mod/features/{new}/{new}.mk"
                content = content.replace(old_include, new_include)
                
                with open(new_f, 'r') as mkf:
                    mcontent = mkf.read()
                mcontent = mcontent.replace(f"features/{old}", f"features/{new}")
                open(new_f, 'w').write(mcontent)

        # 2. Rename Folder Node 
        os.rename(old_path, new_path)

open("featureflags.mk", 'w').write(content)
print("Finished updates")
