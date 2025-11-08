.class Lcom/oplus/camera/ui/preview/a/d$1;
.super Ljava/lang/Object;
.source "ArcsoftBlurTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/d;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/d$1;->a:Lcom/oplus/camera/ui/preview/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 289
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/d$1;->a:Lcom/oplus/camera/ui/preview/a/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/d;->a(Lcom/oplus/camera/ui/preview/a/d;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/d$1;->a:Lcom/oplus/camera/ui/preview/a/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/d;->b(Lcom/oplus/camera/ui/preview/a/d;)Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/d$1;->a:Lcom/oplus/camera/ui/preview/a/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/d;->c(Lcom/oplus/camera/ui/preview/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/d$1;->a:Lcom/oplus/camera/ui/preview/a/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/d;->b(Lcom/oplus/camera/ui/preview/a/d;)Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;->release()I

    move-result v1

    .line 292
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/d$1;->a:Lcom/oplus/camera/ui/preview/a/d;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/oplus/camera/ui/preview/a/d;->a(Lcom/oplus/camera/ui/preview/a/d;Z)Z

    const-string v2, "ArcsoftBlurTexturePreview"

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroyEngine, X ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/d$1;->a:Lcom/oplus/camera/ui/preview/a/d;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oplus/camera/ui/preview/a/d;->a(Lcom/oplus/camera/ui/preview/a/d;Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;)Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;

    .line 298
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/d$1;->a:Lcom/oplus/camera/ui/preview/a/d;

    invoke-static {p0, v2}, Lcom/oplus/camera/ui/preview/a/d;->a(Lcom/oplus/camera/ui/preview/a/d;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;

    .line 299
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
