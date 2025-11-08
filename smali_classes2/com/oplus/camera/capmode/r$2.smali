.class Lcom/oplus/camera/capmode/r$2;
.super Ljava/lang/Object;
.source "NightMode.java"

# interfaces
.implements Lcom/oplus/camera/professional/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/r;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/r;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/r;)V
    .locals 0

    .line 1245
    iput-object p1, p0, Lcom/oplus/camera/capmode/r$2;->a:Lcom/oplus/camera/capmode/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 1248
    iget-object p0, p0, Lcom/oplus/camera/capmode/r$2;->a:Lcom/oplus/camera/capmode/r;

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/r;->mbInCapturing:Z

    return p0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 1258
    iget-object p0, p0, Lcom/oplus/camera/capmode/r$2;->a:Lcom/oplus/camera/capmode/r;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/r;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public b()Z
    .locals 0

    .line 1253
    iget-object p0, p0, Lcom/oplus/camera/capmode/r$2;->a:Lcom/oplus/camera/capmode/r;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isInNightProProcess()Z

    move-result p0

    return p0
.end method

.method public c()I
    .locals 0

    .line 1263
    iget-object p0, p0, Lcom/oplus/camera/capmode/r$2;->a:Lcom/oplus/camera/capmode/r;

    invoke-static {p0}, Lcom/oplus/camera/capmode/r;->a(Lcom/oplus/camera/capmode/r;)I

    move-result p0

    return p0
.end method

.method public d()Lcom/oplus/camera/ui/control/b;
    .locals 0

    .line 1268
    iget-object p0, p0, Lcom/oplus/camera/capmode/r$2;->a:Lcom/oplus/camera/capmode/r;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    return-object p0
.end method

.method public e()Z
    .locals 0

    .line 1273
    iget-object p0, p0, Lcom/oplus/camera/capmode/r$2;->a:Lcom/oplus/camera/capmode/r;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/r;->isPanelMode()Z

    move-result p0

    return p0
.end method
