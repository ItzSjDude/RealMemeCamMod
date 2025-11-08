.class public Lcom/oplus/camera/statistics/model/SwitchCameraMsgData;
.super Lcom/oplus/camera/statistics/model/DcsMsgData;
.source "SwitchCameraMsgData.java"


# static fields
.field public static final EVENT_SWITCH_CAMERA:Ljava/lang/String; = "switch_cameraId"

.field private static final KEY_OPER_TYPE:Ljava/lang/String; = "oper_type"

.field private static final KEY_TO_CAPTURE_MODE:Ljava/lang/String; = "to_capture_mode"

.field public static final OPER_TYPE_MAGNETIC_SHELL_RISE:Ljava/lang/String; = "2"

.field public static final OPER_TYPE_SWITCH_CAMERA:Ljava/lang/String; = "0"

.field public static final OPER_TYPE_SWITCH_MODE:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "SwitchCameraMsgData"


# instance fields
.field public mOperType:Ljava/lang/String;

.field public mToCaptureMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "switch_cameraId"

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/statistics/model/DcsMsgData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/SwitchCameraMsgData;->mToCaptureMode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public report()V
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/oplus/camera/statistics/model/SwitchCameraMsgData;->prepareLogTagByCaptureType()V

    .line 26
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/SwitchCameraMsgData;->mToCaptureMode:Ljava/lang/String;

    const-string v1, "to_capture_mode"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/SwitchCameraMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/SwitchCameraMsgData;->mOperType:Ljava/lang/String;

    const-string v1, "oper_type"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/SwitchCameraMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-super {p0}, Lcom/oplus/camera/statistics/model/DcsMsgData;->report()V

    return-void
.end method
