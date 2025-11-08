.class Lcom/oplus/camera/ui/menu/facebeauty/d$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FaceBeautyBaseMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/facebeauty/d;->b(Landroid/view/View;Z)Landroid/animation/Animator;
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

    .line 477
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$3;->b:Lcom/oplus/camera/ui/menu/facebeauty/d;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$3;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 485
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$3;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$3;->a:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 487
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$3;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$3;->a:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
