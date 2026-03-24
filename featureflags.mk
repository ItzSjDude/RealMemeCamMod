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
-include vendor/realmeme_cam_mod/features/starry_mode/starry_mode.mk
-include vendor/realmeme_cam_mod/features/super_nightscape/super_nightscape.mk
-include vendor/realmeme_cam_mod/features/dynamic_bokeh/dynamic_bokeh.mk
-include vendor/realmeme_cam_mod/features/neon_portrait/neon_portrait.mk
-include vendor/realmeme_cam_mod/features/darksight/darksight.mk
-include vendor/realmeme_cam_mod/features/tonemap/tonemap.mk
-include vendor/realmeme_cam_mod/features/perfect_color/perfect_color.mk
-include vendor/realmeme_cam_mod/features/face_beautification/face_beautification.mk
-include vendor/realmeme_cam_mod/features/stickers/stickers.mk
-include vendor/realmeme_cam_mod/features/configs/configs.mk
-include vendor/realmeme_cam_mod/features/double_exposure/double_exposure.mk
-include vendor/realmeme_cam_mod/features/super_text/super_text.mk
-include vendor/realmeme_cam_mod/features/traffic_mode/traffic_mode.mk
-include vendor/realmeme_cam_mod/features/water_mode/water_mode.mk
-include vendor/realmeme_cam_mod/features/xdoc/xdoc.mk
-include vendor/realmeme_cam_mod/CoreAlgo/core_algo.mk
-include vendor/realmeme_cam_mod/CoreSdk/core_sdk.mk
