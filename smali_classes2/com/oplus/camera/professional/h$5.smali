.class Lcom/oplus/camera/professional/h$5;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->onStopTakePicture()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/h;)V
    .locals 0

    .line 1938
    iput-object p1, p0, Lcom/oplus/camera/professional/h$5;->a:Lcom/oplus/camera/professional/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1941
    iget-object v0, p0, Lcom/oplus/camera/professional/h$5;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->E(Lcom/oplus/camera/professional/h;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/h$5;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->E(Lcom/oplus/camera/professional/h;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/professional/h;->b(Lcom/oplus/camera/professional/h;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1942
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h$5;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->F(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->h()V

    .line 1943
    iget-object v0, p0, Lcom/oplus/camera/professional/h$5;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->G(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->W()V

    .line 1944
    iget-object v0, p0, Lcom/oplus/camera/professional/h$5;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->H(Lcom/oplus/camera/professional/h;)V

    .line 1946
    iget-object v0, p0, Lcom/oplus/camera/professional/h$5;->a:Lcom/oplus/camera/professional/h;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1947
    iget-object v0, p0, Lcom/oplus/camera/professional/h$5;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->I(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    const v1, 0x7f100314

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 1948
    iget-object v0, p0, Lcom/oplus/camera/professional/h$5;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->d(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/h;->a()V

    .line 1951
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/h$5;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->w(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/g;->e()V

    .line 1952
    iget-object v0, p0, Lcom/oplus/camera/professional/h$5;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->a()V

    .line 1953
    iget-object v0, p0, Lcom/oplus/camera/professional/h$5;->a:Lcom/oplus/camera/professional/h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;IZ)V

    .line 1954
    iget-object v0, p0, Lcom/oplus/camera/professional/h$5;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->J(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/h$a;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    invoke-static {v0, v2, v3, v4, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 1955
    iget-object v0, p0, Lcom/oplus/camera/professional/h$5;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0, v2}, Lcom/oplus/camera/professional/h;->d(Lcom/oplus/camera/professional/h;I)V

    .line 1956
    iget-object p0, p0, Lcom/oplus/camera/professional/h$5;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p0}, Lcom/oplus/camera/professional/h;->K(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->c(ZZ)V

    return-void
.end method
