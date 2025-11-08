.class Lcom/oplus/camera/photo3d/b$1;
.super Ljava/lang/Object;
.source "ThreeDPhotoManager.java"

# interfaces
.implements Lcom/b/a/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/photo3d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/oplus/camera/photo3d/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/photo3d/b;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/oplus/camera/photo3d/b$1;->b:Lcom/oplus/camera/photo3d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Surface;)V
    .locals 3

    .line 297
    sget-object p1, Lcom/oplus/camera/photo3d/b$1;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRenderStart, mbPortraitDirection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/b$1;->b:Lcom/oplus/camera/photo3d/b;

    invoke-static {v1}, Lcom/oplus/camera/photo3d/b;->j(Lcom/oplus/camera/photo3d/b;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbMainObjectOnRight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/b$1;->b:Lcom/oplus/camera/photo3d/b;

    .line 298
    invoke-static {v1}, Lcom/oplus/camera/photo3d/b;->k(Lcom/oplus/camera/photo3d/b;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lcom/oplus/camera/photo3d/b$1;->b:Lcom/oplus/camera/photo3d/b;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/b;->e(Lcom/oplus/camera/photo3d/b;)Lcom/b/a/h;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/photo3d/b$1;->b:Lcom/oplus/camera/photo3d/b;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/b;->l(Lcom/oplus/camera/photo3d/b;)Lcom/b/a/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/photo3d/b$1;->b:Lcom/oplus/camera/photo3d/b;

    invoke-static {v1}, Lcom/oplus/camera/photo3d/b;->j(Lcom/oplus/camera/photo3d/b;)Z

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/photo3d/b$1;->b:Lcom/oplus/camera/photo3d/b;

    invoke-static {v2}, Lcom/oplus/camera/photo3d/b;->m(Lcom/oplus/camera/photo3d/b;)Lcom/b/a/a/a;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/b/a/h;->a(Lcom/b/a/a/d;ZLcom/b/a/a/a;)Lcom/b/a/a/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 303
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b$1;->b:Lcom/oplus/camera/photo3d/b;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/b;->n(Lcom/oplus/camera/photo3d/b;)Lcom/b/a/a/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/b/a/a/e;->a(Lcom/b/a/a/j;)Lcom/b/a/a/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/a/a/e;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/b/a/a/e;)V
    .locals 0

    .line 314
    sget-object p0, Lcom/oplus/camera/photo3d/b$1;->a:Ljava/lang/String;

    const-string p1, "onAnimationStart"

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/view/Surface;)V
    .locals 0

    .line 309
    sget-object p0, Lcom/oplus/camera/photo3d/b$1;->a:Ljava/lang/String;

    const-string p1, "onRenderFinish"

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/b/a/a/e;)V
    .locals 1

    .line 319
    sget-object p1, Lcom/oplus/camera/photo3d/b$1;->a:Ljava/lang/String;

    const-string v0, "onAnimationComplete"

    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b$1;->b:Lcom/oplus/camera/photo3d/b;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/b;->o(Lcom/oplus/camera/photo3d/b;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public c(Lcom/b/a/a/e;)V
    .locals 0

    .line 326
    sget-object p0, Lcom/oplus/camera/photo3d/b$1;->a:Ljava/lang/String;

    const-string p1, "onAnimationFinish"

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
