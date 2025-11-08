.class Lcom/oplus/camera/s/d$3;
.super Ljava/lang/Object;
.source "StarryMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/s/d;->onAfterPictureTaken([BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/s/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/s/d;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/oplus/camera/s/d$3;->a:Lcom/oplus/camera/s/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/oplus/camera/s/d$3;->a:Lcom/oplus/camera/s/d;

    invoke-static {v0}, Lcom/oplus/camera/s/d;->a(Lcom/oplus/camera/s/d;)Lcom/oplus/camera/s/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/s/d$3;->a:Lcom/oplus/camera/s/d;

    invoke-static {v0}, Lcom/oplus/camera/s/d;->a(Lcom/oplus/camera/s/d;)Lcom/oplus/camera/s/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/s/e;->b()V

    .line 165
    iget-object v0, p0, Lcom/oplus/camera/s/d$3;->a:Lcom/oplus/camera/s/d;

    invoke-static {v0}, Lcom/oplus/camera/s/d;->e(Lcom/oplus/camera/s/d;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/s/d$3;->a:Lcom/oplus/camera/s/d;

    invoke-static {v0}, Lcom/oplus/camera/s/d;->a(Lcom/oplus/camera/s/d;)Lcom/oplus/camera/s/e;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/s/d$3;->a:Lcom/oplus/camera/s/d;

    invoke-virtual {p0}, Lcom/oplus/camera/s/d;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/s/e;->a(Lcom/oplus/camera/ui/control/b;Z)V

    :cond_0
    return-void
.end method
