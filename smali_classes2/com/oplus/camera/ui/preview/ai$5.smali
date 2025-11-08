.class Lcom/oplus/camera/ui/preview/ai$5;
.super Ljava/lang/Object;
.source "ZoomSeekBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/ai;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/ai;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/ai;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ai$5;->a:Lcom/oplus/camera/ui/preview/ai;

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

    .line 639
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ai$5;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/ai;->a(Lcom/oplus/camera/ui/preview/ai;)Lcom/oplus/camera/ui/b$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/b$a;->h()V

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
