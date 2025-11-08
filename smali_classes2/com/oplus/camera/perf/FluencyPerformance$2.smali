.class Lcom/oplus/camera/perf/FluencyPerformance$2;
.super Ljava/lang/Object;
.source "FluencyPerformance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/perf/FluencyPerformance;->a(JJ)V
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

    .line 541
    iput-wide p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$2;->a:J

    iput-wide p3, p0, Lcom/oplus/camera/perf/FluencyPerformance$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 544
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->o()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const-string v0, "FluencyPerformance"

    const-string v1, "addHalCallbackTime, cached preview frame num over 10"

    .line 545
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->a()V

    .line 550
    :cond_0
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->o()Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/camera/perf/FluencyPerformance$2;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/oplus/camera/perf/FluencyPerformance$2;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
