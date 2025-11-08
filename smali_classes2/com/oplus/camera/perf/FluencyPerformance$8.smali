.class Lcom/oplus/camera/perf/FluencyPerformance$8;
.super Ljava/lang/Object;
.source "FluencyPerformance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/perf/FluencyPerformance;->f(J)V
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

    .line 447
    iput-wide p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$8;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 450
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_ZOOMING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->e()Lcom/oplus/camera/perf/FluencyPerformance$b;

    move-result-object v1

    const-string v2, "Zoom"

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->n()Lcom/oplus/camera/perf/FluencyPerformance$a;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/perf/FluencyPerformance$a;->a(Lcom/oplus/camera/perf/FluencyPerformance$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-wide v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$8;->a:J

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/perf/FluencyPerformance;->a(JZ)V

    goto :goto_0

    .line 452
    :cond_0
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->n()Lcom/oplus/camera/perf/FluencyPerformance$a;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/perf/FluencyPerformance$a;->a(Lcom/oplus/camera/perf/FluencyPerformance$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->n()Lcom/oplus/camera/perf/FluencyPerformance$a;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/perf/FluencyPerformance$a;->a(Lcom/oplus/camera/perf/FluencyPerformance$a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FluencyPerformance"

    const-string v1, "onZoomChange, zoom fluency sample begin"

    .line 453
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->n()Lcom/oplus/camera/perf/FluencyPerformance$a;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$8;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/perf/FluencyPerformance$a;->a(J)V

    :cond_1
    :goto_0
    return-void
.end method
