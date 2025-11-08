.class Lcom/oplus/camera/gl/x$a;
.super Ljava/lang/Object;
.source "UploadedTexture.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/gl/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Landroid/graphics/Bitmap$Config;

.field public c:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/gl/x$1;)V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/oplus/camera/gl/x$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/oplus/camera/gl/x$a;
    .locals 1

    .line 308
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/gl/x$a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 310
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lcom/oplus/camera/gl/x$a;->a()Lcom/oplus/camera/gl/x$a;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 296
    instance-of v0, p1, Lcom/oplus/camera/gl/x$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 300
    :cond_0
    check-cast p1, Lcom/oplus/camera/gl/x$a;

    .line 302
    iget-boolean v0, p0, Lcom/oplus/camera/gl/x$a;->a:Z

    iget-boolean v2, p1, Lcom/oplus/camera/gl/x$a;->a:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/gl/x$a;->b:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcom/oplus/camera/gl/x$a;->b:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_1

    iget p0, p0, Lcom/oplus/camera/gl/x$a;->c:I

    iget p1, p1, Lcom/oplus/camera/gl/x$a;->c:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/oplus/camera/gl/x$a;->b:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/gl/x$a;->c:I

    xor-int/2addr v0, v1

    .line 291
    iget-boolean p0, p0, Lcom/oplus/camera/gl/x$a;->a:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    return v0
.end method
