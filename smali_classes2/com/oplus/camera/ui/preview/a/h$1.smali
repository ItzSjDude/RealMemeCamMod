.class Lcom/oplus/camera/ui/preview/a/h$1;
.super Ljava/lang/Object;
.source "FaceSlenderTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/h;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/h;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/h$1;->a:Lcom/oplus/camera/ui/preview/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "FaceSlenderTexturePreview"

    const-string v1, "destroyEngine"

    .line 280
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/h$1;->a:Lcom/oplus/camera/ui/preview/a/h;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/h;->h:Lcom/oplus/camera/gl/GLRootView;

    if-nez v0, :cond_0

    const-string p0, "FaceSlenderTexturePreview"

    const-string v0, "destroyEngine, , mGLRootView is null "

    .line 283
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/h$1;->a:Lcom/oplus/camera/ui/preview/a/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/h;->a(Lcom/oplus/camera/ui/preview/a/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "FaceSlenderTexturePreview"

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyEngine, mOplusFaceBeautyPreviewHelper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/h$1;->a:Lcom/oplus/camera/ui/preview/a/h;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/a/h;->b(Lcom/oplus/camera/ui/preview/a/h;)Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/h$1;->a:Lcom/oplus/camera/ui/preview/a/h;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/h;->b(Lcom/oplus/camera/ui/preview/a/h;)Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/h$1;->a:Lcom/oplus/camera/ui/preview/a/h;

    iget-object v1, v1, Lcom/oplus/camera/ui/preview/a/h;->h:Lcom/oplus/camera/gl/GLRootView;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/GLRootView;->g()V

    .line 293
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/h$1;->a:Lcom/oplus/camera/ui/preview/a/h;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/h;->b(Lcom/oplus/camera/ui/preview/a/h;)Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->destroy()I

    .line 294
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 295
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/h$1;->a:Lcom/oplus/camera/ui/preview/a/h;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/oplus/camera/ui/preview/a/h;->a(Lcom/oplus/camera/ui/preview/a/h;Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;)Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    .line 297
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "FaceSlenderTexturePreview"

    const-string v0, "destroyEngine X"

    .line 299
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 297
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
