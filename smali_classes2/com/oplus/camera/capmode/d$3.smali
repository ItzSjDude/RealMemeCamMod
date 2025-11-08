.class Lcom/oplus/camera/capmode/d$3;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/d;->updateMonoFilterEffect(Landroid/hardware/camera2/CaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/oplus/camera/capmode/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/d;[I)V
    .locals 0

    .line 3656
    iput-object p1, p0, Lcom/oplus/camera/capmode/d$3;->b:Lcom/oplus/camera/capmode/d;

    iput-object p2, p0, Lcom/oplus/camera/capmode/d$3;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3659
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$3;->b:Lcom/oplus/camera/capmode/d;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 3663
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$3;->a:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/d$3;->b:Lcom/oplus/camera/capmode/d;

    .line 3665
    invoke-virtual {v0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/d;->isMonoIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3666
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$3;->b:Lcom/oplus/camera/capmode/d;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d$3;->a:[I

    const/4 v1, 0x0

    aget p0, p0, v1

    invoke-static {v0, p0}, Lcom/oplus/camera/capmode/d;->access$1600(Lcom/oplus/camera/capmode/d;I)V

    :cond_1
    return-void
.end method
