.class public Lcom/oplus/compat/os/ProcessCpuTrackerNative;
.super Ljava/lang/Object;
.source "ProcessCpuTrackerNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessCpuTrackerNative"


# instance fields
.field private mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private mProcessCpuTrackerWrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, p1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Lcom/oplus/inner/os/ProcessCpuTrackerWrapper;

    invoke-direct {v0, p1}, Lcom/oplus/inner/os/ProcessCpuTrackerWrapper;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->mProcessCpuTrackerWrapper:Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-static {p1}, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->getProcessCpuTrackerWrapper(Z)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->mProcessCpuTrackerWrapper:Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_2
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, p1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    :goto_0
    return-void

    .line 30
    :cond_3
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "Not supported before L"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getProcessCpuTrackerWrapper(Z)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static updateCompat(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public update()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object p0, p0, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object p0, p0, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->mProcessCpuTrackerWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/os/ProcessCpuTrackerWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/os/ProcessCpuTrackerWrapper;->update()V

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object p0, p0, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->mProcessCpuTrackerWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->updateCompat(Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    iget-object p0, p0, Lcom/oplus/compat/os/ProcessCpuTrackerNative;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    :goto_0
    return-void

    .line 51
    :cond_3
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "Not supported before L"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method
