.class public Lcom/oplus/camera/perf/SwitchCameraPerformance;
.super Ljava/lang/Object;
.source "SwitchCameraPerformance.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;
    }
.end annotation


# static fields
.field private static final SWITCH_CAMERA_TIME_LIMIT:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "SwitchCameraPerformance"

.field private static sLastCameraId:I

.field private static sSwitchCameraEndTime:J

.field private static sSwitchCameraStartTime:J

.field private static sSwitchToCameraId:I


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
    sput-wide v0, Lcom/oplus/camera/perf/SwitchCameraPerformance;->sSwitchCameraStartTime:J

    .line 75
    sput-wide v0, Lcom/oplus/camera/perf/SwitchCameraPerformance;->sSwitchCameraEndTime:J

    return-void
.end method

.method private static onEnd()V
    .locals 5

    .line 59
    new-instance v0, Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;

    invoke-direct {v0}, Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;-><init>()V

    .line 60
    sget-wide v1, Lcom/oplus/camera/perf/SwitchCameraPerformance;->sSwitchCameraEndTime:J

    sget-wide v3, Lcom/oplus/camera/perf/SwitchCameraPerformance;->sSwitchCameraStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;->access$002(Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;J)J

    .line 61
    sget v1, Lcom/oplus/camera/perf/SwitchCameraPerformance;->sLastCameraId:I

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;->access$102(Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;I)I

    .line 62
    sget v1, Lcom/oplus/camera/perf/SwitchCameraPerformance;->sSwitchToCameraId:I

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;->access$202(Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;I)I

    .line 64
    invoke-static {v0}, Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;->access$300(Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-wide v1, Lcom/oplus/camera/perf/SwitchCameraPerformance;->sSwitchCameraStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    sget-wide v1, Lcom/oplus/camera/perf/SwitchCameraPerformance;->sSwitchCameraEndTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 65
    invoke-static {v0}, Lcom/oplus/camera/perf/Performance;->add(Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;)V

    goto :goto_0

    :cond_0
    const-string v0, "SwitchCameraPerformance"

    const-string v1, "onEnd, not valid"

    .line 67
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    invoke-static {}, Lcom/oplus/camera/perf/SwitchCameraPerformance;->clear()V

    return-void
.end method

.method public static setSwitchCameraEndTime(J)V
    .locals 0

    .line 48
    sput-wide p0, Lcom/oplus/camera/perf/SwitchCameraPerformance;->sSwitchCameraEndTime:J

    .line 50
    invoke-static {}, Lcom/oplus/camera/perf/SwitchCameraPerformance;->onEnd()V

    return-void
.end method

.method public static setSwitchCameraId(II)V
    .locals 0

    .line 54
    sput p0, Lcom/oplus/camera/perf/SwitchCameraPerformance;->sLastCameraId:I

    .line 55
    sput p1, Lcom/oplus/camera/perf/SwitchCameraPerformance;->sSwitchToCameraId:I

    return-void
.end method

.method public static setSwitchCameraStartTime(J)V
    .locals 0

    .line 44
    sput-wide p0, Lcom/oplus/camera/perf/SwitchCameraPerformance;->sSwitchCameraStartTime:J

    return-void
.end method
