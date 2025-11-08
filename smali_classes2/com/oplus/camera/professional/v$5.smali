.class Lcom/oplus/camera/professional/v$5;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->onStopTakePicture()Z
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

    .line 2064
    iput-object p1, p0, Lcom/oplus/camera/professional/v$5;->a:Lcom/oplus/camera/professional/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2067
    iget-object v0, p0, Lcom/oplus/camera/professional/v$5;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->K(Lcom/oplus/camera/professional/v;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/v;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/v$5;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->K(Lcom/oplus/camera/professional/v;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oplus/camera/professional/v;->b(Lcom/oplus/camera/professional/v;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2068
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v$5;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->L(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->h()V

    .line 2069
    iget-object v0, p0, Lcom/oplus/camera/professional/v$5;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->M(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->W()V

    .line 2071
    iget-object v0, p0, Lcom/oplus/camera/professional/v$5;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0, v2, v1}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/v;IZ)V

    .line 2072
    iget-object v0, p0, Lcom/oplus/camera/professional/v$5;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->N(Lcom/oplus/camera/professional/v;)V

    .line 2074
    iget-object v0, p0, Lcom/oplus/camera/professional/v$5;->a:Lcom/oplus/camera/professional/v;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2075
    iget-object v0, p0, Lcom/oplus/camera/professional/v$5;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->O(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    const v3, 0x7f100314

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2076
    iget-object v0, p0, Lcom/oplus/camera/professional/v$5;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->d(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/h;->a()V

    .line 2080
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/v$5;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->P(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/v$a;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    invoke-static {v0, v2, v3, v4, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 2081
    iget-object v0, p0, Lcom/oplus/camera/professional/v$5;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0, v2}, Lcom/oplus/camera/professional/v;->d(Lcom/oplus/camera/professional/v;I)V

    .line 2082
    iget-object p0, p0, Lcom/oplus/camera/professional/v$5;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->Q(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->c(ZZ)V

    return-void
.end method
