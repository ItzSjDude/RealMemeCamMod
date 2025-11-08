.class Lcom/oplus/camera/ag$21;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ag;->m(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ag;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ag;)V
    .locals 0

    .line 1135
    iput-object p1, p0, Lcom/oplus/camera/ag$21;->a:Lcom/oplus/camera/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1143
    iget-object p0, p0, Lcom/oplus/camera/ag$21;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->r(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
