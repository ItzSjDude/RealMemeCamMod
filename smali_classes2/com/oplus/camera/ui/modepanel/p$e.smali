.class Lcom/oplus/camera/ui/modepanel/p$e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MoreUIControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/modepanel/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/modepanel/p;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/modepanel/p;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$e;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/modepanel/p;Lcom/oplus/camera/ui/modepanel/p$1;)V
    .locals 0

    .line 665
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/p$e;-><init>(Lcom/oplus/camera/ui/modepanel/p;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p$e;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/p;->j(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/p$b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p$e;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/p;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string p0, "MoreUIControl"

    const-string p1, "MoreViewGestureListener, can\'t respond tap event in mode arranging."

    .line 692
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p$e;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/p;->l(Lcom/oplus/camera/ui/modepanel/p;)I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 698
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p$e;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/modepanel/p;->a(Lcom/oplus/camera/ui/modepanel/p;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    .line 700
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p$e;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/modepanel/p;->b(Lcom/oplus/camera/ui/modepanel/p;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 668
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$e;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/p;->j(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/p$b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 672
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$e;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/p;->i()Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "MoreUIControl"

    if-eqz p1, :cond_1

    const-string p0, "MoreViewGestureListener, can\'t respond tap event in mode arranging."

    .line 673
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const-string p1, "MoreViewGestureListener, onSingleTapUp, go back to last index"

    .line 678
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p$e;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p0}, Lcom/oplus/camera/ui/modepanel/p;->j(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/p$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/modepanel/p$b;->c()V

    return v0
.end method
