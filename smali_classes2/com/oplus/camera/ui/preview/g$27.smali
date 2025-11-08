.class Lcom/oplus/camera/ui/preview/g$27;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->aJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 3638
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$27;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 3641
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$27;->a:Lcom/oplus/camera/ui/preview/g;

    .line 3642
    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$27;->a:Lcom/oplus/camera/ui/preview/g;

    .line 3643
    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->ec()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$27;->a:Lcom/oplus/camera/ui/preview/g;

    .line 3644
    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/g$b;->dr()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$27;->a:Lcom/oplus/camera/ui/preview/g;

    .line 3645
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/g;->x()Lcom/oplus/camera/ui/preview/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$27;->a:Lcom/oplus/camera/ui/preview/g;

    .line 3646
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/g;->x()Lcom/oplus/camera/ui/preview/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/h;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$27;->a:Lcom/oplus/camera/ui/preview/g;

    .line 3647
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/g;->x()Lcom/oplus/camera/ui/preview/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/h;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3648
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$27;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->ag(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/widget/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/a;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
