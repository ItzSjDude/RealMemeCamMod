.class Lcom/oplus/camera/perf/FluencyPerformance$7;
.super Ljava/lang/Object;
.source "FluencyPerformance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/perf/FluencyPerformance;->e(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 415
    iput-wide p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$7;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 418
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->n()Lcom/oplus/camera/perf/FluencyPerformance$a;

    move-result-object v0

    iget-wide v0, v0, Lcom/oplus/camera/perf/FluencyPerformance$a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->n()Lcom/oplus/camera/perf/FluencyPerformance$a;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/perf/FluencyPerformance$a;->a(Lcom/oplus/camera/perf/FluencyPerformance$a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Record"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->n()Lcom/oplus/camera/perf/FluencyPerformance$a;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$7;->a:J

    iput-wide v1, v0, Lcom/oplus/camera/perf/FluencyPerformance$a;->b:J

    .line 420
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->n()Lcom/oplus/camera/perf/FluencyPerformance$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/perf/FluencyPerformance$a;->b()V

    .line 423
    :cond_0
    sget-object p0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_PREVIEW:Lcom/oplus/camera/perf/FluencyPerformance$b;

    invoke-static {p0}, Lcom/oplus/camera/perf/FluencyPerformance;->a(Lcom/oplus/camera/perf/FluencyPerformance$b;)Lcom/oplus/camera/perf/FluencyPerformance$b;

    return-void
.end method
