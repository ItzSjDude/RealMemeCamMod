.class final Lcom/oplus/c/a/d/b/d$c;
.super Ljava/lang/Object;
.source "TBILightVideoPlayer.kt"

# interfaces
.implements Lcom/oplus/tblplayer/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/c/a/d/b/d;->a(Landroid/net/Uri;Landroid/view/Surface;Lcom/oplus/c/a/d/b/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/c/a/d/b/d;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Landroid/view/Surface;

.field final synthetic d:J

.field final synthetic e:Lcom/oplus/c/a/d/b/b$a;


# direct methods
.method constructor <init>(Lcom/oplus/c/a/d/b/d;Landroid/net/Uri;Landroid/view/Surface;JLcom/oplus/c/a/d/b/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/c/a/d/b/d$c;->a:Lcom/oplus/c/a/d/b/d;

    iput-object p2, p0, Lcom/oplus/c/a/d/b/d$c;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/oplus/c/a/d/b/d$c;->c:Landroid/view/Surface;

    iput-wide p4, p0, Lcom/oplus/c/a/d/b/d$c;->d:J

    iput-object p6, p0, Lcom/oplus/c/a/d/b/d$c;->e:Lcom/oplus/c/a/d/b/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Lcom/oplus/tblplayer/IMediaPlayer;)V
    .locals 1

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOnCompletionListener uri = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/c/a/d/b/d$c;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TBILightVideoPlayer"

    invoke-static {v0, p1}, Lcom/oplus/c/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/oplus/c/a/d/b/d$c;->a:Lcom/oplus/c/a/d/b/d;

    invoke-virtual {p1}, Lcom/oplus/c/a/d/b/d;->m()V

    .line 58
    iget-object p0, p0, Lcom/oplus/c/a/d/b/d$c;->e:Lcom/oplus/c/a/d/b/b$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/c/a/d/b/b$a;->c()V

    :cond_0
    return-void
.end method
