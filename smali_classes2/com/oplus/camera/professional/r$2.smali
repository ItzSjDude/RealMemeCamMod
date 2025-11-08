.class Lcom/oplus/camera/professional/r$2;
.super Ljava/lang/Object;
.source "ProMenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/r;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/r;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/r;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/oplus/camera/professional/r$2;->a:Lcom/oplus/camera/professional/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/oplus/camera/professional/r$2;->a:Lcom/oplus/camera/professional/r;

    iget-object v0, v0, Lcom/oplus/camera/professional/r;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {v0}, Lcom/oplus/camera/professional/r$b;->h()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lcom/oplus/camera/professional/r$2;->a:Lcom/oplus/camera/professional/r;

    invoke-static {v1}, Lcom/oplus/camera/professional/r;->a(Lcom/oplus/camera/professional/r;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/professional/r$2;->a:Lcom/oplus/camera/professional/r;

    iget-object v1, v1, Lcom/oplus/camera/professional/r;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result v1

    if-nez v1, :cond_0

    .line 659
    iget-object p0, p0, Lcom/oplus/camera/professional/r$2;->a:Lcom/oplus/camera/professional/r;

    iget-object p0, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    :cond_0
    return-void
.end method
