.class Lcom/oplus/camera/ui/preview/a/u$5;
.super Ljava/lang/Object;
.source "PreviewEffectProcessImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/u;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/oplus/camera/ui/preview/a/u;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/u;III)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/u$5;->d:Lcom/oplus/camera/ui/preview/a/u;

    iput p2, p0, Lcom/oplus/camera/ui/preview/a/u$5;->a:I

    iput p3, p0, Lcom/oplus/camera/ui/preview/a/u$5;->b:I

    iput p4, p0, Lcom/oplus/camera/ui/preview/a/u$5;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u$5;->d:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/u;->b(Lcom/oplus/camera/ui/preview/a/u;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 287
    iget v2, p0, Lcom/oplus/camera/ui/preview/a/u$5;->a:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 288
    iget v2, p0, Lcom/oplus/camera/ui/preview/a/u$5;->b:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/u$5;->b:I

    iget v3, p0, Lcom/oplus/camera/ui/preview/a/u$5;->c:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 289
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/y;->e()V

    goto :goto_0

    :cond_2
    return-void
.end method
