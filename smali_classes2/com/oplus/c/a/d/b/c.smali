.class public final Lcom/oplus/c/a/d/b/c;
.super Lcom/oplus/c/a/d/b/a;
.source "MediaPlayerLightVideoPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/c/a/d/b/c$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/oplus/c/a/d/b/c$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private e:Landroid/media/MediaPlayer;

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/c/a/d/b/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/c/a/d/b/c$a;-><init>(Lc/f/b/f;)V

    sput-object v0, Lcom/oplus/c/a/d/b/c;->d:Lcom/oplus/c/a/d/b/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/oplus/c/a/d/b/a;-><init>()V

    iput-object p1, p0, Lcom/oplus/c/a/d/b/c;->f:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic a(Lcom/oplus/c/a/d/b/c;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/oplus/c/a/d/b/c;->e:Landroid/media/MediaPlayer;

    return-void
.end method

.method public static final synthetic p()Lcom/oplus/c/a/d/b/c$a;
    .locals 1

    sget-object v0, Lcom/oplus/c/a/d/b/c;->d:Lcom/oplus/c/a/d/b/c$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/oplus/c/a/d/b/c;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/c;->g()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaLightVideoPlayer"

    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oplus/c/a/d/b/c;->e:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public a(Landroid/net/Uri;Landroid/view/Surface;Lcom/oplus/c/a/d/b/b$a;)V
    .locals 12

    const-string v0, "uri"

    invoke-static {p1, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surface"

    invoke-static {p2, v0}, Lc/f/b/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 34
    invoke-virtual {p0, p1}, Lcom/oplus/c/a/d/b/c;->a(Landroid/net/Uri;)V

    .line 35
    iget-object v0, p0, Lcom/oplus/c/a/d/b/c;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/oplus/c/a/d/b/c;->e:Landroid/media/MediaPlayer;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/oplus/c/a/d/b/c;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 40
    iget-object v1, p0, Lcom/oplus/c/a/d/b/c;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 41
    new-instance v11, Lcom/oplus/c/a/d/b/c$b;

    move-object v1, v11

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-wide v5, v9

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/oplus/c/a/d/b/c$b;-><init>(Landroid/media/MediaPlayer;Lcom/oplus/c/a/d/b/c;Landroid/net/Uri;JLandroid/view/Surface;Lcom/oplus/c/a/d/b/b$a;)V

    check-cast v11, Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v11}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 55
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 56
    new-instance v8, Lcom/oplus/c/a/d/b/c$c;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, v9

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/oplus/c/a/d/b/c$c;-><init>(Lcom/oplus/c/a/d/b/c;Landroid/net/Uri;JLandroid/view/Surface;Lcom/oplus/c/a/d/b/b$a;)V

    check-cast v8, Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v8}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 61
    new-instance v11, Lcom/oplus/c/a/d/b/c$d;

    move-object v1, v11

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-wide v5, v9

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/oplus/c/a/d/b/c$d;-><init>(Landroid/media/MediaPlayer;Lcom/oplus/c/a/d/b/c;Landroid/net/Uri;JLandroid/view/Surface;Lcom/oplus/c/a/d/b/b$a;)V

    check-cast v11, Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v11}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/oplus/c/a/d/b/c;->e:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 110
    invoke-super {p0}, Lcom/oplus/c/a/d/b/a;->c()V

    .line 111
    iget-object v0, p0, Lcom/oplus/c/a/d/b/c;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/c;->g()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaLightVideoPlayer"

    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 129
    invoke-super {p0}, Lcom/oplus/c/a/d/b/a;->d()V

    .line 130
    iget-object v0, p0, Lcom/oplus/c/a/d/b/c;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/oplus/c/a/d/b/c;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    const/4 v0, 0x0

    .line 132
    check-cast v0, Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/oplus/c/a/d/b/c;->e:Landroid/media/MediaPlayer;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/c;->g()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaLightVideoPlayer"

    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 116
    invoke-super {p0}, Lcom/oplus/c/a/d/b/a;->h()V

    .line 117
    iget-object v0, p0, Lcom/oplus/c/a/d/b/c;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 118
    check-cast v0, Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/oplus/c/a/d/b/c;->e:Landroid/media/MediaPlayer;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/c;->g()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaLightVideoPlayer"

    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 123
    invoke-super {p0}, Lcom/oplus/c/a/d/b/a;->i()V

    .line 124
    iget-object v0, p0, Lcom/oplus/c/a/d/b/c;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/c/a/d/b/c;->g()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaLightVideoPlayer"

    invoke-static {v0, p0}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
