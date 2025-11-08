.class Lcom/oplus/camera/gl/m$l;
.super Ljava/io/Writer;
.source "GLProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/gl/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# instance fields
.field private a:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1796
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 1825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/gl/m$l;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method private a()V
    .locals 2

    .line 1819
    iget-object v0, p0, Lcom/oplus/camera/gl/m$l;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1820
    iget-object v0, p0, Lcom/oplus/camera/gl/m$l;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLSurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    iget-object p0, p0, Lcom/oplus/camera/gl/m$l;->a:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1799
    invoke-direct {p0}, Lcom/oplus/camera/gl/m$l;->a()V

    return-void
.end method

.method public flush()V
    .locals 0

    .line 1803
    invoke-direct {p0}, Lcom/oplus/camera/gl/m$l;->a()V

    return-void
.end method

.method public write([CII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    .line 1808
    aget-char v1, p1, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1810
    invoke-direct {p0}, Lcom/oplus/camera/gl/m$l;->a()V

    goto :goto_1

    .line 1813
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/gl/m$l;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
