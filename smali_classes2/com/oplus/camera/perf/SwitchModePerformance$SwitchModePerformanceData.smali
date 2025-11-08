.class public Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;
.super Ljava/lang/Object;
.source "SwitchModePerformance.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/perf/SwitchModePerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwitchModePerformanceData"
.end annotation


# instance fields
.field private mCurMode:Ljava/lang/String;

.field private mLastMode:Ljava/lang/String;

.field private mSwitchModeDuration:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;J)J
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;->mSwitchModeDuration:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;->mLastMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;->mCurMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;->isValid()Z

    move-result p0

    return p0
.end method

.method private isValid()Z
    .locals 4

    .line 35
    iget-wide v0, p0, Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;->mSwitchModeDuration:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public isNeedReport()Z
    .locals 4

    .line 39
    iget-wide v0, p0, Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;->mSwitchModeDuration:J

    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
