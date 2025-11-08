.class public Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;
.super Ljava/lang/Object;
.source "LaunchPerformance.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/perf/LaunchPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchPerformanceData"
.end annotation


# instance fields
.field private mCpuInfo:Ljava/lang/String;

.field private mDurationS1:J

.field private mDurationS2:J

.field private mDurationS3:J

.field private mDurationS4:J

.field private mDurationS5:J

.field private mDurationS6:J

.field private mDurationS7:J

.field private mMemBeforeCreate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS1:J

    .line 39
    iput-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS2:J

    .line 40
    iput-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS3:J

    .line 41
    iput-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS4:J

    .line 42
    iput-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS5:J

    .line 43
    iput-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS6:J

    .line 44
    iput-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS7:J

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mMemBeforeCreate:I

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mCpuInfo:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS1:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS1:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS2:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS2:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS3:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS3:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS4:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS4:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS5:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS5:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS6:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS6:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS7:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS7:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mMemBeforeCreate:I

    return p0
.end method

.method static synthetic access$702(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mMemBeforeCreate:I

    return p1
.end method

.method static synthetic access$800(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mCpuInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mCpuInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->isValid()Z

    move-result p0

    return p0
.end method

.method private isValid()Z
    .locals 4

    .line 49
    iget-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS1:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS2:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS3:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS4:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS5:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS6:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS7:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget p0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mMemBeforeCreate:I

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

    .line 68
    invoke-virtual {p0}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->launchTime()J

    move-result-wide v0

    const-wide/16 v2, 0x4b0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchTime()J
    .locals 4

    .line 60
    invoke-direct {p0}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-wide v0, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS1:J

    iget-wide v2, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS2:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS3:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS4:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS5:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS6:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->mDurationS7:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
