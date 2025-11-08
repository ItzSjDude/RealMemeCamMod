.class Lcom/oplus/camera/perf/FluencyPerformance$4;
.super Ljava/lang/Object;
.source "FluencyPerformance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/perf/FluencyPerformance;->b(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z


# direct methods
.method constructor <init>(JZ)V
    .locals 0

    .line 364
    iput-wide p1, p0, Lcom/oplus/camera/perf/FluencyPerformance$4;->a:J

    iput-boolean p3, p0, Lcom/oplus/camera/perf/FluencyPerformance$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 367
    iget-wide v0, p0, Lcom/oplus/camera/perf/FluencyPerformance$4;->a:J

    iget-boolean p0, p0, Lcom/oplus/camera/perf/FluencyPerformance$4;->b:Z

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/perf/FluencyPerformance;->a(JZ)V

    return-void
.end method
