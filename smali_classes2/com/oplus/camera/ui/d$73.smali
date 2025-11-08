.class Lcom/oplus/camera/ui/d$73;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->aN(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 13976
    iput-object p1, p0, Lcom/oplus/camera/ui/d$73;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 13986
    iget-object p1, p0, Lcom/oplus/camera/ui/d$73;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13987
    iget-object p0, p0, Lcom/oplus/camera/ui/d$73;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->setAnimationState(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 1

    .line 13993
    iget-object p1, p0, Lcom/oplus/camera/ui/d$73;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 13994
    iget-object p1, p0, Lcom/oplus/camera/ui/d$73;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/g;->setAlpha(F)V

    .line 13995
    iget-object p1, p0, Lcom/oplus/camera/ui/d$73;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/g;->setTranslationY(F)V

    .line 13996
    iget-object p1, p0, Lcom/oplus/camera/ui/d$73;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/g;->setTranslationX(F)V

    .line 13997
    iget-object p1, p0, Lcom/oplus/camera/ui/d$73;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oplus/camera/timelapsepro/g;->setVisibility(I)V

    .line 13998
    iget-object p1, p0, Lcom/oplus/camera/ui/d$73;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oplus/camera/timelapsepro/g;->setAnimationState(Z)V

    .line 14001
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/d$73;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0, p2}, Lcom/oplus/camera/ui/d;->l(Lcom/oplus/camera/ui/d;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 13979
    iget-object p1, p0, Lcom/oplus/camera/ui/d$73;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13980
    iget-object p0, p0, Lcom/oplus/camera/ui/d$73;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->C(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/g;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->setAnimationState(Z)V

    :cond_0
    return-void
.end method
