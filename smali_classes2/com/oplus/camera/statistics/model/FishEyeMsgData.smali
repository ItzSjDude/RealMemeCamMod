.class public Lcom/oplus/camera/statistics/model/FishEyeMsgData;
.super Lcom/oplus/camera/statistics/model/DcsMsgData;
.source "FishEyeMsgData.java"


# static fields
.field private static final EVENT_FUNCTION_VALUE_SELECT:Ljava/lang/String; = "funcValue_select"

.field private static final FUNCTION_KEY_ID:Ljava/lang/String; = "funcKey_id"

.field private static final FUNCTION_KEY_ID_FISH_EYE:Ljava/lang/String; = "87"

.field private static final FUNCTION_KEY_VALUE:Ljava/lang/String; = "funcKey_value"

.field private static final FUNCTION_KEY_VALUE_CIRCLE:Ljava/lang/String; = "2"

.field private static final FUNCTION_KEY_VALUE_NORMAL:Ljava/lang/String; = "1"

.field public static final TAG:Ljava/lang/String; = "FishEyeMsgData"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 2

    const-string v0, "200"

    const-string v1, "funcValue_select"

    .line 19
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/statistics/model/DcsMsgData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fishEye"

    .line 21
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/FishEyeMsgData;->mCaptureMode:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/oplus/camera/statistics/model/FishEyeMsgData;->mCameraId:I

    const-string p1, "funcKey_id"

    const-string p3, "87"

    .line 23
    invoke-virtual {p0, p1, p3}, Lcom/oplus/camera/statistics/model/FishEyeMsgData;->checkNoAnyCondition(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "2"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    const-string p2, "funcKey_value"

    .line 24
    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/statistics/model/FishEyeMsgData;->checkNoAnyCondition(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
