.class Lcom/oplus/camera/ui/preview/a/u$6;
.super Ljava/lang/Object;
.source "PreviewEffectProcessImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/u;->h()V
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

    .line 845
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/u$6;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 848
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u$6;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/u;->b(Lcom/oplus/camera/ui/preview/a/u;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    .line 849
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->j()V

    goto :goto_0

    :cond_0
    return-void
.end method
