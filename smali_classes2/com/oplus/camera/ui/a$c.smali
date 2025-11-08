.class public Lcom/oplus/camera/ui/a$c;
.super Ljava/lang/Object;
.source "BackgroundSplitManager.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>(JJI)V
    .locals 2

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 430
    iput-wide v0, p0, Lcom/oplus/camera/ui/a$c;->a:J

    .line 431
    iput-wide v0, p0, Lcom/oplus/camera/ui/a$c;->b:J

    .line 432
    iput-wide v0, p0, Lcom/oplus/camera/ui/a$c;->c:J

    const/4 v0, 0x0

    .line 433
    iput v0, p0, Lcom/oplus/camera/ui/a$c;->d:I

    .line 436
    iput-wide p1, p0, Lcom/oplus/camera/ui/a$c;->a:J

    .line 437
    iput-wide p3, p0, Lcom/oplus/camera/ui/a$c;->b:J

    .line 438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/ui/a$c;->c:J

    .line 439
    iput p5, p0, Lcom/oplus/camera/ui/a$c;->d:I

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    .line 444
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/ui/a$c;->c:J

    .line 445
    iget p1, p0, Lcom/oplus/camera/ui/a$c;->d:I

    invoke-static {p1}, Lcom/oplus/camera/ui/a;->a(I)Lcom/oplus/camera/ui/a;

    move-result-object p1

    iget-wide v0, p0, Lcom/oplus/camera/ui/a$c;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/a;->a(J)V

    .line 447
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/oplus/camera/ui/a$c;->a:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/oplus/camera/ui/a$c;->b:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    .line 448
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method
