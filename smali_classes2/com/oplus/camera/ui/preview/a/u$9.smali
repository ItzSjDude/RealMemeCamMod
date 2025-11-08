.class Lcom/oplus/camera/ui/preview/a/u$9;
.super Ljava/lang/Object;
.source "PreviewEffectProcessImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/u;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/u;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/u;)V
    .locals 0

    .line 1458
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/u$9;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1461
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u$9;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/u;->b(Lcom/oplus/camera/ui/preview/a/u;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    .line 1462
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/u$9;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1463
    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/y;->j()V

    .line 1464
    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/y;->i()V

    goto :goto_0

    :cond_1
    return-void
.end method
