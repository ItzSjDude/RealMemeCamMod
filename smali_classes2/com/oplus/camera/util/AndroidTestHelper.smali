.class public Lcom/oplus/camera/util/AndroidTestHelper;
.super Ljava/lang/Object;
.source "AndroidTestHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/util/AndroidTestHelper$TestCallBack;
    }
.end annotation


# static fields
.field public static final ANDROID_TEST:Ljava/lang/String; = "android_test"

.field public static sAndroidTest:Z

.field public static sTestCallBack:Lcom/oplus/camera/util/AndroidTestHelper$TestCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    const-string v0, "android_test"

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/oplus/camera/util/AndroidTestHelper;->sAndroidTest:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static onButtonReadyToClick(Z)V
    .locals 1

    .line 41
    sget-boolean v0, Lcom/oplus/camera/util/AndroidTestHelper;->sAndroidTest:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/camera/util/AndroidTestHelper;->sTestCallBack:Lcom/oplus/camera/util/AndroidTestHelper$TestCallBack;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p0}, Lcom/oplus/camera/util/AndroidTestHelper$TestCallBack;->onButtonReadyToClick(Z)V

    :cond_0
    return-void
.end method

.method public static onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 53
    sget-boolean v0, Lcom/oplus/camera/util/AndroidTestHelper;->sAndroidTest:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/camera/util/AndroidTestHelper;->sTestCallBack:Lcom/oplus/camera/util/AndroidTestHelper$TestCallBack;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p0, p1}, Lcom/oplus/camera/util/AndroidTestHelper$TestCallBack;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public static onNewPicture(Lcom/oplus/camera/Storage$CameraPicture;)V
    .locals 1

    .line 23
    sget-boolean v0, Lcom/oplus/camera/util/AndroidTestHelper;->sAndroidTest:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/camera/util/AndroidTestHelper;->sTestCallBack:Lcom/oplus/camera/util/AndroidTestHelper$TestCallBack;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p0}, Lcom/oplus/camera/util/AndroidTestHelper$TestCallBack;->onNewPicture(Lcom/oplus/camera/Storage$CameraPicture;)V

    :cond_0
    return-void
.end method

.method public static onPreviewCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/oplus/camera/util/AndroidTestHelper;->sAndroidTest:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/camera/util/AndroidTestHelper;->sTestCallBack:Lcom/oplus/camera/util/AndroidTestHelper$TestCallBack;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p0, p1}, Lcom/oplus/camera/util/AndroidTestHelper$TestCallBack;->onPreviewCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public static onReadyToCapture(Z)V
    .locals 1

    .line 29
    sget-boolean v0, Lcom/oplus/camera/util/AndroidTestHelper;->sAndroidTest:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/camera/util/AndroidTestHelper;->sTestCallBack:Lcom/oplus/camera/util/AndroidTestHelper$TestCallBack;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p0}, Lcom/oplus/camera/util/AndroidTestHelper$TestCallBack;->onReadyToCapture(Z)V

    :cond_0
    return-void
.end method

.method public static onReadyToVideo(Z)V
    .locals 1

    .line 35
    sget-boolean v0, Lcom/oplus/camera/util/AndroidTestHelper;->sAndroidTest:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/camera/util/AndroidTestHelper;->sTestCallBack:Lcom/oplus/camera/util/AndroidTestHelper$TestCallBack;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p0}, Lcom/oplus/camera/util/AndroidTestHelper$TestCallBack;->onReadyToVideo(Z)V

    :cond_0
    return-void
.end method
