.class public Lcom/oplus/compat/os/WaveformEffectNative;
.super Ljava/lang/Object;
.source "WaveformEffectNative.java"


# static fields
.field public static EFFECT_ALARM_NOTIFICATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WaveformEffectNative"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 20
    invoke-static {}, Lcom/oplus/compat/os/WaveformEffectNative;->initForQ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/os/WaveformEffectNative;->EFFECT_ALARM_NOTIFICATION:I

    goto :goto_0

    :cond_0
    const-string v0, "WaveformEffectNative"

    const-string v1, "only support before Q"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initForQ()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
