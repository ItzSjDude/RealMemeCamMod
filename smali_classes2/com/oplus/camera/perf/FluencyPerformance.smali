.class public Lcom/oplus/camera/perf/FluencyPerformance;
.super Ljava/lang/Object;
.source "FluencyPerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/perf/FluencyPerformance$c;,
        Lcom/oplus/camera/perf/FluencyPerformance$a;,
        Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;,
        Lcom/oplus/camera/perf/FluencyPerformance$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;

.field private static c:Lcom/oplus/camera/perf/FluencyPerformance$b;

.field private static d:I

.field private static e:J

.field private static f:J

.field private static g:J

.field private static h:J

.field private static i:I

.field private static j:I

.field private static k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Landroid/os/Handler;

.field private static final m:Lcom/oplus/camera/perf/FluencyPerformance$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/16 v1, 0x18

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x433e0000    # 190.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1e

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/high16 v3, 0x42cc0000    # 102.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x32

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x425d3333    # 55.3f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x37

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x420d3333    # 35.3f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x3c

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/high16 v3, 0x41940000    # 18.5f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->a:Ljava/util/Map;

    const-string v0, "common"

    .line 56
    sput-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->b:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_LAUNCHING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    sput-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->c:Lcom/oplus/camera/perf/FluencyPerformance$b;

    .line 58
    sput v1, Lcom/oplus/camera/perf/FluencyPerformance;->d:I

    const-wide/16 v0, -0x1

    .line 60
    sput-wide v0, Lcom/oplus/camera/perf/FluencyPerformance;->e:J

    .line 61
    sput-wide v0, Lcom/oplus/camera/perf/FluencyPerformance;->f:J

    .line 62
    sput-wide v0, Lcom/oplus/camera/perf/FluencyPerformance;->g:J

    .line 63
    sput-wide v0, Lcom/oplus/camera/perf/FluencyPerformance;->h:J

    const/4 v0, -0x1

    .line 64
    sput v0, Lcom/oplus/camera/perf/FluencyPerformance;->i:I

    .line 65
    sput v0, Lcom/oplus/camera/perf/FluencyPerformance;->j:I

    const/4 v0, 0x0

    .line 66
    sput-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->k:Ljava/util/LinkedHashMap;

    .line 67
    sput-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->l:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/oplus/camera/perf/FluencyPerformance$a;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/oplus/camera/perf/FluencyPerformance$a;-><init>(I)V

    sput-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->m:Lcom/oplus/camera/perf/FluencyPerformance$a;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/perf/FluencyPerformance$b;)Lcom/oplus/camera/perf/FluencyPerformance$b;
    .locals 0

    .line 19
    sput-object p0, Lcom/oplus/camera/perf/FluencyPerformance;->c:Lcom/oplus/camera/perf/FluencyPerformance$b;

    return-object p0
.end method

.method public static a()V
    .locals 5

    .line 374
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearPreviewHalCallbackMap, unrendered hal callback record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FluencyPerformance"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_0
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public static a(I)V
    .locals 2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExpectedFrameRate, expectedFR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FluencyPerformance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    sput p0, Lcom/oplus/camera/perf/FluencyPerformance;->d:I

    return-void
.end method

