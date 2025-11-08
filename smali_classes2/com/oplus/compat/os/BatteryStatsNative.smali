.class public Lcom/oplus/compat/os/BatteryStatsNative;
.super Ljava/lang/Object;
.source "BatteryStatsNative.java"


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.os.BatteryStats"

.field private static final RESULT:Ljava/lang/String; = "result"

.field public static STATS_SINCE_CHARGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BatteryStatsNative"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    :try_start_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/oplus/compat/os/BatteryStatsNative;->getStatsSinceCharged()I

    move-result v0

    sput v0, Lcom/oplus/compat/os/BatteryStatsNative;->STATS_SINCE_CHARGED:I

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not support before Q"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getStatsSinceCharged()I
    .locals 4

    .line 42
    invoke-static {}, Lcom/oplus/compat/b/a/c;->a()Z

    move-result v0

    const-string v1, "BatteryStatsNative"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 43
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string v0, "not supported before Q"

    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v3, "android.os.BatteryStats"

    .line 51
    invoke-virtual {v0, v3}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v3, "STATS_SINCE_CHARGED"

    .line 52
    invoke-virtual {v0, v3}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-virtual {v0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    const-string v0, "STATS_SINCE_CHARGED is not connected with Epona"

    .line 58
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v2
.end method
