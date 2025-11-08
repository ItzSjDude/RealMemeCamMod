.class Lcom/oplus/camera/ui/preview/r$2;
.super Ljava/lang/Object;
.source "GuideLineView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/r;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/r;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/r;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/r$2;->a:Lcom/oplus/camera/ui/preview/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/r$2;->a:Lcom/oplus/camera/ui/preview/r;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/r;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
