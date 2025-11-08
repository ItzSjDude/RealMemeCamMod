.class Lcom/oplus/camera/s/d$1;
.super Ljava/lang/Object;
.source "StarryMode.java"

# interfaces
.implements Lcom/oplus/camera/s/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/s/d;->onInitCameraMode()V
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

    .line 68
    iput-object p1, p0, Lcom/oplus/camera/s/d$1;->a:Lcom/oplus/camera/s/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/oplus/camera/s/d$1;->a:Lcom/oplus/camera/s/d;

    invoke-static {v0}, Lcom/oplus/camera/s/d;->a(Lcom/oplus/camera/s/d;)Lcom/oplus/camera/s/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/s/d$1;->a:Lcom/oplus/camera/s/d;

    invoke-virtual {v1}, Lcom/oplus/camera/s/d;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/s/e;->a(Lcom/oplus/camera/ui/control/b;Z)V

    .line 72
    iget-object p0, p0, Lcom/oplus/camera/s/d$1;->a:Lcom/oplus/camera/s/d;

    invoke-static {p0}, Lcom/oplus/camera/s/d;->b(Lcom/oplus/camera/s/d;)Lcom/oplus/camera/capmode/a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v2, v0}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    return-void
.end method

.method public b()Z
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oplus/camera/s/d$1;->a:Lcom/oplus/camera/s/d;

    invoke-static {p0}, Lcom/oplus/camera/s/d;->c(Lcom/oplus/camera/s/d;)Z

    move-result p0

    return p0
.end method
