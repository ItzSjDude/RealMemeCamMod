.class Lcom/oplus/camera/ui/x$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZoomClickChangeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/x;->a(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/x;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/x;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/oplus/camera/ui/x$1;->a:Lcom/oplus/camera/ui/x;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/oplus/camera/ui/x$1;->a:Lcom/oplus/camera/ui/x;

    invoke-static {p1}, Lcom/oplus/camera/ui/x;->a(Lcom/oplus/camera/ui/x;)Lcom/oplus/camera/ui/x$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/oplus/camera/ui/x$1;->a:Lcom/oplus/camera/ui/x;

    invoke-static {p1}, Lcom/oplus/camera/ui/x;->a(Lcom/oplus/camera/ui/x;)Lcom/oplus/camera/ui/x$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/x$a;->b()V

    .line 165
    iget-object p0, p0, Lcom/oplus/camera/ui/x$1;->a:Lcom/oplus/camera/ui/x;

    invoke-static {p0}, Lcom/oplus/camera/ui/x;->a(Lcom/oplus/camera/ui/x;)Lcom/oplus/camera/ui/x$a;

    move-result-object p0

    const/high16 p1, -0x40800000    # -1.0f

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/x$a;->b(F)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 171
    iget-object p1, p0, Lcom/oplus/camera/ui/x$1;->a:Lcom/oplus/camera/ui/x;

    invoke-static {p1}, Lcom/oplus/camera/ui/x;->a(Lcom/oplus/camera/ui/x;)Lcom/oplus/camera/ui/x$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/oplus/camera/ui/x$1;->a:Lcom/oplus/camera/ui/x;

    invoke-static {p1}, Lcom/oplus/camera/ui/x;->a(Lcom/oplus/camera/ui/x;)Lcom/oplus/camera/ui/x$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/x$a;->b()V

    .line 173
    iget-object p0, p0, Lcom/oplus/camera/ui/x$1;->a:Lcom/oplus/camera/ui/x;

    invoke-static {p0}, Lcom/oplus/camera/ui/x;->a(Lcom/oplus/camera/ui/x;)Lcom/oplus/camera/ui/x$a;

    move-result-object p0

    const/high16 p1, -0x40800000    # -1.0f

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/x$a;->b(F)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
