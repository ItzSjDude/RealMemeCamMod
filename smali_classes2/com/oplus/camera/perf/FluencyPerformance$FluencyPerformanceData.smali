.class public Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;
.super Ljava/lang/Object;
.source "FluencyPerformance.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/perf/FluencyPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FluencyPerformanceData"
.end annotation


# instance fields
.field aeTimeExceedsCount:I

.field averageFrameRate:D

.field averageRenderLag:D

.field currentMode:Ljava/lang/String;

.field frameRateVar:D

.field maxIntVar:D

.field maxInterval:I

.field maxRenderLag:I

.field minFrameRate:D

.field minInterval:I

.field startTime:Ljava/lang/String;

.field totalIntervalVar:D

.field type:Ljava/lang/String;

.field windowTime:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 73
    iput-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->type:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->currentMode:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->startTime:Ljava/lang/String;

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 76
    iput-wide v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->minFrameRate:D

    const v0, 0x7fffffff

    .line 77
    iput v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->minInterval:I

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->maxInterval:I

    const-wide/16 v1, 0x0

    .line 79
    iput-wide v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->maxIntVar:D

    .line 84
    iput v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->aeTimeExceedsCount:I

    .line 85
    iput v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->maxRenderLag:I

    return-void
.end method
