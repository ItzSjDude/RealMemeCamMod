.class Lcom/oplus/camera/ui/preview/q$1;
.super Ljava/lang/Object;
.source "GradienterView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/q;->setVisibilityWithAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/ui/preview/q;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/q;I)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/q$1;->b:Lcom/oplus/camera/ui/preview/q;

    iput p2, p0, Lcom/oplus/camera/ui/preview/q$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 188
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/q$1;->b:Lcom/oplus/camera/ui/preview/q;

    iget v0, p0, Lcom/oplus/camera/ui/preview/q$1;->a:I

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/q;->setVisibility(I)V

    .line 189
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/q$1;->b:Lcom/oplus/camera/ui/preview/q;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/preview/q;->a(Lcom/oplus/camera/ui/preview/q;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/q$1;->b:Lcom/oplus/camera/ui/preview/q;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/preview/q;->a(Lcom/oplus/camera/ui/preview/q;Z)Z

    return-void
.end method
