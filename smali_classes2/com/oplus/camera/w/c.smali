.class public Lcom/oplus/camera/w/c;
.super Landroid/os/HandlerThread;
.source "CameraHandlerThread.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/oplus/camera/w/c;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/oplus/camera/w/c;->a:Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 15
    iget-boolean v0, p0, Lcom/oplus/camera/w/c;->a:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const-string v1, "129"

    invoke-static {v1, v0}, Lcom/oplus/camera/perf/b;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/oplus/camera/w/c;->a:Z

    .line 21
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    return-void
.end method
