.class Lcom/oplus/camera/ui/preview/u$1;
.super Ljava/lang/Object;
.source "PIAISceneUI.java"

# interfaces
.implements Lcom/oplus/camera/ui/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/u;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/u;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/u$1;->a:Lcom/oplus/camera/ui/preview/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u$1;->a:Lcom/oplus/camera/ui/preview/u;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/u;->a(Lcom/oplus/camera/ui/preview/u;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u$1;->a:Lcom/oplus/camera/ui/preview/u;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/u;->a(Lcom/oplus/camera/ui/preview/u;)Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u$1;->a:Lcom/oplus/camera/ui/preview/u;

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/preview/u;->a(Lcom/oplus/camera/ui/preview/u;I)I

    .line 240
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u$1;->a:Lcom/oplus/camera/ui/preview/u;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/u;->f(I)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u$1;->a:Lcom/oplus/camera/ui/preview/u;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/u;->a(Lcom/oplus/camera/ui/preview/u;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u$1;->a:Lcom/oplus/camera/ui/preview/u;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/u;->a(Lcom/oplus/camera/ui/preview/u;)Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
