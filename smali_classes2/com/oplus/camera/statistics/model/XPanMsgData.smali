.class public Lcom/oplus/camera/statistics/model/XPanMsgData;
.super Lcom/oplus/camera/statistics/model/DcsMsgData;
.source "XPanMsgData.java"


# static fields
.field private static final EVENT_FUNCTION_VALUE_SELECT:Ljava/lang/String; = "funcValue_select"

.field private static final FUNCTION_KEY_ID:Ljava/lang/String; = "funcKey_id"

.field private static final FUNCTION_KEY_ID_XPAN_FILTER:Ljava/lang/String; = "4"

.field private static final FUNCTION_KEY_VALUE:Ljava/lang/String; = "funcKey_value"

.field private static final FUNCTION_KEY_VALUE_DEFAULT:Ljava/lang/String; = "default"

.field private static final FUNCTION_KEY_VALUE_XPAN_BLACK:Ljava/lang/String; = "Delta400.3dl.rgb.bin"

.field public static final TAG:Ljava/lang/String; = "XPanMsgData"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 2

    const-string v0, "200"

    const-string v1, "funcValue_select"

    .line 20
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/statistics/model/DcsMsgData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "xpan"

    .line 22
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/XPanMsgData;->mCaptureMode:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/oplus/camera/statistics/model/XPanMsgData;->mCameraId:I

    const-string p1, "funcKey_id"

    const-string p3, "4"

    .line 24
    invoke-virtual {p0, p1, p3}, Lcom/oplus/camera/statistics/model/XPanMsgData;->checkNoAnyCondition(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "Delta400.3dl.rgb.bin"

    goto :goto_0

    :cond_0
    const-string p1, "default"

    :goto_0
    const-string p2, "funcKey_value"

    .line 25
    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/statistics/model/XPanMsgData;->checkNoAnyCondition(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
