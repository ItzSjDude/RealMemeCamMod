.class Lcom/oplus/camera/ui/f$1;
.super Ljava/lang/Object;
.source "CompoundHintView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/f;->a(Landroid/view/animation/Animation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/f;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/oplus/camera/ui/f$1;->a:Lcom/oplus/camera/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 236
    iget-object p1, p0, Lcom/oplus/camera/ui/f$1;->a:Lcom/oplus/camera/ui/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/f;->a(Lcom/oplus/camera/ui/f;Z)Z

    .line 237
    iget-object p0, p0, Lcom/oplus/camera/ui/f$1;->a:Lcom/oplus/camera/ui/f;

    invoke-static {p0}, Lcom/oplus/camera/ui/f;->a(Lcom/oplus/camera/ui/f;)Lcom/oplus/camera/ui/menu/OplusTextView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/oplus/camera/ui/f$1;->a:Lcom/oplus/camera/ui/f;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/f;->a(Lcom/oplus/camera/ui/f;Z)Z

    return-void
.end method
