.class Lcom/oplus/camera/e/e$5;
.super Lcom/oplus/camera/c/a;
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

    .line 545
    iput-object p1, p0, Lcom/oplus/camera/e/e$5;->a:Lcom/oplus/camera/e/e;

    invoke-direct {p0}, Lcom/oplus/camera/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApertureControllerCallback, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e$5;->a:Lcom/oplus/camera/e/e;

    iget v1, v1, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", onApertureSwitchDone, needCapture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {p0}, Lcom/oplus/camera/e/e$5;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    .line 548
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/oplus/camera/e/e$5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/e/e$5;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->o(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 552
    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/e$5;->a(Z)V

    .line 553
    iget-object v0, p0, Lcom/oplus/camera/e/e$5;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->p(Lcom/oplus/camera/e/e;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/e/e$5;->a:Lcom/oplus/camera/e/e;

    invoke-static {v2}, Lcom/oplus/camera/e/e;->q(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/c;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/camera/e/e$5;->a:Lcom/oplus/camera/e/e;

    invoke-static {p0}, Lcom/oplus/camera/e/e;->o(Lcom/oplus/camera/e/e;)Lcom/oplus/camera/e/d$a;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/oplus/camera/e/e;->a(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V

    :cond_0
    return-void
.end method
