.class public Lcom/oplus/camera/perf/SwitchModePerformance;
.super Ljava/lang/Object;
.source "SwitchModePerformance.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;
    }
.end annotation


# static fields
.field private static final SWITCH_MODE_TIME_LIMIT:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "SwitchModePerformance"

.field private static sLastMode:Ljava/lang/String;

.field private static sSwitchModeEndTime:J

.field private static sSwitchModeStartTime:J

.field private static sSwitchToMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clear()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 74
    sput-wide v0, Lcom/oplus/camera/perf/SwitchModePerformance;->sSwitchModeStartTime:J

    .line 75
    sput-wide v0, Lcom/oplus/camera/perf/SwitchModePerformance;->sSwitchModeEndTime:J

    return-void
.end method

.method private static onEnd()V
    .locals 5

    .line 59
    new-instance v0, Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;

    invoke-direct {v0}, Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;-><init>()V

    .line 60
    sget-wide v1, Lcom/oplus/camera/perf/SwitchModePerformance;->sSwitchModeEndTime:J

    sget-wide v3, Lcom/oplus/camera/perf/SwitchModePerformance;->sSwitchModeStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;->access$002(Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;J)J

    .line 61
    sget-object v1, Lcom/oplus/camera/perf/SwitchModePerformance;->sLastMode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;->access$102(Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    sget-object v1, Lcom/oplus/camera/perf/SwitchModePerformance;->sSwitchToMode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;->access$202(Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    invoke-static {v0}, Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;->access$300(Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-wide v1, Lcom/oplus/camera/perf/SwitchModePerformance;->sSwitchModeStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    sget-wide v1, Lcom/oplus/camera/perf/SwitchModePerformance;->sSwitchModeEndTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 65
    invoke-static {v0}, Lcom/oplus/camera/perf/Performance;->add(Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;)V

    goto :goto_0

    :cond_0
    const-string v0, "SwitchModePerformance"

    const-string v1, "onEnd, not valid"

    .line 67
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    invoke-static {}, Lcom/oplus/camera/perf/SwitchModePerformance;->clear()V

    return-void
.end method

.method public static setSwitchMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 54
    sput-object p0, Lcom/oplus/camera/perf/SwitchModePerformance;->sLastMode:Ljava/lang/String;

    .line 55
    sput-object p1, Lcom/oplus/camera/perf/SwitchModePerformance;->sSwitchToMode:Ljava/lang/String;

    return-void
.end method

.method public static setSwitchModeEndTime(J)V
    .locals 0

    .line 48
    sput-wide p0, Lcom/oplus/camera/perf/SwitchModePerformance;->sSwitchModeEndTime:J

    .line 50
    invoke-static {}, Lcom/oplus/camera/perf/SwitchModePerformance;->onEnd()V

    return-void
.end method

.method public static setSwitchModeStartTime(J)V
    .locals 0

    .line 44
    sput-wide p0, Lcom/oplus/camera/perf/SwitchModePerformance;->sSwitchModeStartTime:J

    return-void
.end method
