.class Lcom/oplus/camera/ui/d$41;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->z(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 8185
    iput-object p1, p0, Lcom/oplus/camera/ui/d$41;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 8188
    iget-object p1, p0, Lcom/oplus/camera/ui/d$41;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8189
    iget-object p1, p0, Lcom/oplus/camera/ui/d$41;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setTranslationY(F)V

    .line 8190
    iget-object p1, p0, Lcom/oplus/camera/ui/d$41;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setTranslationX(F)V

    .line 8191
    iget-object p1, p0, Lcom/oplus/camera/ui/d$41;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setAlpha(F)V

    .line 8192
    iget-object p1, p0, Lcom/oplus/camera/ui/d$41;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setVisibility(I)V

    .line 8193
    iget-object p0, p0, Lcom/oplus/camera/ui/d$41;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->af(Lcom/oplus/camera/ui/d;)V

    :cond_0
    return-void
.end method
