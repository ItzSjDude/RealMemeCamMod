.class Lcom/oplus/camera/ui/d$74;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->E(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;Z)V
    .locals 0

    .line 14049
    iput-object p1, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    iput-boolean p2, p0, Lcom/oplus/camera/ui/d$74;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 14069
    iget-object p1, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14070
    iget-object p0, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->setAnimationState(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 14052
    iget-object p1, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 14053
    iget-object p1, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/oplus/camera/timelapsepro/g;->setVisibility(I)V

    .line 14054
    iget-object p1, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/oplus/camera/timelapsepro/g;->setTranslationY(F)V

    .line 14055
    iget-object p1, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/timelapsepro/g;->setTranslationX(F)V

    .line 14056
    iget-object p1, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/timelapsepro/g;->setAlpha(F)V

    .line 14057
    iget-object p1, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/g;->setAnimationState(Z)V

    .line 14059
    iget-boolean p1, p0, Lcom/oplus/camera/ui/d$74;->a:Z

    if-nez p1, :cond_0

    .line 14060
    iget-object p1, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/g;->e()V

    .line 14064
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/d;->l(Lcom/oplus/camera/ui/d;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 14076
    iget-object p1, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14077
    iget-object p1, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/g;->setAnimationState(Z)V

    .line 14078
    iget-object p1, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/g;->setVisibility(I)V

    .line 14079
    iget-object p1, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/g;->setTranslationY(F)V

    .line 14080
    iget-object p1, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/g;->setTranslationX(F)V

    .line 14081
    iget-object p0, p0, Lcom/oplus/camera/ui/d$74;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->setAlpha(F)V

    :cond_0
    return-void
.end method
