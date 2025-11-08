.class public Lcom/oplus/camera/perf/CapturePerformance$CapturePerformanceData;
.super Ljava/lang/Object;
.source "CapturePerformance.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/perf/CapturePerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapturePerformanceData"
.end annotation


# instance fields
.field private mCaptureTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/oplus/camera/perf/CapturePerformance$CapturePerformanceData;->mCaptureTime:J

    return-void
.end method


# virtual methods
.method public isModeNeedReport()Z
    .locals 1

    .line 41
    invoke-static {}, Lcom/oplus/camera/perf/CapturePerformance;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "night"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/oplus/camera/perf/CapturePerformance;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "panorama"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedReport()Z
    .locals 4

    .line 45
    invoke-virtual {p0}, Lcom/oplus/camera/perf/CapturePerformance$CapturePerformanceData;->isModeNeedReport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/oplus/camera/perf/CapturePerformance$CapturePerformanceData;->mCaptureTime:J

    const-wide/16 v2, 0x5dc

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
