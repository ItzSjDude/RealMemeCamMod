.class Lcom/oplus/camera/ui/preview/a/c$2;
.super Ljava/lang/Object;
.source "AnimojiTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/a/c;
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

    .line 106
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/c$2;->a:Lcom/oplus/camera/ui/preview/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c$2;->a:Lcom/oplus/camera/ui/preview/a/c;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/c;->a(Lcom/oplus/camera/ui/preview/a/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/c$2;->a:Lcom/oplus/camera/ui/preview/a/c;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/c$2;->a:Lcom/oplus/camera/ui/preview/a/c;

    iget-object v2, v2, Lcom/oplus/camera/ui/preview/a/c;->j:Landroid/content/Context;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/c$2;->a:Lcom/oplus/camera/ui/preview/a/c;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/a/c;->d(Lcom/oplus/camera/ui/preview/a/c;)I

    move-result v3

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/c$2;->a:Lcom/oplus/camera/ui/preview/a/c;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/c;->e(Lcom/oplus/camera/ui/preview/a/c;)I

    move-result p0

    invoke-static {v1, v2, v3, p0}, Lcom/oplus/camera/ui/preview/a/c;->a(Lcom/oplus/camera/ui/preview/a/c;Landroid/content/Context;II)J

    .line 111
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
