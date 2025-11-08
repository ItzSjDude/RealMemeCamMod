.class public Lcom/oplus/camera/perf/LaunchPerformance;
.super Ljava/lang/Object;
.source "LaunchPerformance.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;
    }
.end annotation


# static fields
.field private static final LAUNCH_TIME_LIMIT:J = 0x4b0L

.field private static final MB2BYTE:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "LaunchPerformance"

.field private static sCameraOpenedTime:J = 0x0L

.field private static sCpuInfo:Ljava/lang/String; = ""

.field private static sCreateSessionTime:J

.field private static sFirstFrameAvailableTime:J

.field private static sFirstFrameDrawTime:J

.field private static sMemBeforeCreate:I

.field private static sOnCreateTime:J

.field private static sOpenCameraTime:J

.field private static sRequestRepeatingTime:J

.field private static sSessionConfiguredTime:J


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

    .line 153
    sput-wide v0, Lcom/oplus/camera/perf/LaunchPerformance;->sOnCreateTime:J

    .line 154
    sput-wide v0, Lcom/oplus/camera/perf/LaunchPerformance;->sOpenCameraTime:J

    .line 155
    sput-wide v0, Lcom/oplus/camera/perf/LaunchPerformance;->sCameraOpenedTime:J

    .line 156
    sput-wide v0, Lcom/oplus/camera/perf/LaunchPerformance;->sCreateSessionTime:J

    .line 157
    sput-wide v0, Lcom/oplus/camera/perf/LaunchPerformance;->sSessionConfiguredTime:J

    .line 158
    sput-wide v0, Lcom/oplus/camera/perf/LaunchPerformance;->sRequestRepeatingTime:J

    .line 159
    sput-wide v0, Lcom/oplus/camera/perf/LaunchPerformance;->sFirstFrameAvailableTime:J

    .line 160
    sput-wide v0, Lcom/oplus/camera/perf/LaunchPerformance;->sFirstFrameDrawTime:J

    return-void
.end method

