.class public Lcom/oplus/camera/perf/CapturePerformance;
.super Ljava/lang/Object;
.source "CapturePerformance.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/perf/CapturePerformance$CapturePerformanceData;
    }
.end annotation


# static fields
.field private static final CAPTURE_THUMBNAIL_TIME_LIMIT:J = 0x5dcL

.field private static final CAPTURE_TIME_LIMIT:J = 0xfa0L

.field private static final TAG:Ljava/lang/String; = "CapturePerformance"

.field private static sCurrentMode:Ljava/lang/String;

.field private static sShowThumbnailQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sShutterTimeQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/oplus/camera/perf/CapturePerformance;->sShutterTimeQueue:Ljava/util/ArrayDeque;

    .line 29
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/oplus/camera/perf/CapturePerformance;->sShowThumbnailQueue:Ljava/util/ArrayDeque;

    const-string v0, "common"

    .line 30
    sput-object v0, Lcom/oplus/camera/perf/CapturePerformance;->sCurrentMode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/oplus/camera/perf/CapturePerformance;->sCurrentMode:Ljava/lang/String;

    return-object v0
.end method

.method public static addClickShutterTime(J)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addClickShutterTime, clickShutterTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/oplus/camera/gl/y;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapturePerformance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/oplus/camera/perf/CapturePerformance;->sShutterTimeQueue:Ljava/util/ArrayDeque;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addShowThumbnailTime(J)V
    .locals 1

    .line 62
    sget-object v0, Lcom/oplus/camera/perf/CapturePerformance;->sShowThumbnailQueue:Ljava/util/ArrayDeque;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addShowThumbnailTime, sShutterTimeQueue.size: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/camera/perf/CapturePerformance;->sShutterTimeQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sShowThumbnailQueue.size: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/camera/perf/CapturePerformance;->sShowThumbnailQueue:Ljava/util/ArrayDeque;

    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapturePerformance"

    .line 64
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object p0, Lcom/oplus/camera/perf/CapturePerformance;->sShutterTimeQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 68
    sget-object p1, Lcom/oplus/camera/perf/CapturePerformance;->sShutterTimeQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    if-eqz p0, :cond_0

    .line 71
    sget-object p1, Lcom/oplus/camera/perf/CapturePerformance;->sShowThumbnailQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/oplus/camera/perf/CapturePerformance;->onEnd(Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {}, Lcom/oplus/camera/perf/CapturePerformance;->clear()V

    :goto_0
    return-void
.end method

.method private static clear()V
    .locals 1

    .line 96
    sget-object v0, Lcom/oplus/camera/perf/CapturePerformance;->sShutterTimeQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 97
    sget-object v0, Lcom/oplus/camera/perf/CapturePerformance;->sShowThumbnailQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method private static onEnd(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 5

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnd, clickShutterTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/oplus/camera/gl/y;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", showThumbnailTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/oplus/camera/gl/y;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", time: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CapturePerformance"

    .line 84
    invoke-static {v2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const-wide/16 v2, 0xfa0

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    .line 89
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    new-instance v2, Lcom/oplus/camera/perf/CapturePerformance$CapturePerformanceData;

    invoke-direct {v2, v0, v1}, Lcom/oplus/camera/perf/CapturePerformance$CapturePerformanceData;-><init>(J)V

    invoke-static {p0, p1, v2}, Lcom/oplus/camera/perf/Performance;->add(JLcom/oplus/camera/perf/CapturePerformance$CapturePerformanceData;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {}, Lcom/oplus/camera/perf/CapturePerformance;->clear()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setCurrentMode(Ljava/lang/String;)V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentMode, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapturePerformance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 52
    sget-object p0, Lcom/oplus/camera/perf/CapturePerformance;->sCurrentMode:Ljava/lang/String;

    :cond_0
    sput-object p0, Lcom/oplus/camera/perf/CapturePerformance;->sCurrentMode:Ljava/lang/String;

    return-void
.end method
