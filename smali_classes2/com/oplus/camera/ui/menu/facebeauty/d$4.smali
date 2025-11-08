.class Lcom/oplus/camera/ui/menu/facebeauty/d$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FaceBeautyBaseMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/facebeauty/d;->c(Landroid/view/View;Z)Landroid/animation/Animator;
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

    .line 524
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$4;->b:Lcom/oplus/camera/ui/menu/facebeauty/d;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$4;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 534
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$4;->b:Lcom/oplus/camera/ui/menu/facebeauty/d;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/oplus/camera/ui/menu/facebeauty/d;->k:Z

    .line 535
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$4;->a:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 528
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$4;->b:Lcom/oplus/camera/ui/menu/facebeauty/d;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/oplus/camera/ui/menu/facebeauty/d;->k:Z

    .line 529
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$4;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