.method private static onEnd()V
    .locals 7

    .line 117
    new-instance v0, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;

    invoke-direct {v0}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;-><init>()V

    .line 118
    sget-wide v1, Lcom/oplus/camera/perf/LaunchPerformance;->sOpenCameraTime:J

    sget-wide v3, Lcom/oplus/camera/perf/LaunchPerformance;->sOnCreateTime:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$002(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;J)J

    .line 119
    sget-wide v1, Lcom/oplus/camera/perf/LaunchPerformance;->sCameraOpenedTime:J

    sget-wide v3, Lcom/oplus/camera/perf/LaunchPerformance;->sOpenCameraTime:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$102(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;J)J

    .line 120
    sget-wide v1, Lcom/oplus/camera/perf/LaunchPerformance;->sCreateSessionTime:J

    sget-wide v3, Lcom/oplus/camera/perf/LaunchPerformance;->sCameraOpenedTime:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$202(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;J)J

    .line 121
    sget-wide v1, Lcom/oplus/camera/perf/LaunchPerformance;->sSessionConfiguredTime:J

    sget-wide v3, Lcom/oplus/camera/perf/LaunchPerformance;->sCreateSessionTime:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$302(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;J)J

    .line 122
    sget-wide v1, Lcom/oplus/camera/perf/LaunchPerformance;->sRequestRepeatingTime:J

    sget-wide v3, Lcom/oplus/camera/perf/LaunchPerformance;->sSessionConfiguredTime:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$402(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;J)J

    .line 123
    sget-wide v1, Lcom/oplus/camera/perf/LaunchPerformance;->sFirstFrameAvailableTime:J

    sget-wide v3, Lcom/oplus/camera/perf/LaunchPerformance;->sRequestRepeatingTime:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$502(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;J)J

    .line 124
    sget-wide v1, Lcom/oplus/camera/perf/LaunchPerformance;->sFirstFrameDrawTime:J

    sget-wide v3, Lcom/oplus/camera/perf/LaunchPerformance;->sFirstFrameAvailableTime:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$602(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;J)J

    .line 125
    sget v1, Lcom/oplus/camera/perf/LaunchPerformance;->sMemBeforeCreate:I

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$702(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;I)I

    .line 126
    sget-object v1, Lcom/oplus/camera/perf/LaunchPerformance;->sCpuInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$802(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnd, launch time, s1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$000(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", s2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-static {v0}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$100(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", s3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$200(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", s4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {v0}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$300(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", s5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$400(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", s6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {v0}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$500(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", s7: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$600(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", memBeforeCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {v0}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$700(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cpuInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-static {v0}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$800(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LaunchPerformance"

    .line 128
    invoke-static {v2, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {v0}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->access$900(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-wide v3, Lcom/oplus/camera/perf/LaunchPerformance;->sOnCreateTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    sget-wide v3, Lcom/oplus/camera/perf/LaunchPerformance;->sOpenCameraTime:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    sget-wide v3, Lcom/oplus/camera/perf/LaunchPerformance;->sCameraOpenedTime:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    sget-wide v3, Lcom/oplus/camera/perf/LaunchPerformance;->sCreateSessionTime:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    sget-wide v3, Lcom/oplus/camera/perf/LaunchPerformance;->sSessionConfiguredTime:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    sget-wide v3, Lcom/oplus/camera/perf/LaunchPerformance;->sRequestRepeatingTime:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    sget-wide v3, Lcom/oplus/camera/perf/LaunchPerformance;->sFirstFrameAvailableTime:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    sget-wide v3, Lcom/oplus/camera/perf/LaunchPerformance;->sFirstFrameDrawTime:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 144
    invoke-static {v0}, Lcom/oplus/camera/perf/Performance;->add(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)V

    goto :goto_0

    :cond_0
    const-string v0, "onEnd, not valid"

    .line 146
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    invoke-static {}, Lcom/oplus/camera/perf/LaunchPerformance;->clear()V

    return-void
.end method

.method public static setCameraOpenedTime(J)V
    .locals 0

    .line 81
    sput-wide p0, Lcom/oplus/camera/perf/LaunchPerformance;->sCameraOpenedTime:J

    return-void
.end method

.method public static setCreateSessionTime(J)V
    .locals 0

    .line 85
    sput-wide p0, Lcom/oplus/camera/perf/LaunchPerformance;->sCreateSessionTime:J

    return-void
.end method

.method public static setFirstFrameAvailableTime(J)V
    .locals 0

    .line 99
    sput-wide p0, Lcom/oplus/camera/perf/LaunchPerformance;->sFirstFrameAvailableTime:J

    return-void
.end method

.method public static setFirstFrameDrawTime(J)V
    .locals 0

    .line 103
    sput-wide p0, Lcom/oplus/camera/perf/LaunchPerformance;->sFirstFrameDrawTime:J

    .line 105
    invoke-static {}, Lcom/oplus/camera/perf/LaunchPerformance;->onEnd()V

    return-void
.end method

.method public static setLaunchCpuInfo(Ljava/lang/String;)V
    .locals 0

    .line 113
    sput-object p0, Lcom/oplus/camera/perf/LaunchPerformance;->sCpuInfo:Ljava/lang/String;

    return-void
.end method

.method public static setMemBeforeCreate(J)V
    .locals 2

    const-wide/32 v0, 0x100000

    .line 109
    div-long/2addr p0, v0

    long-to-int p0, p0

    sput p0, Lcom/oplus/camera/perf/LaunchPerformance;->sMemBeforeCreate:I

    return-void
.end method

.method public static setOnCreateTime(J)V
    .locals 0

    .line 73
    sput-wide p0, Lcom/oplus/camera/perf/LaunchPerformance;->sOnCreateTime:J

    return-void
.end method

.method public static setOpenCameraTime(J)V
    .locals 0

    .line 77
    sput-wide p0, Lcom/oplus/camera/perf/LaunchPerformance;->sOpenCameraTime:J

    return-void
.end method

.method public static setRequestRepeatingTime(J)V
    .locals 4

    .line 93
    sget-wide v0, Lcom/oplus/camera/perf/LaunchPerformance;->sRequestRepeatingTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-wide v0, Lcom/oplus/camera/perf/LaunchPerformance;->sSessionConfiguredTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 94
    sput-wide p0, Lcom/oplus/camera/perf/LaunchPerformance;->sRequestRepeatingTime:J

    :cond_0
    return-void
.end method

.method public static setSessionConfiguredTime(J)V
    .locals 0

    .line 89
    sput-wide p0, Lcom/oplus/camera/perf/LaunchPerformance;->sSessionConfiguredTime:J

    return-void
.end method
