.class Lcom/oplus/camera/perf/b$2;
.super Ljava/lang/Object;
.source "CameraPerformance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/perf/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string p0, "CameraPerformance"

    const-string v0, "setLaunchEndCpuInfo"

    .line 229
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/oplus/camera/perf/b;->a()Lcom/oplus/camera/perf/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/perf/a;->b()V

    .line 232
    invoke-static {}, Lcom/oplus/camera/perf/b;->a()Lcom/oplus/camera/perf/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/perf/a;->c()V

    .line 234
    invoke-static {}, Lcom/oplus/camera/perf/b;->a()Lcom/oplus/camera/perf/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/perf/a;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 235
    invoke-static {}, Lcom/oplus/camera/perf/b;->a()Lcom/oplus/camera/perf/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/perf/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/perf/LaunchPerformance;->setLaunchCpuInfo(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 237
    invoke-static {p0}, Lcom/oplus/camera/perf/LaunchPerformance;->setLaunchCpuInfo(Ljava/lang/String;)V

    .line 240
    :goto_0
    invoke-static {}, Lcom/oplus/camera/perf/ComprehensivePerformance;->c()Z

    move-result p0

    if-nez p0, :cond_1

    .line 241
    invoke-static {}, Lcom/oplus/camera/perf/b;->a()Lcom/oplus/camera/perf/a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/perf/a;->a(Z)V

    :cond_1
    return-void
.end method
