.class Lcom/oplus/camera/ui/menu/facebeauty/d$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FaceBeautyBaseMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/facebeauty/d;->a(Landroid/view/View;Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/oplus/camera/ui/menu/facebeauty/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/facebeauty/d;Landroid/view/View;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$1;->b:Lcom/oplus/camera/ui/menu/facebeauty/d;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$1;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 425
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 430
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$1;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$1;->a:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
