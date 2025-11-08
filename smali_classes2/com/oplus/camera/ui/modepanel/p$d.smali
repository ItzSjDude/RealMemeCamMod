.class Lcom/oplus/camera/ui/modepanel/p$d;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MoreUIControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/modepanel/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/modepanel/p;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/modepanel/p;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$d;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/modepanel/p;Lcom/oplus/camera/ui/modepanel/p$1;)V
    .locals 0

    .line 527
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/p$d;-><init>(Lcom/oplus/camera/ui/modepanel/p;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p$d;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/p;->j(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/p$b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p$d;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/p;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "MoreUIControl"

    const-string p1, "onFling, don\'t response fling when mode arranging."

    .line 560
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 565
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/p$d;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {v1}, Lcom/oplus/camera/ui/modepanel/p;->l(Lcom/oplus/camera/ui/modepanel/p;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 566
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p$d;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/modepanel/p;->a(Lcom/oplus/camera/ui/modepanel/p;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    .line 568
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p$d;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/modepanel/p;->b(Lcom/oplus/camera/ui/modepanel/p;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5

    .line 574
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p$d;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/p;->k(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/p$d;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {v1}, Lcom/oplus/camera/ui/modepanel/p;->k(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    if-eqz v0, :cond_0

    .line 578
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/p$d;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {v2}, Lcom/oplus/camera/ui/modepanel/p;->m(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/h;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/modepanel/h;->a(Z)V

    .line 579
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/p$d;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {v2}, Lcom/oplus/camera/ui/modepanel/p;->b(Lcom/oplus/camera/ui/modepanel/p;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "mode_arrange_reddot_show"

    .line 580
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 583
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/p$d;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {v2}, Lcom/oplus/camera/ui/modepanel/p;->d(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/f;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p$d;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p0}, Lcom/oplus/camera/ui/modepanel/p;->k(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    move-result-object p0

    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 530
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p$d;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/p;->j(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/p$b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p$d;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/p;->i()Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "MoreUIControl"

    if-eqz v0, :cond_1

    const-string p0, "MoreMenuGestureListener, can\'t respond tap event in mode arranging."

    .line 535
    invoke-static {v3, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p$d;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/p;->k(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v4, p1}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "MoreMenuGestureListener, onSingleTapUp, no item clicked,go back to last index"

    .line 543
    invoke-static {v3, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p$d;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p0}, Lcom/oplus/camera/ui/modepanel/p;->j(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/p$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/modepanel/p$b;->c()V

    return v2

    :cond_2
    return v1
.end method
