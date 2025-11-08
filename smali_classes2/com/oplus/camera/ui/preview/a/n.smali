.class public Lcom/oplus/camera/ui/preview/a/n;
.super Lcom/oplus/camera/ui/preview/a/y;
.source "FishEyeTexturePreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/a/n$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "0ms"


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field private c:Lcom/oplus/camera/ui/preview/a/n$a;

.field private d:I

.field private k:I

.field private l:Z

.field private m:Lcom/oplus/camera/ui/preview/a/aa;

.field private n:Lcom/oplus/camera/gl/s;

.field private o:Lcom/oplus/camera/gl/s;

.field private p:Lcom/oplus/camera/gl/s;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize, height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FishEyeTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/n;->k:I

    .line 253
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/n;->d:I

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/n;->n:Lcom/oplus/camera/gl/s;

    const-string v1, "FishEyeTexturePreview"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/n;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 174
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/n;->n:Lcom/oplus/camera/gl/s;

    invoke-static {v0}, Lcom/oplus/camera/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-virtual {v2, p1, v0}, Lcom/oplus/camera/gl/s;->a(Lcom/oplus/camera/gl/h;I)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTextures, mFishEyeCoverTexture.getId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/n;->n:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/n;->o:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/n;->o:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTextures, mInputTexture.getId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/n;->o:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/n;->p:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/n;->p:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareTextures, mOutputTexture.getId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/n;->p:Lcom/oplus/camera/gl/s;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/s;->e()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/s;)V
    .locals 2

    const-string v0, "FishEyeTexturePreview"

    const-string v1, "setOutputTexture"

    .line 244
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/n;->p:Lcom/oplus/camera/gl/s;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/n;->m:Lcom/oplus/camera/ui/preview/a/aa;

    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(I)Z
    .locals 1

    .line 100
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/n;->a_(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/n;->m:Lcom/oplus/camera/ui/preview/a/aa;

    if-nez p0, :cond_1

    return v0

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/aa;->c()Z

    move-result p0

    return p0
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$a;)Z
    .locals 11

    .line 194
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 200
    :cond_0
    iget-object v2, p1, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/n;->p:Lcom/oplus/camera/gl/s;

    invoke-interface {v2, v3}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/s;)V

    .line 201
    iget-object v4, p1, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/a/n;->n:Lcom/oplus/camera/gl/s;

    iget-object v6, p1, Lcom/oplus/camera/ui/preview/a/y$a;->i:[F

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/oplus/camera/ui/preview/a/n;->k:I

    iget v10, p0, Lcom/oplus/camera/ui/preview/a/n;->d:I

    invoke-interface/range {v4 .. v10}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    .line 202
    iget-object p0, p1, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    invoke-interface {p0}, Lcom/oplus/camera/gl/h;->h()V

    .line 204
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide p0

    .line 206
    invoke-static {v0, v1, p0, p1}, Lcom/oplus/camera/algovisualization/a;->a(JJ)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/ui/preview/a/n;->a:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public a_(I)Z
    .locals 0

    .line 258
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/n;->d()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 0

    const/16 p0, 0x800

    return p0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/n;->o:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public g()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/n;->p:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i()V
    .locals 5

    const-string v0, "FishEyeTexturePreview"

    const-string v1, "newTextures"

    .line 146
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/n;->k:I

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/n;->d:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/n;->b:Landroid/graphics/Bitmap;

    .line 150
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/n;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 151
    new-instance v1, Lcom/oplus/camera/ui/preview/a/n$a;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/n;->j:Landroid/content/Context;

    const v3, 0x7f060445

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget v3, p0, Lcom/oplus/camera/ui/preview/a/n;->d:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x6

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/oplus/camera/ui/preview/a/n$a;-><init>(IF)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/n;->c:Lcom/oplus/camera/ui/preview/a/n$a;

    .line 152
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/n;->c:Lcom/oplus/camera/ui/preview/a/n$a;

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/n;->k:I

    iget v3, p0, Lcom/oplus/camera/ui/preview/a/n;->d:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/oplus/camera/ui/preview/a/n$a;->setBounds(IIII)V

    .line 153
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/n;->c:Lcom/oplus/camera/ui/preview/a/n$a;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/n$a;->draw(Landroid/graphics/Canvas;)V

    .line 156
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/n;->k:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/n;->d:I

    invoke-direct {v0, v1, v2, v4}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/n;->n:Lcom/oplus/camera/gl/s;

    .line 157
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/n;->k:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/n;->d:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/n;->o:Lcom/oplus/camera/gl/s;

    .line 158
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/n;->k:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/n;->d:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/n;->p:Lcom/oplus/camera/gl/s;

    .line 159
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/n;->l:Z

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "FishEyeTexturePreview"

    const-string v1, "recycleTextures"

    .line 213
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/n;->l:Z

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/n;->n:Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 221
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/n;->n:Lcom/oplus/camera/gl/s;

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/n;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/n;->b:Landroid/graphics/Bitmap;

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/n;->o:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_3

    .line 230
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 231
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/n;->o:Lcom/oplus/camera/gl/s;

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/n;->p:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_4

    .line 235
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 236
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/n;->p:Lcom/oplus/camera/gl/s;

    :cond_4
    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/n;->l:Z

    return-void
.end method
