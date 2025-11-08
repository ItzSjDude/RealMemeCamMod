.class Lcom/oplus/camera/perf/FluencyPerformance$6;
.super Ljava/lang/Object;
.source "FluencyPerformance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/perf/FluencyPerformance;->d(J)V
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

    .line 402
    iput-wide p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$6;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 405
    iget-wide v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$6;->a:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/perf/FluencyPerformance;->a(JZ)V

    .line 406
    sget-object v0, Lcom/oplus/camera/perf/FluencyPerformance$b;->STATE_RECORDING:Lcom/oplus/camera/perf/FluencyPerformance$b;

    invoke-static {v0}, Lcom/oplus/camera/perf/FluencyPerformance;->a(Lcom/oplus/camera/perf/FluencyPerformance$b;)Lcom/oplus/camera/perf/FluencyPerformance$b;

    .line 407
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->n()Lcom/oplus/camera/perf/FluencyPerformance$a;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$6;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/perf/FluencyPerformance$a;->a(J)V

    return-void
.end method
