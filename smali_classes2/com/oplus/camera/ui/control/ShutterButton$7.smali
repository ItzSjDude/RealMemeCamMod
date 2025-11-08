.class Lcom/oplus/camera/ui/control/ShutterButton$7;
.super Lcom/oplus/camera/b/a;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/ShutterButton;->setResIdWithAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/ui/control/ShutterButton;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/ShutterButton;I)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$7;->b:Lcom/oplus/camera/ui/control/ShutterButton;

    iput p2, p0, Lcom/oplus/camera/ui/control/ShutterButton$7;->a:I

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 406
    invoke-super {p0, p1}, Lcom/oplus/camera/b/a;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 407
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$7;->b:Lcom/oplus/camera/ui/control/ShutterButton;

    iget p0, p0, Lcom/oplus/camera/ui/control/ShutterButton$7;->a:I

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/control/ShutterButton;->setImageResource(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 400
    invoke-super {p0, p1}, Lcom/oplus/camera/b/a;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 401
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$7;->b:Lcom/oplus/camera/ui/control/ShutterButton;

    iget p0, p0, Lcom/oplus/camera/ui/control/ShutterButton$7;->a:I

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/control/ShutterButton;->setImageResource(I)V

    return-void
.end method
