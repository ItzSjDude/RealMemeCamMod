.class Lcom/oplus/camera/professional/v$12;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Lcom/oplus/camera/ui/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->onInitCameraMode()V
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

    .line 491
    iput-object p1, p0, Lcom/oplus/camera/professional/v$12;->a:Lcom/oplus/camera/professional/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/oplus/camera/professional/v$12;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->c(Lcom/oplus/camera/professional/v;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object p0, p0, Lcom/oplus/camera/professional/v$12;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->d(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/h;->e()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/oplus/camera/professional/v$12;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Z)V

    if-nez p1, :cond_0

    .line 497
    iget-object p1, p0, Lcom/oplus/camera/professional/v$12;->a:Lcom/oplus/camera/professional/v;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/v;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p1

    const/16 v0, 0xe

    .line 498
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 499
    iget-object p0, p0, Lcom/oplus/camera/professional/v$12;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->b(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    :cond_0
    return-void
.end method
