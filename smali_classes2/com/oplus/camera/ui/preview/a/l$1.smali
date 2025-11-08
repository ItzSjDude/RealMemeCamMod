.class Lcom/oplus/camera/ui/preview/a/l$1;
.super Ljava/lang/Object;
.source "FilterTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/l;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/l;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/l;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/l$1;->a:Lcom/oplus/camera/ui/preview/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "FilterTexturePreview"

    const-string v1, "destroyEngine"

    .line 183
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyEngine, mReques: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/l$1;->a:Lcom/oplus/camera/ui/preview/a/l;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/a/l;->a(Lcom/oplus/camera/ui/preview/a/l;)Lcom/oplus/camera/ui/preview/a/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mGLRootView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/l$1;->a:Lcom/oplus/camera/ui/preview/a/l;

    iget-object v2, v2, Lcom/oplus/camera/ui/preview/a/l;->h:Lcom/oplus/camera/gl/GLRootView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/l$1;->a:Lcom/oplus/camera/ui/preview/a/l;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/l;->b(Lcom/oplus/camera/ui/preview/a/l;)Lcom/oplus/camera/ui/preview/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/a;->e()V

    .line 188
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/l$1;->a:Lcom/oplus/camera/ui/preview/a/l;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/l;->c(Lcom/oplus/camera/ui/preview/a/l;)Lcom/oplus/camera/ui/preview/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/a;->e()V

    .line 190
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/l$1;->a:Lcom/oplus/camera/ui/preview/a/l;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/l;->a(Lcom/oplus/camera/ui/preview/a/l;)Lcom/oplus/camera/ui/preview/a/aa;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/l$1;->a:Lcom/oplus/camera/ui/preview/a/l;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/l;->a(Lcom/oplus/camera/ui/preview/a/l;)Lcom/oplus/camera/ui/preview/a/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/aa;->G()V

    .line 192
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/l$1;->a:Lcom/oplus/camera/ui/preview/a/l;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/oplus/camera/ui/preview/a/l;->a(Lcom/oplus/camera/ui/preview/a/l;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;

    :cond_0
    const-string p0, "destroyEngine X"

    .line 195
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
