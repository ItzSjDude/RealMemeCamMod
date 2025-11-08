.class Lcom/oplus/camera/ui/menu/levelcontrol/c$3;
.super Ljava/lang/Object;
.source "BlurMenu.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/c;->setOrientation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/levelcontrol/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/c;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 456
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    iget p1, p1, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mCurrentDegree:I

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$400(Lcom/oplus/camera/ui/menu/levelcontrol/c;)I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 457
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 459
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$500(Lcom/oplus/camera/ui/menu/levelcontrol/c;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    .line 460
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$600(Lcom/oplus/camera/ui/menu/levelcontrol/c;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 461
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    iget v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mStartDegree:I

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    iget-boolean v1, v1, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbClockwise:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    :goto_0
    mul-int/lit16 p1, p1, 0x168

    div-int/lit16 p1, p1, 0x3e8

    add-int/2addr v0, p1

    if-ltz v0, :cond_1

    .line 462
    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 463
    :cond_1
    rem-int/lit16 v0, v0, 0x168

    add-int/lit16 v0, v0, 0x168

    .line 464
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    iput v0, p1, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mCurrentDegree:I

    .line 465
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->invalidate()V

    goto :goto_2

    .line 467
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$400(Lcom/oplus/camera/ui/menu/levelcontrol/c;)I

    move-result v0

    iput v0, p1, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mCurrentDegree:I

    .line 471
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$300(Lcom/oplus/camera/ui/menu/levelcontrol/c;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mCurrentDegree:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setRotation(F)V

    return-void
.end method