.method public static a(J)V
    .locals 1

    .line 313
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_LAUNCHING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    sput-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->c:Lcom/oplus/camera/perf/FluencyPerformance$b;

    .line 314
    sput-wide p0, Lcom/oplus/camera/perf/FluencyPerformance;->e:J

    .line 316
    new-instance p0, Landroid/os/HandlerThread;

    const-string p1, "Fluency Computation"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 318
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p1, Lcom/oplus/camera/perf/FluencyPerformance;->l:Landroid/os/Handler;

    .line 320
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object p0, Lcom/oplus/camera/perf/FluencyPerformance;->k:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static a(JJ)V
    .locals 2

    .line 540
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 541
    new-instance v1, Lcom/oplus/camera/perf/FluencyPerformance$2;

    invoke-direct {v1, p2, p3, p0, p1}, Lcom/oplus/camera/perf/FluencyPerformance$2;-><init>(JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static a(JJI)V
    .locals 2

    .line 486
    sput-wide p0, Lcom/oplus/camera/perf/FluencyPerformance;->h:J

    .line 487
    sput p4, Lcom/oplus/camera/perf/FluencyPerformance;->j:I

    .line 489
    sget-wide v0, Lcom/oplus/camera/perf/FluencyPerformance;->g:J

    cmp-long p4, p2, v0

    if-nez p4, :cond_0

    .line 490
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addRenderFrame, "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " already rendered"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FluencyPerformance"

    invoke-static {p3, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    sput-wide p0, Lcom/oplus/camera/perf/FluencyPerformance;->f:J

    return-void

    .line 496
    :cond_0
    sget-object p4, Lcom/oplus/camera/perf/FluencyPerformance;->l:Landroid/os/Handler;

    if-eqz p4, :cond_1

    .line 497
    new-instance v0, Lcom/oplus/camera/perf/FluencyPerformance$11;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/oplus/camera/perf/FluencyPerformance$11;-><init>(JJ)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public static a(JZ)V
    .locals 8

    .line 345
    sget-wide v0, Lcom/oplus/camera/perf/FluencyPerformance;->f:J

    const-wide/16 v2, -0x1

    cmp-long v4, v2, v0

    const-string v5, "FluencyPerformance"

    if-eqz v4, :cond_0

    sub-long v0, p0, v0

    const-wide/16 v6, 0x3e8

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    const-string v0, "onInterrupt, SCREEN FROZEN DURING PREVIEW"

    .line 346
    invoke-static {v5, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_0
    sget-wide v0, Lcom/oplus/camera/perf/FluencyPerformance;->h:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    sget-wide v0, Lcom/oplus/camera/perf/FluencyPerformance;->e:J

    sub-long v0, p0, v0

    const-wide/16 v6, 0x7d0

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    const-string v0, "onInterrupt, SCREEN FROZEN DURING CONFIGURE"

    .line 348
    invoke-static {v5, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->m:Lcom/oplus/camera/perf/FluencyPerformance$a;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/camera/perf/FluencyPerformance$a;->b(J)V

    if-eqz p2, :cond_2

    .line 354
    sput-wide v2, Lcom/oplus/camera/perf/FluencyPerformance;->f:J

    .line 355
    sput-wide v2, Lcom/oplus/camera/perf/FluencyPerformance;->h:J

    .line 356
    sput-wide p0, Lcom/oplus/camera/perf/FluencyPerformance;->e:J

    .line 357
    sget-object p0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_CONFIGURING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    sput-object p0, Lcom/oplus/camera/perf/FluencyPerformance;->c:Lcom/oplus/camera/perf/FluencyPerformance$b;

    .line 358
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->a()V

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentMode, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FluencyPerformance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 432
    sget-object p0, Lcom/oplus/camera/perf/FluencyPerformance;->b:Ljava/lang/String;

    :cond_0
    sput-object p0, Lcom/oplus/camera/perf/FluencyPerformance;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;)Z
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/oplus/camera/perf/FluencyPerformance;->b(Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(I)I
    .locals 0

    .line 19
    sput p0, Lcom/oplus/camera/perf/FluencyPerformance;->i:I

    return p0
.end method

.method public static b()V
    .locals 2

    .line 463
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 464
    new-instance v1, Lcom/oplus/camera/perf/FluencyPerformance$9;

    invoke-direct {v1}, Lcom/oplus/camera/perf/FluencyPerformance$9;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static b(J)V
    .locals 3

    .line 324
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_RECORDING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    sget-object v1, Lcom/oplus/camera/perf/FluencyPerformance;->c:Lcom/oplus/camera/perf/FluencyPerformance$b;

    const-string v2, "FluencyPerformance"

    if-ne v0, v1, :cond_0

    const-string p0, "setShutterTime, during recording, fluency sample for capture not triggered"

    .line 325
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShutterTime, shutterTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->l:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 333
    new-instance v1, Lcom/oplus/camera/perf/FluencyPerformance$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/perf/FluencyPerformance$1;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public static b(JZ)V
    .locals 2

    .line 363
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 364
    new-instance v1, Lcom/oplus/camera/perf/FluencyPerformance$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/camera/perf/FluencyPerformance$4;-><init>(JZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static b(Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;)Z
    .locals 6

    .line 299
    iget-wide v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->averageFrameRate:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->frameRateVar:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->averageRenderLag:D

    .line 300
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->totalIntervalVar:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->maxIntVar:D

    .line 301
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->minFrameRate:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->maxInterval:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->windowTime:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->maxRenderLag:I

    if-ltz v0, :cond_1

    iget-wide v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->minFrameRate:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;->minInterval:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValid, invalid fluencyPerformance data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "FluencyPerformance"

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public static c()V
    .locals 2

    .line 474
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 475
    new-instance v1, Lcom/oplus/camera/perf/FluencyPerformance$10;

    invoke-direct {v1}, Lcom/oplus/camera/perf/FluencyPerformance$10;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static c(J)V
    .locals 2

    .line 382
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 383
    new-instance v1, Lcom/oplus/camera/perf/FluencyPerformance$5;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/perf/FluencyPerformance$5;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static d()V
    .locals 3

    .line 618
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 619
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 622
    :try_start_0
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->l:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 623
    sput-object v1, Lcom/oplus/camera/perf/FluencyPerformance;->l:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy, quit handler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FluencyPerformance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static d(J)V
    .locals 2

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRecordTime, record fluency sample begin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FluencyPerformance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 402
    new-instance v1, Lcom/oplus/camera/perf/FluencyPerformance$6;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/perf/FluencyPerformance$6;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic e()Lcom/oplus/camera/perf/FluencyPerformance$b;
    .locals 1

    .line 19
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->c:Lcom/oplus/camera/perf/FluencyPerformance$b;

    return-object v0
.end method

.method public static e(J)V
    .locals 2

    .line 414
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 415
    new-instance v1, Lcom/oplus/camera/perf/FluencyPerformance$7;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/perf/FluencyPerformance$7;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic f()J
    .locals 2

    .line 19
    sget-wide v0, Lcom/oplus/camera/perf/FluencyPerformance;->h:J

    return-wide v0
.end method

.method public static f(J)V
    .locals 2

    .line 446
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 447
    new-instance v1, Lcom/oplus/camera/perf/FluencyPerformance$8;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/perf/FluencyPerformance$8;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic g()J
    .locals 2

    .line 19
    sget-wide v0, Lcom/oplus/camera/perf/FluencyPerformance;->f:J

    return-wide v0
.end method

.method static synthetic g(J)J
    .locals 0

    .line 19
    sput-wide p0, Lcom/oplus/camera/perf/FluencyPerformance;->f:J

    return-wide p0
.end method

.method static synthetic h()I
    .locals 1

    .line 19
    sget v0, Lcom/oplus/camera/perf/FluencyPerformance;->j:I

    return v0
.end method

.method static synthetic h(J)J
    .locals 0

    .line 19
    sput-wide p0, Lcom/oplus/camera/perf/FluencyPerformance;->g:J

    return-wide p0
.end method

.method static synthetic i()I
    .locals 1

    .line 19
    sget v0, Lcom/oplus/camera/perf/FluencyPerformance;->d:I

    return v0
.end method

.method static synthetic j()I
    .locals 1

    .line 19
    sget v0, Lcom/oplus/camera/perf/FluencyPerformance;->i:I

    return v0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l()I
    .locals 1

    .line 19
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->p()I

    move-result v0

    return v0
.end method

.method static synthetic m()Ljava/util/Map;
    .locals 1

    .line 19
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic n()Lcom/oplus/camera/perf/FluencyPerformance$a;
    .locals 1

    .line 19
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->m:Lcom/oplus/camera/perf/FluencyPerformance$a;

    return-object v0
.end method

.method static synthetic o()Ljava/util/LinkedHashMap;
    .locals 1

    .line 19
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance;->k:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method private static p()I
    .locals 1

    .line 442
    sget v0, Lcom/oplus/camera/perf/FluencyPerformance;->d:I

    return v0
.end method
