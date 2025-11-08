.class Lcom/oplus/camera/ui/preview/a/w$1;
.super Ljava/lang/Object;
.source "StickerTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/w;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/w;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/w;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/w$1;->a:Lcom/oplus/camera/ui/preview/a/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Sticker.initHumanAction"

    .line 454
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w$1;->a:Lcom/oplus/camera/ui/preview/a/w;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/w;->a(Lcom/oplus/camera/ui/preview/a/w;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w$1;->a:Lcom/oplus/camera/ui/preview/a/w;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/w;->r()V

    .line 459
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w$1;->a:Lcom/oplus/camera/ui/preview/a/w;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/oplus/camera/ui/preview/a/w;->a(Lcom/oplus/camera/ui/preview/a/w;Z)Z

    .line 460
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "Sticker.initHumanAction"

    .line 462
    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 460
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
