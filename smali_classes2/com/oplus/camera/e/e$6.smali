.class Lcom/oplus/camera/e/e$6;
.super Lcom/oplus/camera/e/a/a;
.source "OneCameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/e/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/e/e;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/oplus/camera/e/e$6;->a:Lcom/oplus/camera/e/e;

    invoke-direct {p0}, Lcom/oplus/camera/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mZoomStateCallback, onZoomChangeDone, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e$6;->a:Lcom/oplus/camera/e/e;

    iget v1, v1, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needCapture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {p0}, Lcom/oplus/camera/e/e$6;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    .line 561
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/oplus/camera/e/e$6;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->r(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/oplus/camera/e/e$6;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->r(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/e/e$6;->b()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d$e;->a(Z)V

    .line 567
    invoke-virtual {p0}, Lcom/oplus/camera/e/e$6;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 568
    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/e$6;->a(Z)V

    :cond_0
    return-void
.end method
