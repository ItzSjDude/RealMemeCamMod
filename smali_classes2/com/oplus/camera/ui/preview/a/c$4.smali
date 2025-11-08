.class Lcom/oplus/camera/ui/preview/a/c$4;
.super Ljava/lang/Object;
.source "AnimojiTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/c;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/c$4;->a:Lcom/oplus/camera/ui/preview/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c$4;->a:Lcom/oplus/camera/ui/preview/a/c;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/c;->a(Lcom/oplus/camera/ui/preview/a/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/c$4;->a:Lcom/oplus/camera/ui/preview/a/c;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/c;->g(Lcom/oplus/camera/ui/preview/a/c;)V

    .line 375
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/c$4;->a:Lcom/oplus/camera/ui/preview/a/c;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/c;->b:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 375
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
