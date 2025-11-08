.class final Lcom/oplus/c/a/d/b/d$b;
.super Ljava/lang/Object;
.source "TBILightVideoPlayer.kt"

# interfaces
.implements Lcom/oplus/tblplayer/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/c/a/d/b/d;->a(Landroid/net/Uri;Landroid/view/Surface;Lcom/oplus/c/a/d/b/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/tblplayer/IMediaPlayer;

.field final synthetic b:Lcom/oplus/c/a/d/b/d;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Landroid/view/Surface;

.field final synthetic e:J

.field final synthetic f:Lcom/oplus/c/a/d/b/b$a;


# direct methods
.method constructor <init>(Lcom/oplus/tblplayer/IMediaPlayer;Lcom/oplus/c/a/d/b/d;Landroid/net/Uri;Landroid/view/Surface;JLcom/oplus/c/a/d/b/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/c/a/d/b/d$b;->a:Lcom/oplus/tblplayer/IMediaPlayer;

    iput-object p2, p0, Lcom/oplus/c/a/d/b/d$b;->b:Lcom/oplus/c/a/d/b/d;

    iput-object p3, p0, Lcom/oplus/c/a/d/b/d$b;->c:Landroid/net/Uri;

    iput-object p4, p0, Lcom/oplus/c/a/d/b/d$b;->d:Landroid/view/Surface;

    iput-wide p5, p0, Lcom/oplus/c/a/d/b/d$b;->e:J

    iput-object p7, p0, Lcom/oplus/c/a/d/b/d$b;->f:Lcom/oplus/c/a/d/b/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Lcom/oplus/tblplayer/IMediaPlayer;)V
    .locals 4

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOnPreparedListener uri = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/c/a/d/b/d$b;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",  cost time = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/c/a/d/b/d$b;->e:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TBILightVideoPlayer"

    invoke-static {v0, p1}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/oplus/c/a/d/b/d$b;->a:Lcom/oplus/tblplayer/IMediaPlayer;

    iget-object v0, p0, Lcom/oplus/c/a/d/b/d$b;->d:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lcom/oplus/tblplayer/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 50
    iget-object p1, p0, Lcom/oplus/c/a/d/b/d$b;->a:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p1}, Lcom/oplus/tblplayer/IMediaPlayer;->start()V

    .line 51
    iget-object p1, p0, Lcom/oplus/c/a/d/b/d$b;->b:Lcom/oplus/c/a/d/b/d;

    invoke-virtual {p1}, Lcom/oplus/c/a/d/b/d;->n()V

    .line 52
    iget-object p0, p0, Lcom/oplus/c/a/d/b/d$b;->f:Lcom/oplus/c/a/d/b/b$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/c/a/d/b/b$a;->a()V

    :cond_0
    return-void
.end method
