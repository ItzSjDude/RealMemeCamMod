.class public Lcom/oplus/camera/perf/b;
.super Ljava/lang/Object;
.source "CameraPerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/perf/b$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/oplus/camera/perf/a;

.field private static b:Lcom/oplus/camera/perf/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/oplus/camera/perf/a;

    invoke-direct {v0}, Lcom/oplus/camera/perf/a;-><init>()V

    sput-object v0, Lcom/oplus/camera/perf/b;->a:Lcom/oplus/camera/perf/a;

    .line 47
    sget-object v0, Lcom/oplus/camera/perf/b$a;->STATE_CLOSED:Lcom/oplus/camera/perf/b$a;

    sput-object v0, Lcom/oplus/camera/perf/b;->b:Lcom/oplus/camera/perf/b$a;

    return-void
.end method

.method static synthetic a()Lcom/oplus/camera/perf/a;
    .locals 1

    .line 20
    sget-object v0, Lcom/oplus/camera/perf/b;->a:Lcom/oplus/camera/perf/a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "switch_mode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "switch_camera"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "start_video_record"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "capture"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "picture_save"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "continuous_capture"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "video_save"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    .line 87
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/ContinuousCapturePerformance;->setContinuousCaptureStartTime(J)V

    goto :goto_2

    .line 83
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/PictureSavePerformance;->setPictureSaveStartTime(J)V

    goto :goto_2

    .line 79
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/VideoSavePerformance;->setVideoSaveStartTime(J)V

    goto :goto_2

    .line 75
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/VideoRecordPerformance;->setStartVideoRecordStartTime(J)V

    goto :goto_2

    .line 70
    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/SwitchModePerformance;->setSwitchModeStartTime(J)V

    .line 71
    sget-object p0, Lcom/oplus/camera/perf/b$a;->STATE_SWITCH_MODE:Lcom/oplus/camera/perf/b$a;

    sput-object p0, Lcom/oplus/camera/perf/b;->b:Lcom/oplus/camera/perf/b$a;

    goto :goto_2

    .line 66
    :pswitch_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/CapturePerformance;->addClickShutterTime(J)V

    goto :goto_2

    .line 61
    :pswitch_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/SwitchCameraPerformance;->setSwitchCameraStartTime(J)V

    .line 62
    sget-object p0, Lcom/oplus/camera/perf/b$a;->STATE_SWITCHING_CAMERA:Lcom/oplus/camera/perf/b$a;

    sput-object p0, Lcom/oplus/camera/perf/b;->b:Lcom/oplus/camera/perf/b$a;

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x606f053f -> :sswitch_6
        -0x3c683dea -> :sswitch_5
        -0x2ed773e2 -> :sswitch_4
        0x20efc746 -> :sswitch_3
        0x2f52b952 -> :sswitch_2
        0x555f4690 -> :sswitch_1
        0x7ee89bce -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v1, v0, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUxThreadValue: pid is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraPerformance"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 263
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p0}, Lcom/oplus/uifirst/OplusUIFirstManager;->setUxThreadValue(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 265
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "setUxThreadValue fail"

    .line 257
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b()V
    .locals 3

    .line 226
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/perf/b$2;

    invoke-direct {v1}, Lcom/oplus/camera/perf/b$2;-><init>()V

    const-string v2, "read performance"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "switch_mode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "switch_camera"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "start_video_record"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "capture"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "picture_save"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "continuous_capture"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "video_save"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    .line 122
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/ContinuousCapturePerformance;->setContinuousCaptureEndTime(J)V

    goto :goto_2

    .line 118
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/PictureSavePerformance;->setPictureSaveEndTime(J)V

    goto :goto_2

    .line 114
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/VideoSavePerformance;->setVideoSaveEndTime(J)V

    goto :goto_2

    .line 110
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/VideoRecordPerformance;->setStartVideoRecordEndTime(J)V

    goto :goto_2

    .line 106
    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/SwitchModePerformance;->setSwitchModeEndTime(J)V

    goto :goto_2

    .line 102
    :pswitch_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/CapturePerformance;->addShowThumbnailTime(J)V

    goto :goto_2

    .line 98
    :pswitch_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/SwitchCameraPerformance;->setSwitchCameraEndTime(J)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x606f053f -> :sswitch_6
        -0x3c683dea -> :sswitch_5
        -0x2ed773e2 -> :sswitch_4
        0x20efc746 -> :sswitch_3
        0x2f52b952 -> :sswitch_2
        0x555f4690 -> :sswitch_1
        0x7ee89bce -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;)V
    .locals 5

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "launch_camera_opened"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "camera_exit_onstop_end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "launch_on_create"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "camera_exit_onstop_start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_4
    const-string v0, "launch_open_camera"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_5
    const-string v0, "launch_first_frame_draw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "launch_create_session"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_7
    const-string v0, "launch_first_frame_available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_8
    const-string v0, "launch_session_configured"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_9
    const-string v0, "camera_exit_onpause_start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_a
    const-string v0, "launch_request_repeating"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto/16 :goto_3

    .line 215
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/oplus/camera/perf/CameraExitPerformance;->setsOnStopEndTime(J)V

    .line 216
    sget-object p0, Lcom/oplus/camera/perf/b$a;->STATE_CLOSED:Lcom/oplus/camera/perf/b$a;

    sput-object p0, Lcom/oplus/camera/perf/b;->b:Lcom/oplus/camera/perf/b$a;

    .line 217
    sget-object p0, Lcom/oplus/camera/perf/b;->a:Lcom/oplus/camera/perf/a;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/perf/a;->a(Z)V

    goto/16 :goto_3

    .line 211
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/CameraExitPerformance;->setOnStopStartTime(J)V

    goto/16 :goto_3

    .line 206
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/CameraExitPerformance;->setOnPauseStartTime(J)V

    .line 207
    sget-object p0, Lcom/oplus/camera/perf/b$a;->STATE_PAUSE:Lcom/oplus/camera/perf/b$a;

    sput-object p0, Lcom/oplus/camera/perf/b;->b:Lcom/oplus/camera/perf/b$a;

    goto/16 :goto_3

    .line 187
    :pswitch_3
    sget-object p0, Lcom/oplus/camera/perf/b$3;->a:[I

    sget-object v0, Lcom/oplus/camera/perf/b;->b:Lcom/oplus/camera/perf/b$a;

    invoke-virtual {v0}, Lcom/oplus/camera/perf/b$a;->ordinal()I

    move-result v0

    aget p0, p0, v0

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    goto :goto_2

    :cond_1
    const-string p0, "switch_camera"

    .line 196
    invoke-static {p0}, Lcom/oplus/camera/perf/b;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p0, "switch_mode"

    .line 193
    invoke-static {p0}, Lcom/oplus/camera/perf/b;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 189
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/LaunchPerformance;->setFirstFrameDrawTime(J)V

    .line 190
    invoke-static {}, Lcom/oplus/camera/perf/b;->b()V

    .line 202
    :goto_2
    sget-object p0, Lcom/oplus/camera/perf/b$a;->STATE_PREVIEW:Lcom/oplus/camera/perf/b$a;

    sput-object p0, Lcom/oplus/camera/perf/b;->b:Lcom/oplus/camera/perf/b$a;

    goto/16 :goto_3

    .line 180
    :pswitch_4
    sget-object p0, Lcom/oplus/camera/perf/b$a;->STATE_LAUNCHING:Lcom/oplus/camera/perf/b$a;

    sget-object v0, Lcom/oplus/camera/perf/b;->b:Lcom/oplus/camera/perf/b$a;

    if-ne p0, v0, :cond_4

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/LaunchPerformance;->setFirstFrameAvailableTime(J)V

    goto :goto_3

    .line 173
    :pswitch_5
    sget-object p0, Lcom/oplus/camera/perf/b$a;->STATE_LAUNCHING:Lcom/oplus/camera/perf/b$a;

    sget-object v0, Lcom/oplus/camera/perf/b;->b:Lcom/oplus/camera/perf/b$a;

    if-ne p0, v0, :cond_4

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/LaunchPerformance;->setRequestRepeatingTime(J)V

    goto :goto_3

    .line 166
    :pswitch_6
    sget-object p0, Lcom/oplus/camera/perf/b$a;->STATE_LAUNCHING:Lcom/oplus/camera/perf/b$a;

    sget-object v0, Lcom/oplus/camera/perf/b;->b:Lcom/oplus/camera/perf/b$a;

    if-ne p0, v0, :cond_4

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/LaunchPerformance;->setSessionConfiguredTime(J)V

    goto :goto_3

    .line 159
    :pswitch_7
    sget-object p0, Lcom/oplus/camera/perf/b$a;->STATE_LAUNCHING:Lcom/oplus/camera/perf/b$a;

    sget-object v0, Lcom/oplus/camera/perf/b;->b:Lcom/oplus/camera/perf/b$a;

    if-ne p0, v0, :cond_4

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/LaunchPerformance;->setCreateSessionTime(J)V

    goto :goto_3

    .line 152
    :pswitch_8
    sget-object p0, Lcom/oplus/camera/perf/b$a;->STATE_LAUNCHING:Lcom/oplus/camera/perf/b$a;

    sget-object v0, Lcom/oplus/camera/perf/b;->b:Lcom/oplus/camera/perf/b$a;

    if-ne p0, v0, :cond_4

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/LaunchPerformance;->setCameraOpenedTime(J)V

    goto :goto_3

    .line 145
    :pswitch_9
    sget-object p0, Lcom/oplus/camera/perf/b$a;->STATE_LAUNCHING:Lcom/oplus/camera/perf/b$a;

    sget-object v0, Lcom/oplus/camera/perf/b;->b:Lcom/oplus/camera/perf/b$a;

    if-ne p0, v0, :cond_4

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/LaunchPerformance;->setOpenCameraTime(J)V

    goto :goto_3

    .line 133
    :pswitch_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/LaunchPerformance;->setOnCreateTime(J)V

    .line 134
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object p0

    new-instance v0, Lcom/oplus/camera/perf/b$1;

    invoke-direct {v0}, Lcom/oplus/camera/perf/b$1;-><init>()V

    const-string v1, "read performance"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 141
    sget-object p0, Lcom/oplus/camera/perf/b$a;->STATE_LAUNCHING:Lcom/oplus/camera/perf/b$a;

    sput-object p0, Lcom/oplus/camera/perf/b;->b:Lcom/oplus/camera/perf/b$a;

    :cond_4
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x460a52d5 -> :sswitch_a
        -0x3b82c46d -> :sswitch_9
        -0x1b88646d -> :sswitch_8
        -0x1899e0a4 -> :sswitch_7
        -0x1235e3a1 -> :sswitch_6
        0x42ec8d1 -> :sswitch_5
        0x2bbc602e -> :sswitch_4
        0x304327eb -> :sswitch_3
        0x477661d0 -> :sswitch_2
        0x4a5f3aa4 -> :sswitch_1
        0x68ad1f37 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
