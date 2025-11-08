.class final Lcom/oplus/c/a/d/b/d$d;
.super Ljava/lang/Object;
.source "TBILightVideoPlayer.kt"

# interfaces
.implements Lcom/oplus/tblplayer/IMediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/oplus/c/a/d/b/d$d;->a:Lcom/oplus/tblplayer/IMediaPlayer;

    iput-object p2, p0, Lcom/oplus/c/a/d/b/d$d;->b:Lcom/oplus/c/a/d/b/d;

    iput-object p3, p0, Lcom/oplus/c/a/d/b/d$d;->c:Landroid/net/Uri;

    iput-object p4, p0, Lcom/oplus/c/a/d/b/d$d;->d:Landroid/view/Surface;

    iput-wide p5, p0, Lcom/oplus/c/a/d/b/d$d;->e:J

    iput-object p7, p0, Lcom/oplus/c/a/d/b/d$d;->f:Lcom/oplus/c/a/d/b/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/oplus/tblplayer/IMediaPlayer;IILjava/lang/String;)Z
    .locals 1

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOnErrorListener uri = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/c/a/d/b/d$d;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TBILightVideoPlayer"

    invoke-static {v0, p1}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/oplus/c/a/d/b/d$d;->b:Lcom/oplus/c/a/d/b/d;

    invoke-virtual {p1}, Lcom/oplus/c/a/d/b/d;->o()V

    .line 63
    iget-object p1, p0, Lcom/oplus/c/a/d/b/d$d;->a:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {p1}, Lcom/oplus/tblplayer/IMediaPlayer;->release()V

    .line 64
    iget-object p1, p0, Lcom/oplus/c/a/d/b/d$d;->b:Lcom/oplus/c/a/d/b/d;

    const/4 v0, 0x0

    check-cast v0, Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-static {p1, v0}, Lcom/oplus/c/a/d/b/d;->a(Lcom/oplus/c/a/d/b/d;Lcom/oplus/tblplayer/IMediaPlayer;)V

    .line 65
    iget-object p0, p0, Lcom/oplus/c/a/d/b/d$d;->f:Lcom/oplus/c/a/d/b/b$a;

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p3, p4}, Lcom/oplus/c/a/d/b/b$a;->a(IILjava/lang/String;)Z

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
