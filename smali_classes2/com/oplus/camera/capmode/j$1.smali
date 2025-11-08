.class Lcom/oplus/camera/capmode/j$1;
.super Ljava/lang/Object;
.source "HighDefinitionMode.java"

# interfaces
.implements Lcom/oplus/camera/professional/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/j;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/j;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/j;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 288
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/e/d;->a(FZ)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 272
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/e/d;->a(IZ)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 293
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x1

    invoke-interface {p0, p1, p2, v0}, Lcom/oplus/camera/e/d;->a(JZ)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->l(Z)V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/j;->mbInCapturing:Z

    return p0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/j;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public b(I)V
    .locals 3

    .line 282
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    .line 283
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    const/4 v2, 0x1

    .line 282
    invoke-interface {p0, p1, v0, v1, v2}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/e/d;->c(J)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    invoke-static {v0}, Lcom/oplus/camera/capmode/j;->c(Lcom/oplus/camera/capmode/j;)Lcom/oplus/camera/professional/s;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "pref_high_picture_pro_mode_key"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/j$1;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    invoke-static {p0}, Lcom/oplus/camera/capmode/j;->c(Lcom/oplus/camera/capmode/j;)Lcom/oplus/camera/professional/s;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/s;->a(IZ)V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    invoke-static {p0}, Lcom/oplus/camera/capmode/j;->a(Lcom/oplus/camera/capmode/j;)Z

    move-result p0

    return p0
.end method

.method public c()I
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    invoke-static {p0}, Lcom/oplus/camera/capmode/j;->b(Lcom/oplus/camera/capmode/j;)I

    move-result p0

    return p0
.end method

.method public c(I)V
    .locals 1

    .line 308
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/e/d;->b(IZ)V

    return-void
.end method

.method public d()I
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->p()I

    move-result p0

    return p0
.end method

.method public d(I)V
    .locals 1

    .line 318
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 313
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->i(Z)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 323
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 328
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 333
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    iget-object p0, p0, Lcom/oplus/camera/capmode/j;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->j(Z)V

    return-void
.end method

.method public h()Lcom/oplus/camera/ui/control/b;
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    return-object p0
.end method

.method public i()Z
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/oplus/camera/capmode/j$1;->a:Lcom/oplus/camera/capmode/j;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/j;->isPanelMode()Z

    move-result p0

    return p0
.end method
