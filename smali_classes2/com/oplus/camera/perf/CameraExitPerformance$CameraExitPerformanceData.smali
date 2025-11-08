.class public Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;
.super Ljava/lang/Object;
.source "CameraExitPerformance.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/perf/CameraExitPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraExitPerformanceData"
.end annotation


# instance fields
.field private mOnPauseTime:J

.field private mOnStopMem:I

.field private mOnStopTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->mOnPauseTime:J

    .line 31
    iput-wide v0, p0, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->mOnStopTime:J

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->mOnStopMem:I

    return-void
.end method

.method static synthetic access$000(Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->mOnPauseTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;J)J
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->mOnPauseTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->mOnStopTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;J)J
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->mOnStopTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->mOnStopMem:I

    return p1
.end method

.method static synthetic access$300(Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->isValid()Z

    move-result p0

    return p0
.end method

.method private isValid()Z
    .locals 4

    .line 35
    iget-wide v0, p0, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->mOnPauseTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->mOnStopTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget p0, p0, Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;->mOnStopMem:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
