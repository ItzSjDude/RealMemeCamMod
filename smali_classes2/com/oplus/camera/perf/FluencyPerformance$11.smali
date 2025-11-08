.class Lcom/oplus/camera/perf/FluencyPerformance$11;
.super Ljava/lang/Object;
.source "FluencyPerformance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/perf/FluencyPerformance;->a(JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    .line 497
    iput-wide p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$11;->a:J

    iput-wide p3, p0, Lcom/oplus/camera/perf/FluencyPerformance$11;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "FluencyPerformance.addRenderFrame"

    .line 500
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->o()Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$11;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-string v2, "FluencyPerformance"

    const-wide/16 v3, -0x1

    if-nez v1, :cond_0

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRenderFrame, hal callback time not found: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/oplus/camera/perf/FluencyPerformance$11;->a:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 509
    :cond_0
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->o()Ljava/util/LinkedHashMap;

    move-result-object v5

    iget-wide v6, p0, Lcom/oplus/camera/perf/FluencyPerformance$11;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    iget-wide v5, p0, Lcom/oplus/camera/perf/FluencyPerformance$11;->b:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v1, v5

    :goto_1
    invoke-static {v1}, Lcom/oplus/camera/perf/FluencyPerformance;->b(I)I

    .line 514
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->g()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    .line 515
    iget-wide v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$11;->b:J

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/FluencyPerformance;->g(J)J

    .line 516
    iget-wide v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$11;->a:J

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/FluencyPerformance;->h(J)J

    .line 518
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_LAUNCHING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->e()Lcom/oplus/camera/perf/FluencyPerformance$b;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const-string v0, "addRenderFrame, launch fluency sample begin"

    .line 519
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->n()Lcom/oplus/camera/perf/FluencyPerformance$a;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$11;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/perf/FluencyPerformance$a;->a(J)V

    goto :goto_2

    .line 522
    :cond_2
    sget-object p0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_CONFIGURING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->e()Lcom/oplus/camera/perf/FluencyPerformance$b;

    move-result-object v0

    if-ne p0, v0, :cond_3

    .line 523
    sget-object p0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_PREVIEW:Lcom/oplus/camera/perf/FluencyPerformance$b;

    invoke-static {p0}, Lcom/oplus/camera/perf/FluencyPerformance;->a(Lcom/oplus/camera/perf/FluencyPerformance$b;)Lcom/oplus/camera/perf/FluencyPerformance$b;

    :cond_3
    :goto_2
    return-void

    .line 529
    :cond_4
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->n()Lcom/oplus/camera/perf/FluencyPerformance$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/perf/FluencyPerformance$a;->a()V

    .line 530
    iget-wide v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$11;->b:J

    invoke-static {v1, v2}, Lcom/oplus/camera/perf/FluencyPerformance;->g(J)J

    .line 531
    iget-wide v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$11;->a:J

    invoke-static {v1, v2}, Lcom/oplus/camera/perf/FluencyPerformance;->h(J)J

    .line 533
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method
