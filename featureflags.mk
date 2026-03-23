# ==========================================
# --- REALMEME CAMERA MOD FEATURE FLAGS ---
# ==========================================
USE_8PRO_CORE             := true
ENABLE_AI_COLOR_PORTRAIT   := true
ENABLE_StarryMode          := true
ENABLE_SuperNightscape     := true
ENABLE_DynamicBokeh        := true
ENABLE_NeonPortrait        := true
ENABLE_Darksight           := true
ENABLE_Tonemap             := true
ENABLE_PerfectColor        := true
ENABLE_FaceBeautification  := true
ENABLE_Stickers            := true
ENABLE_SuperText           := true
ENABLE_TrafficMode         := true
ENABLE_WaterMode           := true
ENABLE_XDoc                := true
ENABLE_DoubleExposure      := true
# ==========================================

# --- Feature Makefiles ---
-include vendor/realmeme_cam_mod/features/ai_color_portrait/ai_color_portrait.mk
-include vendor/realmeme_cam_mod/features/StarryMode/starrymode.mk
-include vendor/realmeme_cam_mod/features/SuperNightscape/supernightscape.mk
-include vendor/realmeme_cam_mod/features/DynamicBokeh/dynamicbokeh.mk
-include vendor/realmeme_cam_mod/features/NeonPortrait/neonportrait.mk
-include vendor/realmeme_cam_mod/features/Darksight/darksight.mk
-include vendor/realmeme_cam_mod/features/Tonemap/tonemap.mk
-include vendor/realmeme_cam_mod/features/PerfectColor/perfectcolor.mk
-include vendor/realmeme_cam_mod/features/FaceBeautification/facebeautification.mk
-include vendor/realmeme_cam_mod/features/Stickers/stickers.mk
-include vendor/realmeme_cam_mod/features/Configs/configs.mk
-include vendor/realmeme_cam_mod/features/DoubleExposure/doubleexposure.mk
-include vendor/realmeme_cam_mod/features/SuperText/supertext.mk
-include vendor/realmeme_cam_mod/features/TrafficMode/trafficmode.mk
-include vendor/realmeme_cam_mod/features/WaterMode/watermode.mk
-include vendor/realmeme_cam_mod/features/XDoc/xdoc.mk
-include vendor/realmeme_cam_mod/features/CoreAlgo/core_algo.mk
