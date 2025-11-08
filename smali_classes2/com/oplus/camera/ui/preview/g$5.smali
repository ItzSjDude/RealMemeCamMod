.class Lcom/oplus/camera/ui/preview/g$5;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->a(ZLcom/oplus/camera/ui/preview/a/t;)V
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

    .line 1638
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$5;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 1

    .line 1650
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$5;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1651
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$5;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/g$b;->a(F)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a()Z
    .locals 1

    .line 1641
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$5;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1642
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$5;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/g$b;->bB()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 1

    .line 1659
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$5;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1660
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$5;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/g$b;->bC()V

    :cond_0
    return-void
.end method
