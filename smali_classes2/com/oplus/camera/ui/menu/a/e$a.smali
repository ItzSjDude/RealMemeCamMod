.class Lcom/oplus/camera/ui/menu/a/e$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ModePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/a/e;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/menu/a/e;)V
    .locals 0

    .line 2438
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/menu/a/e;Lcom/oplus/camera/ui/menu/a/e$1;)V
    .locals 0

    .line 2438
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e$a;-><init>(Lcom/oplus/camera/ui/menu/a/e;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 2442
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v2}, Lcom/oplus/camera/ui/menu/a/e;->g(Lcom/oplus/camera/ui/menu/a/e;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/menu/a/e$e;->p(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2448
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    .line 2449
    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/a/e$e;->Y()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    .line 2450
    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/a/e$e;->Z()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p0, "ModePickerView"

    const-string p1, "DefaultGestureDetector, onSingleTapUp, so return when isCapturingOrVideoRecording or isNoneSatUltraWideAngleChanging"

    .line 2451
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2457
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/a/e;->k()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    .line 2458
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/a/e;->l()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    .line 2459
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/a/e;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    .line 2460
    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/a/e$e;->az()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    .line 2467
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/a/e;->d(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "ModePickerView"

    const-string p1, "DefaultGestureDetector, onSingleTapUp, follow finger can\'t response TouchEvent"

    .line 2468
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2473
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->k(Lcom/oplus/camera/ui/menu/a/e;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2474
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0, v2}, Lcom/oplus/camera/ui/menu/a/e;->c(Lcom/oplus/camera/ui/menu/a/e;Z)Z

    .line 2475
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->l(Lcom/oplus/camera/ui/menu/a/e;)Lcom/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/f;->j()Lcom/a/a/f;

    .line 2478
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 2479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 2480
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v4}, Lcom/oplus/camera/ui/menu/a/e;->m(Lcom/oplus/camera/ui/menu/a/e;)I

    move-result v4

    const/4 v5, 0x3

    .line 2482
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v6}, Lcom/oplus/camera/ui/menu/a/e;->n(Lcom/oplus/camera/ui/menu/a/e;)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 2483
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v4}, Lcom/oplus/camera/ui/menu/a/e;->o(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/screen/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/screen/b/a;->b()I

    move-result v4

    .line 2484
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v5}, Lcom/oplus/camera/ui/menu/a/e;->o(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/screen/b/a;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v6}, Lcom/oplus/camera/ui/menu/a/e;->p(Lcom/oplus/camera/ui/menu/a/e;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oplus/camera/screen/b/a;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/w;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/ui/preview/w;->a()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v0, v5

    goto :goto_0

    :cond_6
    const/4 v5, 0x4

    .line 2485
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v6}, Lcom/oplus/camera/ui/menu/a/e;->n(Lcom/oplus/camera/ui/menu/a/e;)I

    move-result v6

    if-ne v5, v6, :cond_7

    .line 2486
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/a/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0709e5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    :cond_7
    :goto_0
    if-lez v4, :cond_b

    const/4 v5, 0x0

    .line 2491
    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-ltz v5, :cond_b

    int-to-float v5, v4

    .line 2492
    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-gtz v5, :cond_b

    .line 2493
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v0, v4

    invoke-virtual {p1, v0, v3}, Lcom/oplus/camera/ui/menu/a/e;->a(FF)I

    move-result p1

    .line 2494
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->d(Lcom/oplus/camera/ui/menu/a/e;Z)Z

    .line 2496
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->q(Lcom/oplus/camera/ui/menu/a/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-ltz p1, :cond_8

    .line 2498
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v1, p1}, Lcom/oplus/camera/ui/menu/a/e;->b(Lcom/oplus/camera/ui/menu/a/e;I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_8
    :goto_1
    if-ltz p1, :cond_9

    .line 2501
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2502
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/a/e;->g(Lcom/oplus/camera/ui/menu/a/e;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/menu/a/e$e;->o(I)V

    goto :goto_2

    :cond_9
    const/4 v1, -0x2

    if-ne p1, v1, :cond_a

    .line 2503
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 2504
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$a;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/a/e;->j(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/e$e;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/a/e$e;->ay()V

    .line 2506
    :cond_a
    :goto_2
    monitor-exit v0

    return v2

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2511
    :cond_b
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_c
    :goto_4
    const-string p0, "ModePickerView"

    const-string p1, "DefaultGestureDetector, onSingleTapUp, can\'t response TouchEvent , isAnimationRunning or View is not visible"

    .line 2461
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_d
    :goto_5
    const-string p0, "ModePickerView"

    const-string p1, "DefaultGestureDetector, onSingleTapUp, can\'t response TouchEvent."

    .line 2443
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
