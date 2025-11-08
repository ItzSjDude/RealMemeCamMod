.class Lcom/oplus/camera/filmvideomode/b$2;
.super Lcom/oplus/camera/b/a;
.source "FilmAnimatorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/filmvideomode/b;->b(Lcom/oplus/camera/filmvideomode/k;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/filmvideomode/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/filmvideomode/k;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/b$2;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/b$2;->a:Lcom/oplus/camera/filmvideomode/k;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/k;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/b$2;->a:Lcom/oplus/camera/filmvideomode/k;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/k;->setVisibility(I)V

    return-void
.end method
