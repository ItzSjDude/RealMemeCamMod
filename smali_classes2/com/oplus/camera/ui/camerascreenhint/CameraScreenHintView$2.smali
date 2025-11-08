.class Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;
.super Ljava/lang/Object;
.source "CameraScreenHintView.java"

# interfaces
.implements Lcom/oplus/camera/ui/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/f;->a(F)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;I)I

    .line 225
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/f;->a(IZ)V

    .line 232
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->j(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 233
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->k(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    const v0, 0x7f0805eb

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/f;->b(I)V

    goto :goto_1

    .line 234
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    const v0, 0x7f0805e9

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/f;->b(I)V

    .line 241
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e()V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 251
    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$2;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/f;->d()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method
