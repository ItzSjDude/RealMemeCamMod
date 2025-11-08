.class public Lcom/oplus/camera/gl/g;
.super Lcom/oplus/camera/gl/c;
.source "ExtTexture.java"


# instance fields
.field private h:[I

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 31
    invoke-direct {p0}, Lcom/oplus/camera/gl/c;-><init>()V

    const/4 v0, 0x1

    .line 26
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oplus/camera/gl/g;->h:[I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/oplus/camera/gl/g;->j:I

    .line 29
    iput-boolean v0, p0, Lcom/oplus/camera/gl/g;->k:Z

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExtTexture"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v1, p0, Lcom/oplus/camera/gl/g;->h:[I

    invoke-static {v1}, Lcom/oplus/camera/gl/j;->a([I)V

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sTextureId[0] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/gl/g;->h:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v1, p0, Lcom/oplus/camera/gl/g;->h:[I

    aget v0, v1, v0

    iput v0, p0, Lcom/oplus/camera/gl/g;->c:I

    .line 36
    iput p1, p0, Lcom/oplus/camera/gl/g;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/oplus/camera/gl/h;I)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/oplus/camera/gl/c;-><init>()V

    const/4 v0, 0x1

    .line 26
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oplus/camera/gl/g;->h:[I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/oplus/camera/gl/g;->j:I

    .line 29
    iput-boolean v0, p0, Lcom/oplus/camera/gl/g;->k:Z

    .line 40
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->a()Lcom/oplus/camera/gl/k;

    move-result-object p1

    .line 41
    invoke-interface {p1}, Lcom/oplus/camera/gl/k;->b()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/gl/g;->c:I

    .line 42
    iput p2, p0, Lcom/oplus/camera/gl/g;->i:I

    return-void
.end method

.method private c(Lcom/oplus/camera/gl/h;)V
    .locals 0

    .line 46
    invoke-interface {p1, p0}, Lcom/oplus/camera/gl/h;->b(Lcom/oplus/camera/gl/c;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/g;->a(Lcom/oplus/camera/gl/h;)V

    const/4 p1, 0x1

    .line 48
    iput p1, p0, Lcom/oplus/camera/gl/g;->d:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/oplus/camera/gl/g;->j:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/oplus/camera/gl/g;->k:Z

    return-void
.end method

.method protected b(Lcom/oplus/camera/gl/h;)Z
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/oplus/camera/gl/g;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lcom/oplus/camera/gl/g;->c(Lcom/oplus/camera/gl/h;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public m()I
    .locals 0

    .line 62
    iget p0, p0, Lcom/oplus/camera/gl/g;->i:I

    return p0
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public s()I
    .locals 0

    .line 80
    iget p0, p0, Lcom/oplus/camera/gl/g;->j:I

    return p0
.end method

.method public t()Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/oplus/camera/gl/g;->k:Z

    return p0
.end method
