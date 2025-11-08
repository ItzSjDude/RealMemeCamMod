.class Lcom/oplus/camera/ui/inverse/InverseMaskView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InverseMaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/inverse/InverseMaskView;->a(Lcom/oplus/camera/ui/inverse/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/inverse/InverseMaskView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/inverse/InverseMaskView;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView$3;->a:Lcom/oplus/camera/ui/inverse/InverseMaskView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 403
    iget-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView$3;->a:Lcom/oplus/camera/ui/inverse/InverseMaskView;

    invoke-static {p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->b(Lcom/oplus/camera/ui/inverse/InverseMaskView;)Lcom/oplus/camera/ui/inverse/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 404
    iget-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView$3;->a:Lcom/oplus/camera/ui/inverse/InverseMaskView;

    invoke-static {p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->b(Lcom/oplus/camera/ui/inverse/InverseMaskView;)Lcom/oplus/camera/ui/inverse/b;

    move-result-object v0

    iget v0, v0, Lcom/oplus/camera/ui/inverse/b;->a:I

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a(Lcom/oplus/camera/ui/inverse/InverseMaskView;I)I

    .line 405
    iget-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView$3;->a:Lcom/oplus/camera/ui/inverse/InverseMaskView;

    invoke-static {p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->b(Lcom/oplus/camera/ui/inverse/InverseMaskView;)Lcom/oplus/camera/ui/inverse/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/oplus/camera/ui/inverse/b;->g:Z

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->a(Lcom/oplus/camera/ui/inverse/InverseMaskView;Z)Z

    .line 406
    iget-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView$3;->a:Lcom/oplus/camera/ui/inverse/InverseMaskView;

    invoke-static {p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->b(Lcom/oplus/camera/ui/inverse/InverseMaskView;)Lcom/oplus/camera/ui/inverse/b;

    move-result-object v0

    iget v0, v0, Lcom/oplus/camera/ui/inverse/b;->b:I

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->b(Lcom/oplus/camera/ui/inverse/InverseMaskView;I)I

    .line 407
    iget-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView$3;->a:Lcom/oplus/camera/ui/inverse/InverseMaskView;

    invoke-static {p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->b(Lcom/oplus/camera/ui/inverse/InverseMaskView;)Lcom/oplus/camera/ui/inverse/b;

    move-result-object v0

    iget v0, v0, Lcom/oplus/camera/ui/inverse/b;->c:I

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->c(Lcom/oplus/camera/ui/inverse/InverseMaskView;I)I

    .line 408
    iget-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView$3;->a:Lcom/oplus/camera/ui/inverse/InverseMaskView;

    invoke-static {p1}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->b(Lcom/oplus/camera/ui/inverse/InverseMaskView;)Lcom/oplus/camera/ui/inverse/b;

    move-result-object v0

    iget v0, v0, Lcom/oplus/camera/ui/inverse/b;->c:I

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->d(Lcom/oplus/camera/ui/inverse/InverseMaskView;I)I

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView$3;->a:Lcom/oplus/camera/ui/inverse/InverseMaskView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->e(Lcom/oplus/camera/ui/inverse/InverseMaskView;I)V

    .line 412
    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/InverseMaskView$3;->a:Lcom/oplus/camera/ui/inverse/InverseMaskView;

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->b(Lcom/oplus/camera/ui/inverse/InverseMaskView;Z)Z

    return-void
.end method
