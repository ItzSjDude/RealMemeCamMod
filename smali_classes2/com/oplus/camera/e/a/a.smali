.class public Lcom/oplus/camera/e/a/a;
.super Ljava/lang/Object;
.source "ZoomStateCallback.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/oplus/camera/e/a/a;->a:I

    .line 29
    iput-boolean v0, p0, Lcom/oplus/camera/e/a/a;->b:Z

    .line 30
    iput-boolean v0, p0, Lcom/oplus/camera/e/a/a;->c:Z

    .line 31
    iput-boolean v0, p0, Lcom/oplus/camera/e/a/a;->d:Z

    .line 32
    iput-boolean v0, p0, Lcom/oplus/camera/e/a/a;->e:Z

    .line 33
    iput-boolean v0, p0, Lcom/oplus/camera/e/a/a;->f:Z

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/oplus/camera/e/a/a;->g:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    if-eqz p3, :cond_0

    .line 41
    sget-object p1, Lcom/oplus/camera/e/b;->J:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, p1}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_8

    .line 44
    instance-of p2, p1, [I

    if-eqz p2, :cond_8

    .line 46
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide p2

    .line 47
    check-cast p1, [I

    .line 49
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 50
    aget p1, p1, v1

    goto :goto_1

    :cond_1
    move p1, v1

    .line 53
    :goto_1
    iget-boolean v0, p0, Lcom/oplus/camera/e/a/a;->d:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/e/a/a;->e:Z

    if-eqz v0, :cond_3

    :cond_2
    if-ne p1, v2, :cond_3

    .line 54
    iput-boolean v2, p0, Lcom/oplus/camera/e/a/a;->d:Z

    .line 55
    iput-boolean v1, p0, Lcom/oplus/camera/e/a/a;->e:Z

    .line 56
    iput-wide p2, p0, Lcom/oplus/camera/e/a/a;->g:J

    .line 59
    :cond_3
    iget-wide v3, p0, Lcom/oplus/camera/e/a/a;->g:J

    sub-long/2addr p2, v3

    const-wide/16 v3, 0x1e

    cmp-long p2, p2, v3

    if-lez p2, :cond_4

    move p2, v2

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    iput-boolean p2, p0, Lcom/oplus/camera/e/a/a;->f:Z

    if-ne p1, v2, :cond_5

    move p2, v2

    goto :goto_3

    :cond_5
    move p2, v1

    .line 60
    :goto_3
    iput-boolean p2, p0, Lcom/oplus/camera/e/a/a;->b:Z

    .line 67
    iget p2, p0, Lcom/oplus/camera/e/a/a;->a:I

    if-ne p2, v2, :cond_7

    if-eqz p1, :cond_6

    iget-boolean p2, p0, Lcom/oplus/camera/e/a/a;->f:Z

    if-eqz p2, :cond_7

    .line 69
    :cond_6
    iput-boolean v1, p0, Lcom/oplus/camera/e/a/a;->d:Z

    .line 70
    invoke-virtual {p0}, Lcom/oplus/camera/e/a/a;->a()V

    .line 73
    :cond_7
    iput p1, p0, Lcom/oplus/camera/e/a/a;->a:I

    goto :goto_4

    .line 75
    :cond_8
    invoke-virtual {p0}, Lcom/oplus/camera/e/a/a;->d()V

    :goto_4
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/oplus/camera/e/a/a;->c:Z

    .line 85
    iput-boolean p1, p0, Lcom/oplus/camera/e/a/a;->e:Z

    return-void
.end method

.method public b()Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/oplus/camera/e/a/a;->c:Z

    return p0
.end method

.method public c()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/oplus/camera/e/a/a;->b:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/e/a/a;->f:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/oplus/camera/e/a/a;->b:Z

    .line 98
    iput-boolean v0, p0, Lcom/oplus/camera/e/a/a;->c:Z

    .line 99
    iput-boolean v0, p0, Lcom/oplus/camera/e/a/a;->f:Z

    .line 100
    iput-boolean v0, p0, Lcom/oplus/camera/e/a/a;->e:Z

    .line 101
    iput-boolean v0, p0, Lcom/oplus/camera/e/a/a;->d:Z

    const-wide/16 v1, 0x0

    .line 102
    iput-wide v1, p0, Lcom/oplus/camera/e/a/a;->g:J

    .line 103
    iput v0, p0, Lcom/oplus/camera/e/a/a;->a:I

    return-void
.end method
