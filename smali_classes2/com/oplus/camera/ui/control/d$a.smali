.class Lcom/oplus/camera/ui/control/d$a;
.super Landroid/os/Handler;
.source "RecordingStopCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/control/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/d;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/control/d;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/control/d;Lcom/oplus/camera/ui/control/d$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/d$a;-><init>(Lcom/oplus/camera/ui/control/d;)V

    return-void
.end method

.method private a(I)V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/d;->c(Lcom/oplus/camera/ui/control/d;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/d;->a(Lcom/oplus/camera/ui/control/d;)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 91
    iget-object v1, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/d;->d(Lcom/oplus/camera/ui/control/d;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/d;->c(Lcom/oplus/camera/ui/control/d;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotableTextView;->setAlpha(F)V

    .line 93
    iget-object v1, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/d;->c(Lcom/oplus/camera/ui/control/d;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object v1

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    invoke-static {v1, v0}, Lcom/oplus/camera/ui/control/d;->a(Lcom/oplus/camera/ui/control/d;I)I

    .line 95
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/d$a;->b()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/control/d;->b(Lcom/oplus/camera/ui/control/d;I)I

    const/4 v0, 0x2

    .line 100
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/d$a;->removeMessages(I)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/d$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/camera/ui/control/d$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private a()Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/d;->a(Lcom/oplus/camera/ui/control/d;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/d;->b(Lcom/oplus/camera/ui/control/d;)Lcom/oplus/camera/ui/control/d$b;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/control/d;->a(Lcom/oplus/camera/ui/control/d;Z)Z

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/d;->b(Lcom/oplus/camera/ui/control/d;)Lcom/oplus/camera/ui/control/d$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/control/d$b;->a()V

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private b()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/d;->e(Lcom/oplus/camera/ui/control/d;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/d;->e(Lcom/oplus/camera/ui/control/d;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 107
    iget-object p0, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/d;->e(Lcom/oplus/camera/ui/control/d;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/control/d;->a(Lcom/oplus/camera/ui/control/d;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 113
    iget-object v0, p0, Lcom/oplus/camera/ui/control/d$a;->a:Lcom/oplus/camera/ui/control/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/d;->e(Lcom/oplus/camera/ui/control/d;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/ui/control/d$a$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/d$a$1;-><init>(Lcom/oplus/camera/ui/control/d$a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingStopCountDownTimer"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/d$a;->a()Z

    move-result p1

    if-nez p1, :cond_2

    .line 64
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/control/d$a;->a(I)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/d$a;->c()V

    .line 59
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/control/d$a;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method
