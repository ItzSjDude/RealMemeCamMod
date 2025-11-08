.class Lcom/oplus/camera/professional/v$4;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->onCaptureSequenceCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v;)V
    .locals 0

    .line 2036
    iput-object p1, p0, Lcom/oplus/camera/professional/v$4;->a:Lcom/oplus/camera/professional/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2039
    iget-object v0, p0, Lcom/oplus/camera/professional/v$4;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->H(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v1}, Lcom/oplus/camera/ui/control/b;-><init>()V

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 2040
    iget-object v0, p0, Lcom/oplus/camera/professional/v$4;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->I(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 2042
    iget-object v0, p0, Lcom/oplus/camera/professional/v$4;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->J(Lcom/oplus/camera/professional/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2046
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v$4;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->d(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2047
    iget-object p0, p0, Lcom/oplus/camera/professional/v$4;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->d(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/h;->f()V

    :cond_1
    return-void
.end method
