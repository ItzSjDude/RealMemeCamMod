.class public Lcom/b/a/o;
.super Ljava/lang/Object;
.source "WavefrontLoaderO3d.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/o$b;,
        Lcom/b/a/o$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "o"


# instance fields
.field a:Lcom/b/a/o$b;

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/nio/IntBuffer;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/nio/FloatBuffer;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/b/a/o$b;

    invoke-direct {v0}, Lcom/b/a/o$b;-><init>()V

    iput-object v0, p0, Lcom/b/a/o;->a:Lcom/b/a/o$b;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/b/a/o;->b:I

    .line 16
    iput v0, p0, Lcom/b/a/o;->c:I

    .line 17
    iput v0, p0, Lcom/b/a/o;->d:I

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/b/a/o;->f:Ljava/util/List;

    .line 24
    iput-boolean v0, p0, Lcom/b/a/o;->i:Z

    return-void
.end method

.method public static a(I)Ljava/nio/FloatBuffer;
    .locals 0

    mul-int/lit8 p0, p0, 0x4

    .line 44
    invoke-static {p0}, Lorg/andresoviedo/a/a/d;->a(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)Ljava/nio/IntBuffer;
    .locals 0

    mul-int/lit8 p0, p0, 0x4

    .line 48
    invoke-static {p0}, Lorg/andresoviedo/a/a/d;->a(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/nio/FloatBuffer;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/b/a/o;->h:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public a(Lcom/b/a/g;)V
    .locals 1

    .line 31
    iget-object v0, p1, Lcom/b/a/g;->a:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/b/a/o;->b:I

    .line 32
    iget v0, p0, Lcom/b/a/o;->b:I

    iput v0, p0, Lcom/b/a/o;->c:I

    .line 33
    iget-object p1, p1, Lcom/b/a/g;->c:[I

    array-length p1, p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/b/a/o;->d:I

    .line 35
    iget p1, p0, Lcom/b/a/o;->b:I

    if-lez p1, :cond_0

    mul-int/lit8 p1, p1, 0x3

    .line 36
    invoke-static {p1}, Lcom/b/a/o;->a(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/o;->h:Ljava/nio/FloatBuffer;

    .line 38
    :cond_0
    iget p1, p0, Lcom/b/a/o;->d:I

    if-lez p1, :cond_1

    mul-int/lit8 p1, p1, 0x3

    .line 39
    invoke-static {p1}, Lcom/b/a/o;->b(I)Ljava/nio/IntBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/o;->e:Ljava/nio/IntBuffer;

    :cond_1
    return-void
.end method

.method public b()Ljava/nio/IntBuffer;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/b/a/o;->e:Ljava/nio/IntBuffer;

    return-object p0
.end method

.method public b(Lcom/b/a/g;)V
    .locals 10

    .line 65
    iget-object v0, p1, Lcom/b/a/g;->a:[F

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 66
    iget-object v3, p1, Lcom/b/a/g;->a:[F

    add-int/lit8 v4, v2, 0x0

    aget v3, v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 67
    iget-object v5, p1, Lcom/b/a/g;->a:[F

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    mul-float/2addr v5, v4

    .line 68
    iget-object v7, p1, Lcom/b/a/g;->a:[F

    add-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    const v9, 0x3f2b851f    # 0.67f

    sub-float/2addr v7, v9

    mul-float/2addr v7, v4

    if-nez v2, :cond_0

    .line 70
    iget-object v4, p0, Lcom/b/a/o;->a:Lcom/b/a/o$b;

    invoke-virtual {v4, v3, v5, v7}, Lcom/b/a/o$b;->a(FFF)V

    goto :goto_1

    .line 72
    :cond_0
    iget-object v4, p0, Lcom/b/a/o;->a:Lcom/b/a/o$b;

    invoke-virtual {v4, v3, v5, v7}, Lcom/b/a/o$b;->b(FFF)V

    .line 74
    :goto_1
    iget-object v4, p0, Lcom/b/a/o;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v8, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p1, Lcom/b/a/g;->b:[B

    array-length v0, v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_2

    .line 103
    iget-object v3, p1, Lcom/b/a/g;->b:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    .line 104
    iget-object v3, p1, Lcom/b/a/g;->b:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 105
    iget-object v4, p1, Lcom/b/a/g;->b:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 108
    iget-object v5, p1, Lcom/b/a/g;->b:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    .line 110
    iget-object v6, p0, Lcom/b/a/o;->f:Ljava/util/List;

    new-instance v8, Lcom/b/a/o$a;

    int-to-float v2, v2

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v2, v9

    int-to-float v3, v3

    div-float/2addr v3, v9

    int-to-float v4, v4

    div-float/2addr v4, v9

    int-to-float v5, v5

    div-float/2addr v5, v9

    invoke-direct {v8, v2, v3, v4, v5}, Lcom/b/a/o$a;-><init>(FFFF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v7

    goto :goto_2

    .line 114
    :cond_2
    iget-object v0, p1, Lcom/b/a/g;->c:[I

    array-length v0, v0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 115
    iget-object v2, p1, Lcom/b/a/g;->c:[I

    add-int/lit8 v3, v1, 0x0

    aget v2, v2, v3

    .line 116
    iget-object v3, p1, Lcom/b/a/g;->c:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    .line 117
    iget-object v5, p1, Lcom/b/a/g;->c:[I

    add-int/lit8 v6, v1, 0x2

    aget v5, v5, v6

    .line 118
    iget-object v7, p0, Lcom/b/a/o;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v1, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x3

    goto :goto_3

    :cond_3
    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lcom/b/a/o;->i:Z

    return-void
.end method

.method public c()Lcom/b/a/o$b;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/b/a/o;->a:Lcom/b/a/o$b;

    return-object p0
.end method
