.class Lcom/oplus/camera/ag$7;
.super Lcom/oplus/camera/b/a;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ag;->O()V
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

    .line 1702
    iput-object p1, p0, Lcom/oplus/camera/ag$7;->a:Lcom/oplus/camera/ag;

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1713
    iget-object p1, p0, Lcom/oplus/camera/ag$7;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1714
    iget-object p1, p0, Lcom/oplus/camera/ag$7;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/ai;->setVisibility(I)V

    .line 1715
    iget-object p0, p0, Lcom/oplus/camera/ag$7;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ai;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1705
    iget-object p1, p0, Lcom/oplus/camera/ag$7;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1706
    iget-object p1, p0, Lcom/oplus/camera/ag$7;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/ai;->setVisibility(I)V

    .line 1707
    iget-object p0, p0, Lcom/oplus/camera/ag$7;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ai;->setAlpha(F)V

    :cond_0
    return-void
.end method
