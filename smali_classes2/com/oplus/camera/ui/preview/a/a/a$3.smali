.class Lcom/oplus/camera/ui/preview/a/a/a$3;
.super Ljava/lang/Object;
.source "DoubleExposureTexturePreview.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/a/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/a/a;->a(Lcom/oplus/camera/doubleexposure/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/a/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/a/a;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/a/a$3;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a$3;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/a/a;->i(Lcom/oplus/camera/ui/preview/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a$3;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/preview/a/a/a;->d(Lcom/oplus/camera/ui/preview/a/a/a;Z)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 754
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a$3;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/a/a;->u()V

    return-void
.end method
