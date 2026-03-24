# Library Dependency Map

This document maps the dependency chains for the shared libraries defined in `Android.bp`.

## 📌 Core Internal Chain
The following Mermaid diagram visualizes the dependencies between the custom libraries provided by this package.

```mermaid
graph TD
    subgraph Arcsoft_Algorithms [ArcSoft Camera Algos]
        hdr_denoise[libarcsoft_hdr_denoise_api]
        hdr_couple[libarcsoft_hdr_couple_api]
        high_dynamic_range[libarcsoft_high_dynamic_range]
        smart_denoise[libarcsoft_smart_denoise]
        hdr_couple_core[libarcsoft_high_dynamic_range_couple]
    end

    subgraph Core_Helpers [Core Support]
        mpbase[libmpbase]
    end

    subgraph Oplus_Services [Oplus Services & HALs]
        algo_interface[libAlgoInterface]
        algo_process[libAlgoProcess]
        orms_hal[ormsHalService@1.0-service]
    end

    %% Arcsoft Connections
    hdr_denoise --> high_dynamic_range
    hdr_denoise --> smart_denoise
    hdr_couple --> hdr_couple_core
    hdr_couple --> smart_denoise

    %% Core Support Connections
    hdr_denoise --> mpbase
    hdr_couple --> mpbase
    algo_interface --> mpbase
    algo_process --> mpbase

    %% Oplus Connections
    algo_interface --> algo_process
    orms_hal --> vendor.oplus.hardware.orms@1.0
```

---

## 📋 Complete Dependency Table

| Library Name | Internal Dependencies | Core/Hardware Dependencies | System Dependencies (`libc`, `libm`, etc.) |
| :--- | :--- | :--- | :--- |
| **`libarcsoft_hdr_denoise_api`** | `libarcsoft_high_dynamic_range`, `libarcsoft_smart_denoise`, `libmpbase` | - | Yes |
| **`libarcsoft_dualcam_refocus_uw`** | `libmpbase` | - | Yes |
| **`libstfaceunlockocl`** | - | `libOpenCL` | Yes |
| **`libAlgoProcess`** | `libmpbase` | `vendor.qti.hardware.camera.postproc@1.0`, `vendor.oplus.hardware.orms@1.0`, `libion`, `libqdMetaData` | Yes |
| **`libarcsoft_hdr_couple_api`** | `libmpbase`, `libarcsoft_high_dynamic_range_couple`, `libarcsoft_smart_denoise` | - | Yes |
| **`libarcsoft_dualcam_bokeh_frt_api`** | `libmpbase` | - | Yes |
| **`libAlgoInterface`** | `libAlgoProcess`, `libmpbase` | `vendor.qti.hardware.camera.postproc@1.0`, `libion`, `libqdMetaData` | Yes |
| **`liboplus_service`** | - | `android.hardware.sensors@2.0`, `libhidlbase` | Yes |
| **`ormsHalService@1.0-service`** | - | `vendor.oplus.hardware.orms@1.0`, `libhidlbase` | Yes |

> [!NOTE]
> **System Dependencies** include standard Android NDK libraries like `libc`, `libm`, `libdl`, `liblog`, `libutils`, and `libcutils`.
