.class public Lcom/oplus/camera/ui/p;
.super Lcom/oplus/camera/ui/h;
.source "NightCountDownUI.java"


# instance fields
.field private g:Z


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/h$a;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/h;-><init>(Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/h$a;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/oplus/camera/ui/p;->g:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 24
    invoke-super {p0}, Lcom/oplus/camera/ui/h;->a()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/oplus/camera/ui/p;->g:Z

    return-void
.end method

.method public d()V
    .locals 1

    .line 18
    invoke-super {p0}, Lcom/oplus/camera/ui/h;->d()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/oplus/camera/ui/p;->g:Z

    return-void
.end method

.method public e()V
    .locals 8

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 31
    iget-wide v2, p0, Lcom/oplus/camera/ui/p;->a:J

    sub-long v2, v0, v2

    .line 32
    iget-wide v4, p0, Lcom/oplus/camera/ui/p;->c:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lcom/oplus/camera/ui/p;->c:J

    .line 33
    iput-wide v0, p0, Lcom/oplus/camera/ui/p;->a:J

    .line 35
    iget-wide v0, p0, Lcom/oplus/camera/ui/p;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    move-wide v0, v4

    .line 41
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCountdownTime, currentTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", delta: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NightCountDownUI"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-boolean v2, p0, Lcom/oplus/camera/ui/p;->g:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 44
    iput-boolean v2, p0, Lcom/oplus/camera/ui/p;->g:Z

    .line 45
    iget-object v2, p0, Lcom/oplus/camera/ui/p;->e:Lcom/oplus/camera/ui/CameraUIInterface;

    long-to-int v6, v0

    invoke-interface {v2, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->h(I)V

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCountdownTime, setShutterButtonTime: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/p;->e:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(J)V

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/oplus/camera/ui/p;->d:Z

    .line 54
    iget-object p0, p0, Lcom/oplus/camera/ui/p;->f:Landroid/os/Handler;

    const/4 v0, 0x2

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 56
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/p;->f:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
