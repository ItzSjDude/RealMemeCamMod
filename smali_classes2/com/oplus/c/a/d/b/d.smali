.class public final Lcom/oplus/c/a/d/b/d;
.super Lcom/oplus/c/a/d/b/a;
.source "TBILightVideoPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/c/a/d/b/d$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/oplus/c/a/d/b/d$a;


# instance fields
.field private e:Lcom/oplus/tblplayer/IMediaPlayer;

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/c/a/d/b/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/c/a/d/b/d$a;-><init>(Lc/f/b/f;)V

    sput-object v0, Lcom/oplus/c/a/d/b/d;->d:Lcom/oplus/c/a/d/b/d$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/oplus/c/a/d/b/a;-><init>()V

    iput-object p1, p0, Lcom/oplus/c/a/d/b/d;->f:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic a(Lcom/oplus/c/a/d/b/d;Lcom/oplus/tblplayer/IMediaPlayer;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/oplus/c/a/d/b/d;->e:Lcom/oplus/tblplayer/IMediaPlayer;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oplus/c/a/d/b/d;->e:Lcom/oplus/tblplayer/IMediaPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/oplus/c/a/d/b/d;->e:Lcom/oplus/tblplayer/IMediaPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oplus/tblplayer/IMediaPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public a(Landroid/net/Uri;Landroid/view/Surface;Lcom/oplus/c/a/d/b/b$a;)V
    .locals 12

    const-string v0, "uri"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surface"

    invoke-static {p2, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 36
    invoke-virtual {p0, p1}, Lcom/oplus/c/a/d/b/d;->a(Landroid/net/Uri;)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/oplus/c/a/d/b/d;->a(Landroid/view/Surface;)V

    .line 38
    invoke-virtual {p0, p3}, Lcom/oplus/c/a/d/b/d;->a(Lcom/oplus/c/a/d/b/b$a;)V

    .line 39
    iget-object v0, p0, Lcom/oplus/c/a/d/b/d;->e:Lcom/oplus/tblplayer/IMediaPlayer;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/oplus/c/a/d/b/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/tblplayer/TBLPlayerManager;->createPlayer(Landroid/content/Context;)Lcom/oplus/tblplayer/IMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/c/a/d/b/d;->e:Lcom/oplus/tblplayer/IMediaPlayer;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/oplus/c/a/d/b/d;->e:Lcom/oplus/tblplayer/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 43
    invoke-interface {v0}, Lcom/oplus/tblplayer/IMediaPlayer;->reset()V

    .line 44
    invoke-interface {v0, p1}, Lcom/oplus/tblplayer/IMediaPlayer;->setDataSource(Landroid/net/Uri;)V

    .line 45
    invoke-interface {v0, p2}, Lcom/oplus/tblplayer/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 47
    new-instance v11, Lcom/oplus/c/a/d/b/d$b;

    move-object v1, v11

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, v9

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/oplus/c/a/d/b/d$b;-><init>(Lcom/oplus/tblplayer/IMediaPlayer;Lcom/oplus/c/a/d/b/d;Landroid/net/Uri;Landroid/view/Surface;JLcom/oplus/c/a/d/b/b$a;)V

    check-cast v11, Lcom/oplus/tblplayer/IMediaPlayer$OnPreparedListener;

    invoke-interface {v0, v11}, Lcom/oplus/tblplayer/IMediaPlayer;->setOnPreparedListener(Lcom/oplus/tblplayer/IMediaPlayer$OnPreparedListener;)V

    .line 54
    invoke-interface {v0}, Lcom/oplus/tblplayer/IMediaPlayer;->prepareAsync()V

    .line 55
    new-instance v8, Lcom/oplus/c/a/d/b/d$c;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, v9

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/oplus/c/a/d/b/d$c;-><init>(Lcom/oplus/c/a/d/b/d;Landroid/net/Uri;Landroid/view/Surface;JLcom/oplus/c/a/d/b/b$a;)V

    check-cast v8, Lcom/oplus/tblplayer/IMediaPlayer$OnCompletionListener;

    invoke-interface {v0, v8}, Lcom/oplus/tblplayer/IMediaPlayer;->setOnCompletionListener(Lcom/oplus/tblplayer/IMediaPlayer$OnCompletionListener;)V

    .line 60
    new-instance v11, Lcom/oplus/c/a/d/b/d$d;

    move-object v1, v11

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, v9

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/oplus/c/a/d/b/d$d;-><init>(Lcom/oplus/tblplayer/IMediaPlayer;Lcom/oplus/c/a/d/b/d;Landroid/net/Uri;Landroid/view/Surface;JLcom/oplus/c/a/d/b/b$a;)V

    check-cast v11, Lcom/oplus/tblplayer/IMediaPlayer$OnErrorListener;

    invoke-interface {v0, v11}, Lcom/oplus/tblplayer/IMediaPlayer;->setOnErrorListener(Lcom/oplus/tblplayer/IMediaPlayer$OnErrorListener;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/oplus/c/a/d/b/d;->e:Lcom/oplus/tblplayer/IMediaPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/tblplayer/IMediaPlayer;->prepareAsync()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 108
    invoke-super {p0}, Lcom/oplus/c/a/d/b/a;->c()V

    .line 109
    iget-object v0, p0, Lcom/oplus/c/a/d/b/d;->e:Lcom/oplus/tblplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/tblplayer/IMediaPlayer;->pause()V

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/d;->g()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TBILightVideoPlayer"

    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 128
    invoke-super {p0}, Lcom/oplus/c/a/d/b/a;->d()V

    .line 129
    iget-object v0, p0, Lcom/oplus/c/a/d/b/d;->e:Lcom/oplus/tblplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/tblplayer/IMediaPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 130
    check-cast v0, Lcom/oplus/tblplayer/IMediaPlayer;

    iput-object v0, p0, Lcom/oplus/c/a/d/b/d;->e:Lcom/oplus/tblplayer/IMediaPlayer;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/d;->g()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TBILightVideoPlayer"

    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 114
    invoke-super {p0}, Lcom/oplus/c/a/d/b/a;->h()V

    .line 115
    iget-object v0, p0, Lcom/oplus/c/a/d/b/d;->e:Lcom/oplus/tblplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/tblplayer/IMediaPlayer;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 116
    check-cast v0, Lcom/oplus/tblplayer/IMediaPlayer;

    iput-object v0, p0, Lcom/oplus/c/a/d/b/d;->e:Lcom/oplus/tblplayer/IMediaPlayer;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/d;->g()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TBILightVideoPlayer"

    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/oplus/c/a/d/b/a;->i()V

    .line 122
    iget-object v0, p0, Lcom/oplus/c/a/d/b/d;->e:Lcom/oplus/tblplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/tblplayer/IMediaPlayer;->reset()V

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/d;->g()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TBILightVideoPlayer"

    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
