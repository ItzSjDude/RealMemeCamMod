.class public Lcom/oplus/camera/ui/g;
.super Ljava/lang/Object;
.source "CountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/g$a;
    }
.end annotation


# instance fields
.field protected a:J

.field protected b:J

.field protected c:J

.field protected d:Lcom/oplus/camera/ui/CameraUIInterface;

.field protected e:Landroid/os/Handler;

.field private f:Z

.field private g:Lcom/oplus/camera/ui/g$a;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/g$a;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/oplus/camera/ui/g;->f:Z

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/oplus/camera/ui/g;->a:J

    .line 21
    iput-wide v0, p0, Lcom/oplus/camera/ui/g;->b:J

    .line 22
    iput-wide v0, p0, Lcom/oplus/camera/ui/g;->c:J

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/oplus/camera/ui/g;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 24
    iput-object v0, p0, Lcom/oplus/camera/ui/g;->e:Landroid/os/Handler;

    .line 25
    iput-object v0, p0, Lcom/oplus/camera/ui/g;->g:Lcom/oplus/camera/ui/g$a;

    .line 34
    iput-object p1, p0, Lcom/oplus/camera/ui/g;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 35
    iput-object p2, p0, Lcom/oplus/camera/ui/g;->g:Lcom/oplus/camera/ui/g$a;

    .line 36
    new-instance p1, Lcom/oplus/camera/ui/g$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/ui/g$1;-><init>(Lcom/oplus/camera/ui/g;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/g;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/g;)Lcom/oplus/camera/ui/g$a;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/oplus/camera/ui/g;->g:Lcom/oplus/camera/ui/g$a;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/g;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/oplus/camera/ui/g;->f:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/oplus/camera/ui/g;->f:Z

    .line 63
    iget-object v0, p0, Lcom/oplus/camera/ui/g;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    iget-object p0, p0, Lcom/oplus/camera/ui/g;->e:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 75
    iput-wide p1, p0, Lcom/oplus/camera/ui/g;->c:J

    return-void
.end method

.method public b()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/oplus/camera/ui/g;->c:J

    return-wide v0
.end method

.method public c()V
    .locals 2

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/ui/g;->a:J

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/oplus/camera/ui/g;->f:Z

    return-void
.end method

.method public d()Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/oplus/camera/ui/g;->f:Z

    return p0
.end method

.method public e()V
    .locals 10

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 93
    iget-wide v2, p0, Lcom/oplus/camera/ui/g;->a:J

    sub-long v2, v0, v2

    .line 94
    iget-wide v4, p0, Lcom/oplus/camera/ui/g;->c:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lcom/oplus/camera/ui/g;->c:J

    .line 95
    iget-wide v4, p0, Lcom/oplus/camera/ui/g;->b:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/oplus/camera/ui/g;->b:J

    .line 96
    iput-wide v0, p0, Lcom/oplus/camera/ui/g;->a:J

    .line 98
    iget-wide v0, p0, Lcom/oplus/camera/ui/g;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    move-wide v0, v4

    .line 104
    :cond_0
    iget-wide v6, p0, Lcom/oplus/camera/ui/g;->b:J

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCountdownTime, currentTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", delta: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mCountDownTemp: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oplus/camera/ui/g;->b:J

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CountDownUI"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-wide v2, p0, Lcom/oplus/camera/ui/g;->b:J

    sub-long/2addr v2, v8

    .line 109
    iget-wide v6, p0, Lcom/oplus/camera/ui/g;->c:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/oplus/camera/ui/g;->c:J

    .line 110
    iput-wide v4, p0, Lcom/oplus/camera/ui/g;->b:J

    .line 111
    iget-object v6, p0, Lcom/oplus/camera/ui/g;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    add-long/2addr v2, v0

    const/4 v7, 0x0

    invoke-interface {v6, v2, v3, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(JZ)V

    :cond_1
    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 115
    iget-object p0, p0, Lcom/oplus/camera/ui/g;->e:Landroid/os/Handler;

    const/4 v0, 0x2

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 117
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/g;->e:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
