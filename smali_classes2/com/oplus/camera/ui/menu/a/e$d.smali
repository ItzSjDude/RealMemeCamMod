.class Lcom/oplus/camera/ui/menu/a/e$d;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ModePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/a/e;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/menu/a/e;)V
    .locals 0

    .line 2515
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/menu/a/e;Lcom/oplus/camera/ui/menu/a/e$1;)V
    .locals 0

    .line 2515
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e$d;-><init>(Lcom/oplus/camera/ui/menu/a/e;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 2519
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->r(Lcom/oplus/camera/ui/menu/a/e;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "ModePickerView"

    const-string p1, "DefaultVerticalGestureDetector, onSingleTapUp, can\'t response TouchEvent."

    .line 2520
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2525
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    .line 2526
    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/a/e$e;->Y()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    .line 2527
    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/a/e$e;->Z()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p0, "ModePickerView"

    const-string p1, "DefaultVerticalGestureDetector, onSingleTapUp, so return when isCapturingOrVideoRecording or isNoneSatUltraWideAngleChanging"

    .line 2528
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2534
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/a/e;->k()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/a/e;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 2541
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/a/e;->d(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "ModePickerView"

    const-string p1, "DefaultVerticalGestureDetector, onSingleTapUp, follow finger can\'t response TouchEvent"

    .line 2542
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2547
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->k(Lcom/oplus/camera/ui/menu/a/e;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2548
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0, v2}, Lcom/oplus/camera/ui/menu/a/e;->c(Lcom/oplus/camera/ui/menu/a/e;Z)Z

    .line 2549
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->l(Lcom/oplus/camera/ui/menu/a/e;)Lcom/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/f;->j()Lcom/a/a/f;

    .line 2552
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 2553
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070ca6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-lez v3, :cond_9

    const/4 v4, 0x0

    .line 2556
    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-ltz v4, :cond_9

    int-to-float v4, v3

    .line 2557
    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-gtz v4, :cond_9

    .line 2558
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/a/e;->a(F)I

    move-result p1

    .line 2559
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->d(Lcom/oplus/camera/ui/menu/a/e;Z)Z

    .line 2561
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->q(Lcom/oplus/camera/ui/menu/a/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-ltz p1, :cond_6

    .line 2563
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v1, p1}, Lcom/oplus/camera/ui/menu/a/e;->b(Lcom/oplus/camera/ui/menu/a/e;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_6
    :goto_0
    if-ltz p1, :cond_7

    .line 2566
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2567
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/a/e;->g(Lcom/oplus/camera/ui/menu/a/e;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/menu/a/e$e;->o(I)V

    goto :goto_1

    :cond_7
    const/4 v1, -0x2

    if-ne p1, v1, :cond_8

    .line 2568
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 2569
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$d;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/a/e$e;->ay()V

    .line 2571
    :cond_8
    :goto_1
    monitor-exit v0

    return v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2576
    :cond_9
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_a
    :goto_3
    const-string p0, "ModePickerView"

    const-string p1, "DefaultVerticalGestureDetector, onSingleTapUp, can\'t response TouchEvent , isAnimationRunning or View is not visible"

    .line 2535
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
