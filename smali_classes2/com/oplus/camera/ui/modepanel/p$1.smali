.class Lcom/oplus/camera/ui/modepanel/p$1;
.super Ljava/lang/Object;
.source "MoreUIControl.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/modepanel/p;->i(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/modepanel/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/modepanel/p;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$1;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 174
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$1;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/p;->a(Lcom/oplus/camera/ui/modepanel/p;)Landroid/view/GestureDetector;

    move-result-object p1

    if-nez p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$1;->a:Lcom/oplus/camera/ui/modepanel/p;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/p;->b(Lcom/oplus/camera/ui/modepanel/p;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/oplus/camera/ui/modepanel/p$d;

    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/p$1;->a:Lcom/oplus/camera/ui/modepanel/p;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/oplus/camera/ui/modepanel/p$d;-><init>(Lcom/oplus/camera/ui/modepanel/p;Lcom/oplus/camera/ui/modepanel/p$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/modepanel/p;->a(Lcom/oplus/camera/ui/modepanel/p;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;

    :cond_0
    const/4 p1, 0x0

    .line 178
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 179
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v0, v1, :cond_1

    return p1

    .line 183
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$1;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/p;->c(Lcom/oplus/camera/ui/modepanel/p;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    .line 184
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$1;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/p;->d(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/modepanel/f;->a()Z

    move-result p1

    .line 185
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/p$1;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {v1}, Lcom/oplus/camera/ui/modepanel/p;->d(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/f;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/oplus/camera/ui/modepanel/f;->a(Landroid/view/MotionEvent;)V

    if-eqz p1, :cond_2

    .line 187
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne v0, p1, :cond_2

    return v0

    .line 191
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p$1;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p0}, Lcom/oplus/camera/ui/modepanel/p;->a(Lcom/oplus/camera/ui/modepanel/p;)Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
