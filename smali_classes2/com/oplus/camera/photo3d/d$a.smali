.class Lcom/oplus/camera/photo3d/d$a;
.super Ljava/lang/Object;
.source "ThreeDVideoHelper.java"

# interfaces
.implements Lcom/oplus/camera/capmode/x$d;
.implements Lcom/oplus/camera/capmode/x$f;
.implements Lcom/oplus/camera/capmode/x$g;
.implements Lcom/oplus/camera/capmode/x$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/photo3d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/photo3d/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/photo3d/d;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/oplus/camera/photo3d/d$a;->a:Lcom/oplus/camera/photo3d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Surface;)V
    .locals 2

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEncodeSurfaceCreated, surface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThreeDVideoHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/oplus/camera/photo3d/d$a;->a:Lcom/oplus/camera/photo3d/d;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/d;->c(Lcom/oplus/camera/photo3d/d;)Lcom/oplus/camera/photo3d/d$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object p0, p0, Lcom/oplus/camera/photo3d/d$a;->a:Lcom/oplus/camera/photo3d/d;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/d;->c(Lcom/oplus/camera/photo3d/d;)Lcom/oplus/camera/photo3d/d$b;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/photo3d/d$b;->a(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Object;II)V
    .locals 0

    .line 375
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onError, what: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ThreeDVideoHelper"

    invoke-static {p3, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object p1, p0, Lcom/oplus/camera/photo3d/d$a;->a:Lcom/oplus/camera/photo3d/d;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/d;->b(Lcom/oplus/camera/photo3d/d;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/oplus/camera/photo3d/d$a$2;

    invoke-direct {p3, p0, p2}, Lcom/oplus/camera/photo3d/d$a$2;-><init>(Lcom/oplus/camera/photo3d/d$a;I)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onException(I)V
    .locals 2

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onException, exceptionCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThreeDVideoHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/oplus/camera/photo3d/d$a;->a:Lcom/oplus/camera/photo3d/d;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/d;->b(Lcom/oplus/camera/photo3d/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/photo3d/d$a$3;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/photo3d/d$a$3;-><init>(Lcom/oplus/camera/photo3d/d$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInfo(Ljava/lang/Object;II)V
    .locals 0

    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onInfo, what: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ThreeDVideoHelper"

    invoke-static {p3, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object p1, p0, Lcom/oplus/camera/photo3d/d$a;->a:Lcom/oplus/camera/photo3d/d;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/d;->b(Lcom/oplus/camera/photo3d/d;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/oplus/camera/photo3d/d$a$1;

    invoke-direct {p3, p0, p2}, Lcom/oplus/camera/photo3d/d$a$1;-><init>(Lcom/oplus/camera/photo3d/d$a;I)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
