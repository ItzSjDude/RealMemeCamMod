.class public Lcom/oplus/camera/ad;
.super Lcom/oplus/camera/c;
.source "SloganUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ad$a;
    }
.end annotation


# static fields
.field private static S:Landroid/graphics/Typeface;


# instance fields
.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private aa:Ljava/lang/String;

.field private ab:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:Z

.field private ag:I

.field private ah:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/c;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;I)V

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/oplus/camera/ad;->T:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/oplus/camera/ad;->U:Ljava/lang/String;

    const-string p1, "Shot on "

    .line 51
    iput-object p1, p0, Lcom/oplus/camera/ad;->V:Ljava/lang/String;

    const-string p1, "Shot by "

    .line 52
    iput-object p1, p0, Lcom/oplus/camera/ad;->W:Ljava/lang/String;

    const-string p1, "MP"

    .line 53
    iput-object p1, p0, Lcom/oplus/camera/ad;->X:Ljava/lang/String;

    const-string p1, " AI "

    .line 54
    iput-object p1, p0, Lcom/oplus/camera/ad;->Y:Ljava/lang/String;

    const-string p1, " Camera"

    .line 55
    iput-object p1, p0, Lcom/oplus/camera/ad;->Z:Ljava/lang/String;

    const-string p1, ""

    .line 56
    iput-object p1, p0, Lcom/oplus/camera/ad;->aa:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/oplus/camera/ad;->ab:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/oplus/camera/ad;->ac:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/oplus/camera/ad;->ad:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/oplus/camera/ad;->ae:Ljava/lang/String;

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/oplus/camera/ad;->af:Z

    const/4 p2, -0x1

    .line 62
    iput p2, p0, Lcom/oplus/camera/ad;->ag:I

    .line 63
    iput-boolean p1, p0, Lcom/oplus/camera/ad;->ah:Z

    .line 68
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p2

    if-nez p2, :cond_1

    .line 69
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->J()V

    .line 72
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/ad;->L:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/oplus/camera/ad;->L:Ljava/lang/String;

    const-string p3, "realme 8"

    .line 73
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/oplus/camera/ad;->L:Ljava/lang/String;

    const-string p3, "realme 8 Pro"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const/4 p1, 0x1

    :cond_3
    iput-boolean p1, p0, Lcom/oplus/camera/ad;->af:Z

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)F
    .locals 1

    .line 473
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSloganSize sizeType: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseSloganUtil"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f030017

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    .line 477
    aget-object p1, p0, p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p0, 0x3f8ccccd    # 1.1f

    return p0

    :cond_0
    const/4 p1, 0x0

    .line 479
    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x3f666666    # 0.9f

    return p0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method private a(IF)Landroid/graphics/Bitmap;
    .locals 7

    .line 436
    iget-object p0, p0, Lcom/oplus/camera/ad;->k:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 437
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 438
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 440
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private a(F)Lcom/oplus/camera/ad$a;
    .locals 3

    .line 416
    new-instance v0, Lcom/oplus/camera/ad$a;

    invoke-direct {v0}, Lcom/oplus/camera/ad$a;-><init>()V

    const v1, 0x7f0805aa

    .line 417
    iput v1, v0, Lcom/oplus/camera/ad$a;->l:I

    .line 419
    iget-boolean v1, p0, Lcom/oplus/camera/ad;->af:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0806a6

    .line 420
    iput v1, v0, Lcom/oplus/camera/ad$a;->l:I

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    const v2, 0x7f070aa1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/oplus/camera/ad$a;->m:I

    .line 424
    iget-object v1, p0, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    const v2, 0x7f070aa5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/oplus/camera/ad$a;->f:I

    .line 425
    iget-object v1, p0, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    const v2, 0x7f070aa4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/oplus/camera/ad$a;->g:I

    .line 426
    iget-object v1, p0, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    const v2, 0x7f070a8e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/oplus/camera/ad$a;->r:F

    .line 427
    iget-object v1, p0, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    const v2, 0x7f070a9e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/oplus/camera/ad$a;->s:F

    .line 428
    iget-object v1, p0, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/oplus/camera/ad$a;->n:I

    .line 429
    iget-object p0, p0, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, v0, Lcom/oplus/camera/ad$a;->o:I

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FF)V
    .locals 1

    .line 204
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 205
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 206
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/16 p3, 0xff

    .line 207
    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 208
    invoke-virtual {p1, p2, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 0

    .line 215
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/camera/ad;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ad;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ad;->aa:Ljava/lang/String;

    .line 147
    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    const-string v0, "BaseSloganUtil"

    if-nez p1, :cond_7

    .line 148
    invoke-static {}, Lcom/oplus/camera/util/Util;->aH()I

    move-result p1

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSloganInfo, highPictureMP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x30

    if-gt v1, p1, :cond_0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ad;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ad;->ac:Ljava/lang/String;

    .line 156
    :cond_0
    iget-boolean v1, p0, Lcom/oplus/camera/ad;->af:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_1

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/camera/ad;->aa:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/ad;->X:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ad;->aa:Ljava/lang/String;

    :cond_1
    const-string p1, "com.oplus.camera.rear.num"

    .line 160
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p1

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSloganInfo, physicalBackCameraNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    .line 183
    iget-object p1, p0, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    const v1, 0x7f100508

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ad;->ad:Ljava/lang/String;

    goto :goto_0

    .line 179
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    const v1, 0x7f100507

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ad;->ad:Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    const v1, 0x7f100506

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ad;->ad:Ljava/lang/String;

    goto :goto_0

    .line 171
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    const v1, 0x7f100505

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ad;->ad:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Lcom/oplus/camera/ad;->ad:Ljava/lang/String;

    .line 186
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ad;->ad:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/camera/ad;->ac:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ad;->Y:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ad;->ad:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ad;->Z:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ad;->ae:Ljava/lang/String;

    goto :goto_1

    .line 189
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/camera/ad;->ac:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ad;->Y:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ad;->Z:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ad;->ae:Ljava/lang/String;

    goto :goto_1

    .line 195
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/camera/ad;->Y:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ad;->Z:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ad;->ae:Ljava/lang/String;

    .line 198
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSloganInfo, mXXMPAIBackCameraNumCamera: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ad;->ae:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object p0, p0, Lcom/oplus/camera/ad;->ae:Ljava/lang/String;

    return-object p0
.end method

.method private c(Landroid/util/Size;)F
    .locals 2

    .line 116
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-lt p0, v0, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method private k()Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "BaseSloganUtil"

    .line 126
    sget-object v1, Lcom/oplus/camera/ad;->S:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    return-object v1

    .line 131
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/ad;->k:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "fonts/RadomirTinkovGilroy-Medium.otf"

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/ad;->S:Landroid/graphics/Typeface;

    const-string p0, "create RadomirTinkovGilroy-Medium.otf typeface successful"

    .line 134
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object p0, Lcom/oplus/camera/ad;->S:Landroid/graphics/Typeface;

    const-string p0, "create RadomirTinkovGilroy-Medium.otf typeface fail"

    .line 138
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    sget-object p0, Lcom/oplus/camera/ad;->S:Landroid/graphics/Typeface;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;F)Landroid/graphics/Bitmap;
    .locals 1

    const-string p1, "BaseSloganUtil"

    const-string v0, "getLogoBitmap"

    .line 467
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0805aa

    .line 469
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ad;->a(IF)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/c$e;)Lcom/oplus/camera/c$a;
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v7, p3

    .line 220
    new-instance v8, Lcom/oplus/camera/c$a;

    invoke-direct {v8}, Lcom/oplus/camera/c$a;-><init>()V

    .line 221
    iget v1, v7, Lcom/oplus/camera/c$e;->f:I

    .line 222
    iget-object v9, v7, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    const-string v2, "pref_watermark_author_key"

    const-string v3, ""

    .line 223
    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    iget-object v10, v7, Lcom/oplus/camera/c$e;->d:Ljava/lang/String;

    .line 225
    iget-object v11, v7, Lcom/oplus/camera/c$e;->c:Ljava/lang/String;

    const-string v3, "pref_watermark_position_key"

    const-string v4, "bottom_left_corner"

    .line 226
    invoke-virtual {v0, v3, v4}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 227
    iget-object v5, v6, Lcom/oplus/camera/ad;->L:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v5, :cond_1

    iget-object v5, v6, Lcom/oplus/camera/ad;->L:Ljava/lang/String;

    const-string v14, "realme 8"

    .line 228
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v6, Lcom/oplus/camera/ad;->L:Ljava/lang/String;

    const-string v14, "realme 8 Pro"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v5, v12

    goto :goto_0

    :cond_1
    move v5, v13

    :goto_0
    iput-boolean v5, v6, Lcom/oplus/camera/ad;->af:Z

    const-string v5, "bottom_center"

    .line 230
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 231
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 234
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createWatermarkBitmapHold, cameraId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pictureSize: Width x Height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v14, "BaseSloganUtil"

    .line 234
    invoke-static {v14, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v4, "pref_watermark_display_info_key"

    invoke-virtual {v0, v4, v3}, Lcom/oplus/camera/ComboPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 240
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "chooseDisplayValues is null or empty"

    .line 241
    invoke-static {v14, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 246
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 247
    aget-object v4, v4, v12

    const-string v5, "pref_watermark_size_key"

    invoke-virtual {v0, v5, v4}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v4, v6, Lcom/oplus/camera/ad;->k:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 249
    aget-object v5, v4, v13

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 250
    aget-object v15, v4, v12

    invoke-interface {v3, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x2

    .line 251
    aget-object v4, v4, v16

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createWatermarkBitmapHold, deviceOn: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", locationOn: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", timeOn: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v3, v6, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    const v12, 0x7f070aa8

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 256
    iget-object v12, v6, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    const v13, 0x7f070aa9

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    .line 257
    iget-object v13, v6, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    const v7, 0x7f070aaa

    invoke-virtual {v13, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v13, p1

    .line 258
    invoke-direct {v6, v13, v0}, Lcom/oplus/camera/ad;->a(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    invoke-direct {v6, v9}, Lcom/oplus/camera/ad;->c(Landroid/util/Size;)F

    move-result v13

    mul-float/2addr v0, v13

    const v13, 0x4031c6fc

    div-float/2addr v0, v13

    .line 259
    iget-object v13, v6, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    move-object/from16 v18, v8

    const v8, 0x7f070aa3

    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v0

    .line 260
    iget-object v13, v6, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    move/from16 p1, v8

    const v8, 0x7f070aa7

    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v0

    .line 261
    iget-object v13, v6, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    move/from16 p2, v8

    const v8, 0x7f06050d

    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 262
    iget-object v13, v6, Lcom/oplus/camera/ad;->n:Landroid/content/res/Resources;

    move-object/from16 v19, v9

    const v9, 0x7f070a98

    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    .line 264
    invoke-direct {v6, v0}, Lcom/oplus/camera/ad;->a(F)Lcom/oplus/camera/ad$a;

    move-result-object v13

    move/from16 v20, v9

    .line 265
    iget v9, v13, Lcom/oplus/camera/ad$a;->l:I

    invoke-direct {v6, v9, v0}, Lcom/oplus/camera/ad;->a(IF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 267
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v21, v14

    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ad;->k()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 269
    iget v14, v13, Lcom/oplus/camera/ad$a;->s:F

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 270
    iget-object v14, v6, Lcom/oplus/camera/ad;->k:Landroid/app/Activity;

    move-object/from16 v22, v11

    const v11, 0x7f06004d

    invoke-virtual {v14, v11}, Landroid/app/Activity;->getColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    invoke-virtual {v9, v3, v12, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/16 v3, 0xfd

    .line 272
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 279
    iget v3, v13, Lcom/oplus/camera/ad$a;->m:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/2addr v3, v7

    iget v7, v13, Lcom/oplus/camera/ad$a;->g:I

    add-int/2addr v3, v7

    if-nez v5, :cond_6

    .line 281
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    const/4 v11, 0x0

    goto :goto_2

    .line 283
    :cond_6
    :goto_1
    invoke-direct {v6, v1}, Lcom/oplus/camera/ad;->b(I)Ljava/lang/String;

    .line 285
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v6, Lcom/oplus/camera/ad;->W:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/oplus/camera/ad;->ab:Ljava/lang/String;

    .line 289
    :cond_7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 290
    iget-object v7, v6, Lcom/oplus/camera/ad;->ae:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v11, 0x0

    invoke-virtual {v9, v7, v11, v8, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 291
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_2
    if-eqz v4, :cond_8

    .line 295
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    .line 297
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 298
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 299
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    if-eqz v15, :cond_9

    move-object/from16 v11, v22

    .line 303
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v12, v12

    goto :goto_4

    :cond_9
    move-object/from16 v11, v22

    const/4 v12, 0x0

    :goto_4
    if-le v12, v7, :cond_a

    move v14, v12

    goto :goto_5

    :cond_a
    move v14, v7

    :goto_5
    if-lez v1, :cond_b

    move v8, v1

    :cond_b
    move/from16 v22, v4

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v11

    const-string v11, "createWatermarkBitmapHold, timeWidth: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", locationWidth:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", locationHeight: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", textAICameraHeight:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", locationTimeMaxPadding: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v7, v21

    invoke-static {v7, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 315
    rem-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_c

    add-int/lit8 v1, v1, 0x1

    :cond_c
    move v8, v1

    .line 319
    rem-int/lit8 v1, v3, 0x2

    if-eqz v1, :cond_d

    add-int/lit8 v3, v3, 0x1

    :cond_d
    move v11, v3

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWatermarkBitmapHold, composeWidth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", composeHeight: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v11, v1}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 326
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 327
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x3

    move/from16 v21, v11

    const/4 v11, 0x0

    invoke-direct {v1, v11, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/high16 v11, 0x40000000    # 2.0f

    if-nez v5, :cond_f

    .line 332
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_6

    :cond_e
    move-object/from16 v20, v4

    move/from16 v17, v22

    goto :goto_9

    .line 337
    :cond_f
    :goto_6
    iget v1, v13, Lcom/oplus/camera/ad$a;->s:F

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 338
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v6, Lcom/oplus/camera/ad;->aa:Ljava/lang/String;

    goto :goto_7

    :cond_10
    iget-object v1, v6, Lcom/oplus/camera/ad;->ab:Ljava/lang/String;

    :goto_7
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 339
    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    sub-float v3, v3, v20

    div-float/2addr v3, v11

    .line 340
    iget v1, v13, Lcom/oplus/camera/ad$a;->m:I

    int-to-float v1, v1

    invoke-direct {v6, v4, v0, v3, v1}, Lcom/oplus/camera/ad;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FF)V

    .line 343
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v6, Lcom/oplus/camera/ad;->aa:Ljava/lang/String;

    goto :goto_8

    :cond_11
    iget-object v1, v6, Lcom/oplus/camera/ad;->ab:Ljava/lang/String;

    :goto_8
    move-object v2, v1

    .line 344
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    add-float v3, v3, v20

    iget v0, v13, Lcom/oplus/camera/ad$a;->m:I

    int-to-float v0, v0

    add-float v5, v0, p2

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v20, v4

    move/from16 v17, v22

    move v4, v5

    move-object v5, v9

    .line 343
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ad;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_9
    if-eqz v17, :cond_12

    .line 358
    iget v0, v13, Lcom/oplus/camera/ad$a;->r:F

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    sub-int v0, v8, v14

    .line 359
    iget v1, v13, Lcom/oplus/camera/ad$a;->f:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, v13, Lcom/oplus/camera/ad$a;->m:I

    int-to-float v0, v0

    add-float v4, v0, p2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v10

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ad;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWatermarkBitmapHold, drawText mCurrentAdress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    if-eqz v15, :cond_13

    .line 367
    iget v0, v13, Lcom/oplus/camera/ad$a;->r:F

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    int-to-float v0, v8

    move-object/from16 v10, v23

    .line 380
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    div-float v3, v0, v11

    .line 381
    iget v0, v13, Lcom/oplus/camera/ad$a;->m:I

    int-to-float v0, v0

    add-float v0, v0, p2

    add-float v4, v0, p1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v10

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ad;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWatermarkBitmapHold, drawText mDateTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_13
    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-le v8, v0, :cond_16

    if-eqz v12, :cond_16

    int-to-float v0, v8

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    .line 391
    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    move/from16 v3, v21

    int-to-float v2, v3

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 395
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_14

    add-int/lit8 v0, v0, -0x1

    .line 399
    :cond_14
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_15

    add-int/lit8 v1, v1, -0x1

    :cond_15
    const/4 v2, 0x1

    .line 403
    invoke-static {v12, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    const-string v0, "createWatermarkBitmapHold, createScaledBitmap now"

    .line 405
    invoke-static {v7, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    move-object/from16 v0, v18

    .line 409
    invoke-virtual {v0, v12}, Lcom/oplus/camera/c$a;->a(Landroid/graphics/Bitmap;)V

    move-object/from16 v1, p3

    .line 410
    invoke-virtual {v0, v1}, Lcom/oplus/camera/c$a;->a(Lcom/oplus/camera/c$e;)V

    return-object v0
.end method

.method public a(Landroid/util/Size;Lcom/oplus/camera/q$a;Ljava/util/HashSet;ZIIIZLjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Lcom/oplus/camera/q$a;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;ZIIIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p7

    .line 78
    iget-object v2, v0, Lcom/oplus/camera/ad;->R:Lcom/oplus/camera/c$e;

    iput v1, v2, Lcom/oplus/camera/c$e;->f:I

    .line 80
    iget v2, v0, Lcom/oplus/camera/ad;->ag:I

    if-eq v2, v1, :cond_0

    .line 81
    iput v1, v0, Lcom/oplus/camera/ad;->ag:I

    const/4 v1, 0x1

    .line 82
    iput-boolean v1, v0, Lcom/oplus/camera/ad;->ah:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 84
    iput-boolean v1, v0, Lcom/oplus/camera/ad;->ah:Z

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p8

    move-object/from16 v8, p9

    .line 87
    invoke-super/range {v0 .. v8}, Lcom/oplus/camera/c;->a(Landroid/util/Size;Lcom/oplus/camera/q$a;Ljava/util/HashSet;ZIIZLjava/lang/String;)V

    return-void
.end method

.method protected i()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/oplus/camera/ad;->ah:Z

    return p0
.end method

.method protected j()Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/oplus/camera/ad;->af:Z

    return p0
.end method
