.class Lcom/oplus/camera/perf/Performance$1;
.super Ljava/lang/Object;
.source "Performance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/perf/Performance;->count()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 224
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->access$1100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    const/4 v0, 0x5

    if-lt p0, v0, :cond_0

    .line 225
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->access$1100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 226
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->access$1200()V

    .line 227
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->access$1300()Lcom/oplus/camera/perf/Performance$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/perf/Performance$a;->a()V

    goto :goto_0

    .line 229
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "count, sCount: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/camera/perf/Performance;->access$1100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Performance"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
