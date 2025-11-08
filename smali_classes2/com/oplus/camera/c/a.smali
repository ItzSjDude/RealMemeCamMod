.class public Lcom/oplus/camera/c/a;
.super Ljava/lang/Object;
.source "ApertureControllerCallback.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/oplus/camera/c/a;->a:I

    .line 17
    iput-boolean v0, p0, Lcom/oplus/camera/c/a;->b:Z

    .line 18
    iput-boolean v0, p0, Lcom/oplus/camera/c/a;->c:Z

    .line 19
    iput-boolean v0, p0, Lcom/oplus/camera/c/a;->d:Z

    .line 20
    iput-boolean v0, p0, Lcom/oplus/camera/c/a;->e:Z

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/oplus/camera/c/a;->f:J

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

    .line 28
    sget-object p1, Lcom/oplus/camera/e/b;->E:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, p1}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 31
    instance-of p2, p1, [I

    if-eqz p2, :cond_7

    .line 33
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide p2

    .line 34
    check-cast p1, [I

    .line 36
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 37
    aget p1, p1, v1

    goto :goto_1

    :cond_1
    move p1, v1

    .line 40
    :goto_1
    iget-boolean v0, p0, Lcom/oplus/camera/c/a;->d:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-ne p1, v2, :cond_2

    .line 41
    iput-boolean v2, p0, Lcom/oplus/camera/c/a;->d:Z

    .line 42
    iput-wide p2, p0, Lcom/oplus/camera/c/a;->f:J

    .line 45
    :cond_2
    iget-wide v3, p0, Lcom/oplus/camera/c/a;->f:J

    sub-long/2addr p2, v3

    const-wide/16 v3, 0xf

    cmp-long p2, p2, v3

    if-lez p2, :cond_3

    move p2, v2

    goto :goto_2

    :cond_3
    move p2, v1

    :goto_2
    iput-boolean p2, p0, Lcom/oplus/camera/c/a;->e:Z

    if-ne p1, v2, :cond_4

    move p2, v2

    goto :goto_3

    :cond_4
    move p2, v1

    .line 46
    :goto_3
    iput-boolean p2, p0, Lcom/oplus/camera/c/a;->b:Z

    .line 53
    iget p2, p0, Lcom/oplus/camera/c/a;->a:I

    if-ne p2, v2, :cond_6

    if-eqz p1, :cond_5

    iget-boolean p2, p0, Lcom/oplus/camera/c/a;->e:Z

    if-eqz p2, :cond_6

    .line 55
    :cond_5
    iput-boolean v1, p0, Lcom/oplus/camera/c/a;->d:Z

    .line 56
    invoke-virtual {p0}, Lcom/oplus/camera/c/a;->a()V

    .line 59
    :cond_6
    iput p1, p0, Lcom/oplus/camera/c/a;->a:I

    :cond_7
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/oplus/camera/c/a;->c:Z

    return-void
.end method

.method public b()Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/oplus/camera/c/a;->c:Z

    return p0
.end method
