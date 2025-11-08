.class public final Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;
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
    name = "PopUpFadeOutAnimationListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;


# direct methods
.method protected constructor <init>(Lcom/oplus/camera/ui/menu/BasicOptionItemList;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 480
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(ZZ)V

    .line 481
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setVisibility(I)V

    .line 482
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b(Lcom/oplus/camera/ui/menu/BasicOptionItemList;Z)Z

    .line 484
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object p1, p1, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    if-eqz p1, :cond_0

    .line 485
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object p1, p1, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/g;->c(Ljava/lang/String;)V

    .line 488
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object p1, p1, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->u:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OnPopUpFadeOutAnimationStartListener;

    if-eqz p1, :cond_1

    .line 489
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->u:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OnPopUpFadeOutAnimationStartListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList$OnPopUpFadeOutAnimationStartListener;->onPopUpFadeOutAnimationEnd()V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 500
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(ZZ)V

    .line 501
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->b(Lcom/oplus/camera/ui/menu/BasicOptionItemList;Z)Z

    .line 502
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(Lcom/oplus/camera/ui/menu/BasicOptionItemList;Z)Z

    .line 504
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object p1, p1, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    if-eqz p1, :cond_0

    .line 505
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object p1, p1, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$PopUpFadeOutAnimationListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->c(Lcom/oplus/camera/ui/menu/BasicOptionItemList;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/oplus/camera/ui/menu/g;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
