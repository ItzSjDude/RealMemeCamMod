.class Lcom/oplus/camera/panorama/f$11;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Lcom/oplus/camera/ui/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/panorama/f;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/panorama/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/panorama/f;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 671
    iget-object p1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->T(Lcom/oplus/camera/panorama/f;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 672
    iget-object p1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->Q(Lcom/oplus/camera/panorama/f;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->R(Lcom/oplus/camera/panorama/f;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 673
    iget-object p1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->R(Lcom/oplus/camera/panorama/f;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->Q(Lcom/oplus/camera/panorama/f;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    .line 677
    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->S(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    .line 678
    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->U(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    .line 679
    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->V(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result p1

    if-nez p1, :cond_1

    .line 680
    new-instance p1, Lcom/oplus/camera/ui/camerascreenhint/a$a;

    invoke-direct {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;-><init>()V

    iget-object v1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    .line 681
    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->W(Lcom/oplus/camera/panorama/f;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f10029a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Ljava/lang/String;)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    const/4 v1, 0x1

    .line 682
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    .line 683
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->b(Z)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    const v0, 0x7f0805e9

    .line 684
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a(I)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    const v0, 0x7f0604ff

    .line 685
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->b(I)Lcom/oplus/camera/ui/camerascreenhint/a$a;

    move-result-object p1

    .line 686
    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/a$a;->a()Lcom/oplus/camera/ui/camerascreenhint/a;

    move-result-object p1

    .line 687
    iget-object p0, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p0}, Lcom/oplus/camera/panorama/f;->S(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/a;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/a/b;)V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->P(Lcom/oplus/camera/panorama/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/oplus/camera/ui/a/b;->f:Z

    if-eqz p1, :cond_1

    .line 659
    iget-object p1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->Q(Lcom/oplus/camera/panorama/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->R(Lcom/oplus/camera/panorama/f;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->R(Lcom/oplus/camera/panorama/f;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 660
    iget-object p1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->R(Lcom/oplus/camera/panorama/f;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 663
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->Q(Lcom/oplus/camera/panorama/f;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->S(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p1}, Lcom/oplus/camera/panorama/f;->S(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 664
    iget-object p0, p0, Lcom/oplus/camera/panorama/f$11;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p0}, Lcom/oplus/camera/panorama/f;->S(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Z)V

    :cond_1
    return-void
.end method
