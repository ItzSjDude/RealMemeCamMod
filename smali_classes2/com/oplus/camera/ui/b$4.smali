.class Lcom/oplus/camera/ui/b$4;
.super Ljava/lang/Object;
.source "CameraSeekBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/b;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/oplus/camera/ui/b$4;->a:Lcom/oplus/camera/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/oplus/camera/ui/b$4;->a:Lcom/oplus/camera/ui/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->k()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/oplus/camera/ui/b$4;->a:Lcom/oplus/camera/ui/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->k()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/oplus/camera/ui/b$4;->a:Lcom/oplus/camera/ui/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/b;->k()V

    return-void
.end method
