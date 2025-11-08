.class public final Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;
.super Ljava/lang/Object;
.source "BasicOptionItemList.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/BasicOptionItemList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "PopUpFadeInAnimationListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;


# direct methods
.method protected constructor <init>(Lcom/oplus/camera/ui/menu/BasicOptionItemList;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 448
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(ZZ)V

    .line 450
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 451
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object p1, p1, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    if-eqz p1, :cond_0

    .line 452
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object p1, p1, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/g;->b(Ljava/lang/String;)V

    .line 455
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object p1, p1, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->x:Landroid/view/animation/AnimationSet;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b(Lcom/oplus/camera/ui/menu/BasicOptionItemList;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 456
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->x:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 468
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(ZZ)V

    .line 469
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(Lcom/oplus/camera/ui/menu/BasicOptionItemList;Z)Z

    .line 471
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object p1, p1, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b(Lcom/oplus/camera/ui/menu/BasicOptionItemList;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 472
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeInAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/g;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
