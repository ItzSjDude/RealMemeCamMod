.class Lcom/oplus/camera/m/a$1;
.super Ljava/lang/Object;
.source "CallGalleryPreDecodeThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/m/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/m/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/m/a;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/oplus/camera/m/a$1;->a:Lcom/oplus/camera/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/oplus/camera/m/a$1;->a:Lcom/oplus/camera/m/a;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/m/a$1;->a:Lcom/oplus/camera/m/a;

    invoke-static {v1}, Lcom/oplus/camera/m/a;->a(Lcom/oplus/camera/m/a;)Lcom/oplus/camera/n;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/oplus/camera/m/a$1;->a:Lcom/oplus/camera/m/a;

    invoke-static {v1}, Lcom/oplus/camera/m/a;->a(Lcom/oplus/camera/m/a;)Lcom/oplus/camera/n;

    move-result-object v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/n;->b(Landroid/content/Context;)V

    .line 75
    iget-object p0, p0, Lcom/oplus/camera/m/a$1;->a:Lcom/oplus/camera/m/a;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/oplus/camera/m/a;->a(Lcom/oplus/camera/m/a;Lcom/oplus/camera/n;)Lcom/oplus/camera/n;

    .line 77
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
