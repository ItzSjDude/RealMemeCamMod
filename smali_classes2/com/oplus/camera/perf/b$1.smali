.class Lcom/oplus/camera/perf/b$1;
.super Ljava/lang/Object;
.source "CameraPerformance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/perf/b;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 137
    invoke-static {}, Lcom/oplus/camera/perf/b;->a()Lcom/oplus/camera/perf/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/perf/a;->b()V

    .line 138
    invoke-static {}, Lcom/oplus/camera/perf/b;->a()Lcom/oplus/camera/perf/a;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/perf/a;->a(Z)V

    return-void
.end method
