.class Lcom/oplus/camera/capmode/x$a;
.super Ljava/lang/Object;
.source "VideoRecorder.java"

# interfaces
.implements Lcom/oplus/camera/capmode/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/x;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/capmode/x;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/oplus/camera/capmode/x$a;->a:Lcom/oplus/camera/capmode/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/capmode/x;Lcom/oplus/camera/capmode/x$1;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/x$a;-><init>(Lcom/oplus/camera/capmode/x;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaCodec$BufferInfo;)J
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/oplus/camera/capmode/x$a;->a:Lcom/oplus/camera/capmode/x;

    invoke-static {v0}, Lcom/oplus/camera/capmode/x;->d(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object p0, p0, Lcom/oplus/camera/capmode/x$a;->a:Lcom/oplus/camera/capmode/x;

    invoke-static {p0}, Lcom/oplus/camera/capmode/x;->d(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$e;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/capmode/x$e;->a(Landroid/media/MediaCodec$BufferInfo;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public a(I)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/oplus/camera/capmode/x$a;->a:Lcom/oplus/camera/capmode/x;

    invoke-static {v0}, Lcom/oplus/camera/capmode/x;->c(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/oplus/camera/capmode/x$a;->a:Lcom/oplus/camera/capmode/x;

    invoke-static {p0}, Lcom/oplus/camera/capmode/x;->c(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$g;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/capmode/x$g;->onException(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/oplus/camera/capmode/x$a;->a:Lcom/oplus/camera/capmode/x;

    invoke-static {v0}, Lcom/oplus/camera/capmode/x;->e(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object p0, p0, Lcom/oplus/camera/capmode/x$a;->a:Lcom/oplus/camera/capmode/x;

    invoke-static {p0}, Lcom/oplus/camera/capmode/x;->e(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$d;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/capmode/x$d;->a(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/capmode/b;II)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/oplus/camera/capmode/x$a;->a:Lcom/oplus/camera/capmode/x;

    invoke-static {v0}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object p0, p0, Lcom/oplus/camera/capmode/x$a;->a:Lcom/oplus/camera/capmode/x;

    invoke-static {p0}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$h;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/x$h;->onInfo(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public b(Lcom/oplus/camera/capmode/b;II)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/oplus/camera/capmode/x$a;->a:Lcom/oplus/camera/capmode/x;

    invoke-static {v0}, Lcom/oplus/camera/capmode/x;->b(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object p0, p0, Lcom/oplus/camera/capmode/x$a;->a:Lcom/oplus/camera/capmode/x;

    invoke-static {p0}, Lcom/oplus/camera/capmode/x;->b(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$f;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/x$f;->onError(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method
