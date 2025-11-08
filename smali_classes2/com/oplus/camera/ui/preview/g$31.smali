.class Lcom/oplus/camera/ui/preview/g$31;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/screen/b/a;Lcom/oplus/camera/screen/b/a;)V
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

    .line 4039
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$31;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4042
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$31;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->j(Lcom/oplus/camera/ui/preview/g;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4043
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g$31;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/g;->l(Lcom/oplus/camera/ui/preview/g;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g$31;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/g;->e(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/gl/GLRootView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4044
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$31;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->e(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/gl/GLRootView;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/gl/GLRootView;->setRenderMode(I)V

    .line 4046
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
