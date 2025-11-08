.class public Lcom/oplus/camera/perf/CameraExitPerformance;
.super Ljava/lang/Object;
.source "CameraExitPerformance.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;
    }
.end annotation


# static fields
.field private static final MB2BYTE:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "CameraExitPerformance"

.field private static sOnPauseStartTime:J

.field private static sOnStopEndTime:J

.field private static sOnStopMem:I

.field private static sOnStopStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clear()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 79
    sput-wide v0, Lcom/oplus/camera/perf/CameraExitPerformance;->sOnPauseStartTime:J

    .line 80
    sput-wide v0, Lcom/oplus/camera/perf/CameraExitPerformance;->sOnStopStartTime:J

    .line 81
    sput-wide v0, Lcom/oplus/camera/perf/CameraExitPerformance;->sOnStopEndTime:J

    return-void
.end method

.method private static onEnd()V
    .locals 7

    .line 58
    new-instance v0, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;

    invoke-direct {v0}, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;-><init>()V

    .line 59
    sget-wide v1, Lcom/oplus/camera/perf/CameraExitPerformance;->sOnStopStartTime:J

    sget-wide v3, Lcom/oplus/camera/perf/CameraExitPerformance;->sOnPauseStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->access$002(Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;J)J

    .line 60
    sget-wide v1, Lcom/oplus/camera/perf/CameraExitPerformance;->sOnStopEndTime:J

    sget-wide v3, Lcom/oplus/camera/perf/CameraExitPerformance;->sOnStopStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->access$102(Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;J)J

    .line 61
    sget v1, Lcom/oplus/camera/perf/CameraExitPerformance;->sOnStopMem:I

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->access$202(Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;I)I

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnd, camera exit time, onPauseTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->access$000(Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", onStopTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v0}, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->access$100(Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", onStopAvailMem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oplus/camera/perf/CameraExitPerformance;->sOnStopMem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraExitPerformance"

    .line 63
    invoke-static {v2, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v0}, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->access$300(Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-wide v3, Lcom/oplus/camera/perf/CameraExitPerformance;->sOnPauseStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    sget-wide v3, Lcom/oplus/camera/perf/CameraExitPerformance;->sOnStopStartTime:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    sget-wide v3, Lcom/oplus/camera/perf/CameraExitPerformance;->sOnStopEndTime:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 70
    invoke-static {v0}, Lcom/oplus/camera/perf/Performance;->add(Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;)V

    goto :goto_0

    :cond_0
    const-string v0, "onEnd, not valid"

    .line 72
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    invoke-static {}, Lcom/oplus/camera/perf/CameraExitPerformance;->clear()V

    return-void
.end method

.method public static setOnPauseStartTime(J)V
    .locals 0

    .line 40
    sput-wide p0, Lcom/oplus/camera/perf/CameraExitPerformance;->sOnPauseStartTime:J

    return-void
.end method

.method public static setOnStopMemory(J)V
    .locals 2

    const-wide/32 v0, 0x100000

    .line 54
    div-long/2addr p0, v0

    long-to-int p0, p0

    sput p0, Lcom/oplus/camera/perf/CameraExitPerformance;->sOnStopMem:I

    return-void
.end method

.method public static setOnStopStartTime(J)V
    .locals 0

    .line 44
    sput-wide p0, Lcom/oplus/camera/perf/CameraExitPerformance;->sOnStopStartTime:J

    return-void
.end method

.method public static setsOnStopEndTime(J)V
    .locals 0

    .line 48
    sput-wide p0, Lcom/oplus/camera/perf/CameraExitPerformance;->sOnStopEndTime:J

    .line 50
    invoke-static {}, Lcom/oplus/camera/perf/CameraExitPerformance;->onEnd()V

    return-void
.end method
