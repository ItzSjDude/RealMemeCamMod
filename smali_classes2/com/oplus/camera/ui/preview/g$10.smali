.class Lcom/oplus/camera/ui/preview/g$10;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/HyperLapseFocusView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 2313
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$10;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 2337
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$10;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/oplus/camera/ui/preview/g$b;->a(IIJ)V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 2316
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$10;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->L(Lcom/oplus/camera/ui/preview/g;)Z

    move-result p0

    return p0
.end method

.method public b(II)V
    .locals 0

    .line 2342
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$10;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/preview/g$b;->f(II)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 2321
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$10;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2322
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$10;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/g$b;->aw()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()V
    .locals 1

    .line 2330
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$10;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2331
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$10;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/g$b;->bA()V

    :cond_0
    return-void
.end method
