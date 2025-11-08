.class public Lcom/oplus/camera/filmvideomode/q$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FilmUIControlV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/filmvideomode/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/filmvideomode/q;


# direct methods
.method protected constructor <init>(Lcom/oplus/camera/filmvideomode/q;)V
    .locals 0

    .line 887
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/q$a;->a:Lcom/oplus/camera/filmvideomode/q;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 901
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 903
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q$a;->a:Lcom/oplus/camera/filmvideomode/q;

    invoke-static {p1}, Lcom/oplus/camera/filmvideomode/q;->a(Lcom/oplus/camera/filmvideomode/q;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 904
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q$a;->a:Lcom/oplus/camera/filmvideomode/q;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/q;->g(Z)V

    .line 905
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q$a;->a:Lcom/oplus/camera/filmvideomode/q;

    iget-object p1, p1, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 906
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q$a;->a:Lcom/oplus/camera/filmvideomode/q;

    iget-object p1, p1, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q$a;->a:Lcom/oplus/camera/filmvideomode/q;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {p1, p0, v0}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;I)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 890
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q$a;->a:Lcom/oplus/camera/filmvideomode/q;

    invoke-static {p1}, Lcom/oplus/camera/filmvideomode/q;->a(Lcom/oplus/camera/filmvideomode/q;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 891
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q$a;->a:Lcom/oplus/camera/filmvideomode/q;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/q;->g(Z)V

    .line 892
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q$a;->a:Lcom/oplus/camera/filmvideomode/q;

    iget-object p1, p1, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    .line 893
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/q$a;->a:Lcom/oplus/camera/filmvideomode/q;

    iget-object p1, p1, Lcom/oplus/camera/filmvideomode/q;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q$a;->a:Lcom/oplus/camera/filmvideomode/q;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {p1, p0, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;I)V

    :cond_0
    return v0
.end method
