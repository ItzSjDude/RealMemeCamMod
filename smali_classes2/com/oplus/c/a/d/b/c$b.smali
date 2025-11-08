.class final Lcom/oplus/c/a/d/b/c$b;
.super Ljava/lang/Object;
.source "MediaPlayerLightVideoPlayer.kt"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/c/a/d/b/c;->a(Landroid/net/Uri;Landroid/view/Surface;Lcom/oplus/c/a/d/b/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer;

.field final synthetic b:Lcom/oplus/c/a/d/b/c;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:J

.field final synthetic e:Landroid/view/Surface;

.field final synthetic f:Lcom/oplus/c/a/d/b/b$a;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Lcom/oplus/c/a/d/b/c;Landroid/net/Uri;JLandroid/view/Surface;Lcom/oplus/c/a/d/b/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/c/a/d/b/c$b;->a:Landroid/media/MediaPlayer;

    iput-object p2, p0, Lcom/oplus/c/a/d/b/c$b;->b:Lcom/oplus/c/a/d/b/c;

    iput-object p3, p0, Lcom/oplus/c/a/d/b/c$b;->c:Landroid/net/Uri;

    iput-wide p4, p0, Lcom/oplus/c/a/d/b/c$b;->d:J

    iput-object p6, p0, Lcom/oplus/c/a/d/b/c$b;->e:Landroid/view/Surface;

    iput-object p7, p0, Lcom/oplus/c/a/d/b/c$b;->f:Lcom/oplus/c/a/d/b/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 42
    invoke-static {}, Lcom/oplus/c/a/d/b/c;->p()Lcom/oplus/c/a/d/b/c$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOnPreparedListener uri = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/c/a/d/b/c$b;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",  cost time = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/c/a/d/b/c$b;->d:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaLightVideoPlayer"

    invoke-static {v0, p1}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :try_start_0
    iget-object p1, p0, Lcom/oplus/c/a/d/b/c$b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/oplus/c/a/d/b/c$b;->e:Landroid/view/Surface;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    iget-object p1, p0, Lcom/oplus/c/a/d/b/c$b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 52
    iget-object p1, p0, Lcom/oplus/c/a/d/b/c$b;->b:Lcom/oplus/c/a/d/b/c;

    invoke-virtual {p1}, Lcom/oplus/c/a/d/b/c;->n()V

    .line 53
    iget-object p0, p0, Lcom/oplus/c/a/d/b/c$b;->f:Lcom/oplus/c/a/d/b/b$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/c/a/d/b/b$a;->a()V

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 47
    invoke-static {}, Lcom/oplus/c/a/d/b/c;->p()Lcom/oplus/c/a/d/b/c$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnPreparedListener, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
