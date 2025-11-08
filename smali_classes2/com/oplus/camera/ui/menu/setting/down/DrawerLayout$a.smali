.class Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)V
    .locals 0

    .line 772
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 773
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$1;)V
    .locals 0

    .line 772
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;-><init>(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 815
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->b:I

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "DrawerLayout"

    const-string v0, "AnimatorListener, onAnimationCancel"

    .line 798
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 801
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 802
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 805
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->e(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;F)V

    .line 807
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->g(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 808
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->g(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->l()V

    .line 811
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "DrawerLayout"

    const-string v0, "AnimatorListener, onAnimationEnd"

    .line 777
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->e(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;F)V

    .line 781
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->g(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 782
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->g(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;->l()V

    .line 785
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "DrawerLayout"

    const-string v0, "AnimatorListener, onAnimationStart"

    .line 790
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;Z)Z

    .line 793
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->a:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$a;->b:I

    invoke-static {p1, p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;I)V

    return-void
.end method
