.class public Lcom/oplus/camera/ui/b/a;
.super Ljava/lang/Object;
.source "CameraSuperTextUI.java"

# interfaces
.implements Lcom/oplus/camera/d;


# instance fields
.field private g:Landroid/app/Activity;

.field private h:Lcom/oplus/camera/ui/CameraUIListener;

.field private i:Lcom/oplus/camera/ui/control/a;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;

.field private m:Lcom/oplus/camera/ui/control/e;

.field private n:Z

.field private o:Lcom/oplus/camera/ui/widget/RoundImageView;

.field private p:Lcom/a/a/j;

.field private q:Landroid/animation/ObjectAnimator;

.field private r:Landroid/animation/ObjectAnimator;

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIListener;Lcom/oplus/camera/ui/control/a;)V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/oplus/camera/ui/b/a;->g:Landroid/app/Activity;

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/ui/b/a;->h:Lcom/oplus/camera/ui/CameraUIListener;

    .line 39
    iput-object v0, p0, Lcom/oplus/camera/ui/b/a;->i:Lcom/oplus/camera/ui/control/a;

    .line 40
    iput-object v0, p0, Lcom/oplus/camera/ui/b/a;->j:Landroid/view/ViewGroup;

    .line 42
    iput-object v0, p0, Lcom/oplus/camera/ui/b/a;->k:Landroid/graphics/Bitmap;

    .line 43
    iput-object v0, p0, Lcom/oplus/camera/ui/b/a;->l:Landroid/graphics/Bitmap;

    .line 44
    iput-object v0, p0, Lcom/oplus/camera/ui/b/a;->m:Lcom/oplus/camera/ui/control/e;

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/oplus/camera/ui/b/a;->n:Z

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/ui/b/a;->o:Lcom/oplus/camera/ui/widget/RoundImageView;

    .line 47
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/ui/b/a;->p:Lcom/a/a/j;

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/ui/b/a;->q:Landroid/animation/ObjectAnimator;

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/ui/b/a;->r:Landroid/animation/ObjectAnimator;

    .line 50
    iput-boolean v1, p0, Lcom/oplus/camera/ui/b/a;->s:Z

    .line 51
    iput-boolean v1, p0, Lcom/oplus/camera/ui/b/a;->t:Z

    .line 52
    iput v1, p0, Lcom/oplus/camera/ui/b/a;->u:I

    .line 53
    iput v1, p0, Lcom/oplus/camera/ui/b/a;->v:I

    .line 61
    new-instance v0, Lcom/oplus/camera/ui/b/a$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/b/a$1;-><init>(Lcom/oplus/camera/ui/b/a;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/b/a;->w:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/oplus/camera/ui/b/a;->g:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lcom/oplus/camera/ui/b/a;->h:Lcom/oplus/camera/ui/CameraUIListener;

    .line 58
    iput-object p3, p0, Lcom/oplus/camera/ui/b/a;->i:Lcom/oplus/camera/ui/control/a;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 201
    iget-object p0, p0, Lcom/oplus/camera/ui/b/a;->h:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->ax()Landroid/util/Size;

    move-result-object p0

    const-string v0, "CameraSuperTextUI"

    if-nez p0, :cond_0

    const-string p0, "createAnimBitmap, preview size is null"

    .line 204
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 212
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    .line 214
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p0

    int-to-float v2, p0

    div-float/2addr v2, v1

    float-to-int v1, v2

    goto :goto_0

    .line 217
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    .line 218
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    div-int p0, v2, p0

    .line 221
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAnimBitmap, previewFrameWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", previewFrameHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p0, v2}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v1, 0x0

    .line 224
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 226
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 227
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 228
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    const/4 v3, 0x0

    .line 227
    invoke-virtual {v1, p1, v2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 229
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 230
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAnimBitmap, result width: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 178
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/b/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/b/a;->l:Landroid/graphics/Bitmap;

    .line 179
    new-instance p1, Lcom/oplus/camera/ui/widget/RoundImageView;

    iget-object v0, p0, Lcom/oplus/camera/ui/b/a;->g:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/oplus/camera/ui/widget/RoundImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/b/a;->o:Lcom/oplus/camera/ui/widget/RoundImageView;

    .line 180
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/oplus/camera/ui/b/a;->l:Landroid/graphics/Bitmap;

    .line 181
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/b/a;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 183
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 p2, 0xd

    .line 184
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 186
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xa

    .line 187
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 188
    iget-object v0, p0, Lcom/oplus/camera/ui/b/a;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 189
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 192
    :goto_0
    iget-object p2, p0, Lcom/oplus/camera/ui/b/a;->o:Lcom/oplus/camera/ui/widget/RoundImageView;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/widget/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object p1, p0, Lcom/oplus/camera/ui/b/a;->o:Lcom/oplus/camera/ui/widget/RoundImageView;

    iget-object p2, p0, Lcom/oplus/camera/ui/b/a;->l:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/widget/RoundImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    iget-object p1, p0, Lcom/oplus/camera/ui/b/a;->j:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/oplus/camera/ui/b/a;->o:Lcom/oplus/camera/ui/widget/RoundImageView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 195
    iget-object p1, p0, Lcom/oplus/camera/ui/b/a;->o:Lcom/oplus/camera/ui/widget/RoundImageView;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/widget/RoundImageView;->setVisibility(I)V

    .line 196
    iget-object p0, p0, Lcom/oplus/camera/ui/b/a;->o:Lcom/oplus/camera/ui/widget/RoundImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/RoundImageView;->setAlpha(F)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/b/a;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/oplus/camera/ui/b/a;->d()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/b/a;Lcom/oplus/camera/ui/control/ThumbImageView;Lcom/oplus/camera/ui/control/e;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/b/a;->a(Lcom/oplus/camera/ui/control/ThumbImageView;Lcom/oplus/camera/ui/control/e;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/control/ThumbImageView;Lcom/oplus/camera/ui/control/e;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p3, :cond_3

    .line 238
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CameraSuperTextUI"

    const-string v1, "updateThumbnailWithoutAnimation"

    .line 242
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 247
    invoke-virtual {p1, p3, v1, v1}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    move-result-object p3

    iget v0, p0, Lcom/oplus/camera/ui/b/a;->v:I

    invoke-static {p3, v0}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/b/a;->i:Lcom/oplus/camera/ui/control/a;

    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/control/a;->b(Lcom/oplus/camera/ui/control/e;)V

    .line 252
    iget-object v0, p0, Lcom/oplus/camera/ui/b/a;->i:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/e;)V

    .line 253
    iget-object p2, p0, Lcom/oplus/camera/ui/b/a;->i:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {p2, p3, v1, v1}, Lcom/oplus/camera/ui/control/a;->a(Landroid/graphics/Bitmap;IZ)V

    :cond_2
    const/4 p2, 0x1

    .line 256
    invoke-virtual {p1, p3, v1, v1, p2}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Landroid/graphics/Bitmap;IZZ)V

    .line 257
    iget-object p1, p0, Lcom/oplus/camera/ui/b/a;->h:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIListener;->c(Z)V

    .line 258
    iget-object p1, p0, Lcom/oplus/camera/ui/b/a;->h:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->au()V

    .line 260
    invoke-direct {p0}, Lcom/oplus/camera/ui/b/a;->e()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/b/a;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/oplus/camera/ui/b/a;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/b/a;)Lcom/oplus/camera/ui/widget/RoundImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/ui/b/a;->o:Lcom/oplus/camera/ui/widget/RoundImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/b/a;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/oplus/camera/ui/b/a;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/b/a;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/ui/b/a;->w:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/b/a;)Lcom/oplus/camera/ui/control/e;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/ui/b/a;->m:Lcom/oplus/camera/ui/control/e;

    return-object p0
.end method

.method private d()V
    .locals 19

    move-object/from16 v0, p0

    .line 264
    iget-object v1, v0, Lcom/oplus/camera/ui/b/a;->i:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/control/a;->s()Lcom/oplus/camera/ui/control/ThumbImageView;

    move-result-object v1

    .line 266
    iget-object v2, v0, Lcom/oplus/camera/ui/b/a;->k:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/oplus/camera/ui/b/a;->m:Lcom/oplus/camera/ui/control/e;

    if-nez v2, :cond_0

    goto/16 :goto_8

    .line 270
    :cond_0
    iget-boolean v2, v0, Lcom/oplus/camera/ui/b/a;->n:Z

    const-string v3, "CameraSuperTextUI"

    if-eqz v2, :cond_1

    const-string v2, "executeSuperTextMoveAnimation, stop"

    .line 271
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v2, v0, Lcom/oplus/camera/ui/b/a;->m:Lcom/oplus/camera/ui/control/e;

    iget-object v3, v0, Lcom/oplus/camera/ui/b/a;->k:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/ui/b/a;->a(Lcom/oplus/camera/ui/control/ThumbImageView;Lcom/oplus/camera/ui/control/e;Landroid/graphics/Bitmap;)V

    .line 274
    iget-object v1, v0, Lcom/oplus/camera/ui/b/a;->j:Landroid/view/ViewGroup;

    iget-object v0, v0, Lcom/oplus/camera/ui/b/a;->o:Lcom/oplus/camera/ui/widget/RoundImageView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    .line 281
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v2

    if-nez v2, :cond_2

    .line 282
    iget-object v2, v0, Lcom/oplus/camera/ui/b/a;->h:Lcom/oplus/camera/ui/CameraUIListener;

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-interface {v2, v4, v5}, Lcom/oplus/camera/ui/CameraUIListener;->a(D)Landroid/util/Size;

    move-result-object v2

    goto :goto_0

    .line 284
    :cond_2
    iget-object v2, v0, Lcom/oplus/camera/ui/b/a;->h:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->ax()Landroid/util/Size;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    return-void

    .line 294
    :cond_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v4

    const/16 v5, 0x5a

    const/16 v6, 0x10e

    const/4 v7, 0x2

    if-nez v4, :cond_4

    .line 295
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v4, v7

    .line 296
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v8

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    div-int/2addr v2, v7

    add-int/2addr v8, v2

    goto :goto_2

    .line 299
    :cond_4
    iget v2, v0, Lcom/oplus/camera/ui/b/a;->v:I

    if-eq v2, v6, :cond_6

    if-ne v2, v5, :cond_5

    goto :goto_1

    .line 303
    :cond_5
    iget-object v2, v0, Lcom/oplus/camera/ui/b/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    div-int/lit8 v8, v2, 0x2

    .line 304
    iget-object v2, v0, Lcom/oplus/camera/ui/b/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    div-int/lit8 v4, v2, 0x2

    goto :goto_2

    .line 300
    :cond_6
    :goto_1
    iget-object v2, v0, Lcom/oplus/camera/ui/b/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    div-int/lit8 v8, v2, 0x2

    .line 301
    iget-object v2, v0, Lcom/oplus/camera/ui/b/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    div-int/lit8 v4, v2, 0x2

    .line 308
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "executeSuperTextMoveAnimation, centerX: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", centerY: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v2, v0, Lcom/oplus/camera/ui/b/a;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 311
    iget-object v9, v0, Lcom/oplus/camera/ui/b/a;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    .line 313
    new-array v10, v7, [I

    .line 314
    invoke-virtual {v1, v10}, Lcom/oplus/camera/ui/control/ThumbImageView;->getLocationOnScreen([I)V

    .line 315
    invoke-virtual {v1}, Lcom/oplus/camera/ui/control/ThumbImageView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    .line 316
    invoke-virtual {v1}, Lcom/oplus/camera/ui/control/ThumbImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    .line 320
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-nez v13, :cond_7

    .line 321
    aget v13, v10, v16

    int-to-float v13, v13

    div-float v17, v11, v14

    add-float v13, v13, v17

    .line 322
    aget v10, v10, v15

    :goto_3
    int-to-float v10, v10

    div-float v14, v12, v14

    :goto_4
    add-float/2addr v10, v14

    goto :goto_5

    .line 325
    :cond_7
    iget v13, v0, Lcom/oplus/camera/ui/b/a;->v:I

    if-ne v13, v6, :cond_8

    .line 326
    aget v13, v10, v16

    int-to-float v13, v13

    div-float v17, v12, v14

    sub-float v13, v13, v17

    .line 327
    aget v10, v10, v15

    int-to-float v10, v10

    div-float v14, v11, v14

    goto :goto_4

    :cond_8
    if-ne v13, v5, :cond_9

    .line 329
    aget v13, v10, v16

    int-to-float v13, v13

    div-float v17, v12, v14

    add-float v13, v13, v17

    .line 330
    aget v10, v10, v15

    int-to-float v10, v10

    div-float v14, v11, v14

    sub-float/2addr v10, v14

    goto :goto_5

    .line 332
    :cond_9
    aget v13, v10, v16

    int-to-float v13, v13

    div-float v17, v11, v14

    add-float v13, v13, v17

    .line 333
    aget v10, v10, v15

    goto :goto_3

    .line 337
    :goto_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeSuperTextMoveAnimation, thumbnailCenterX: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", thumbnailCenterY: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    div-float/2addr v11, v2

    div-float/2addr v12, v9

    .line 342
    iget-object v2, v0, Lcom/oplus/camera/ui/b/a;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070bd4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 344
    new-array v3, v7, [F

    fill-array-data v3, :array_0

    const-string v5, "scaleX"

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 345
    new-array v9, v7, [F

    fill-array-data v9, :array_1

    const-string v14, "scaleY"

    invoke-static {v14, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 346
    new-array v6, v7, [F

    fill-array-data v6, :array_2

    const-string v7, "alpha"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const/4 v7, 0x3

    move/from16 v18, v10

    .line 347
    new-array v10, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v10, v16

    aput-object v9, v10, v15

    const/4 v3, 0x2

    aput-object v6, v10, v3

    invoke-static {v1, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v9, 0x12c

    .line 348
    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iput-object v6, v0, Lcom/oplus/camera/ui/b/a;->q:Landroid/animation/ObjectAnimator;

    .line 350
    iget-object v6, v0, Lcom/oplus/camera/ui/b/a;->q:Landroid/animation/ObjectAnimator;

    new-instance v9, Lcom/oplus/camera/ui/b/a$3;

    invoke-direct {v9, v0, v1}, Lcom/oplus/camera/ui/b/a$3;-><init>(Lcom/oplus/camera/ui/b/a;Lcom/oplus/camera/ui/control/ThumbImageView;)V

    invoke-virtual {v6, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 378
    new-array v1, v3, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v1, v16

    aput v11, v1, v15

    invoke-static {v5, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 379
    new-array v5, v3, [F

    aput v6, v5, v16

    aput v12, v5, v15

    invoke-static {v14, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 380
    new-array v6, v3, [F

    const/4 v3, 0x0

    aput v3, v6, v16

    int-to-float v2, v2

    div-float/2addr v2, v11

    aput v2, v6, v15

    const-string v2, "mRadius"

    invoke-static {v2, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 384
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    int-to-float v4, v4

    sub-float/2addr v13, v4

    int-to-float v4, v8

    sub-float v10, v18, v4

    move v6, v13

    :goto_6
    const/4 v4, 0x2

    goto :goto_7

    .line 389
    :cond_b
    iget v6, v0, Lcom/oplus/camera/ui/b/a;->v:I

    const/16 v9, 0x10e

    if-ne v6, v9, :cond_c

    int-to-float v6, v8

    sub-float v6, v18, v6

    int-to-float v4, v4

    sub-float/2addr v13, v4

    neg-float v10, v13

    goto :goto_6

    :cond_c
    const/16 v9, 0x5a

    if-ne v6, v9, :cond_a

    int-to-float v6, v8

    sub-float v10, v18, v6

    neg-float v6, v10

    int-to-float v4, v4

    sub-float v10, v13, v4

    goto :goto_6

    .line 401
    :goto_7
    new-array v8, v4, [F

    aput v3, v8, v16

    aput v6, v8, v15

    const-string v6, "translationX"

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 402
    new-array v8, v4, [F

    aput v3, v8, v16

    aput v10, v8, v15

    const-string v3, "translationY"

    invoke-static {v3, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 403
    iget-object v8, v0, Lcom/oplus/camera/ui/b/a;->o:Lcom/oplus/camera/ui/widget/RoundImageView;

    const/4 v9, 0x5

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v9, v16

    aput-object v5, v9, v15

    aput-object v6, v9, v4

    aput-object v3, v9, v7

    const/4 v1, 0x4

    aput-object v2, v9, v1

    invoke-static {v8, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 404
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/ui/b/a;->r:Landroid/animation/ObjectAnimator;

    .line 405
    iget-object v1, v0, Lcom/oplus/camera/ui/b/a;->o:Lcom/oplus/camera/ui/widget/RoundImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/oplus/camera/ui/widget/RoundImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 407
    iget-object v1, v0, Lcom/oplus/camera/ui/b/a;->r:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/oplus/camera/ui/b/a$4;

    invoke-direct {v2, v0}, Lcom/oplus/camera/ui/b/a$4;-><init>(Lcom/oplus/camera/ui/b/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 434
    iget-object v1, v0, Lcom/oplus/camera/ui/b/a;->r:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 435
    iget-object v0, v0, Lcom/oplus/camera/ui/b/a;->q:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_d
    :goto_8
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic e(Lcom/oplus/camera/ui/b/a;)Landroid/graphics/Bitmap;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/ui/b/a;->k:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private e()V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/oplus/camera/ui/b/a;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/oplus/camera/ui/b/a;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/b/a;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/oplus/camera/ui/b/a;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcom/oplus/camera/ui/b/a;->k:Landroid/graphics/Bitmap;

    .line 460
    iput-object v0, p0, Lcom/oplus/camera/ui/b/a;->l:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/ui/b/a;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/oplus/camera/ui/b/a;->e()V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/ui/b/a;)Landroid/view/ViewGroup;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/ui/b/a;->j:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/b/a;)Lcom/oplus/camera/ui/CameraUIListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oplus/camera/ui/b/a;->h:Lcom/oplus/camera/ui/CameraUIListener;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/oplus/camera/ui/b/a;->n:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 447
    iput p1, p0, Lcom/oplus/camera/ui/b/a;->u:I

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Lcom/oplus/camera/ui/control/e;IZ)V
    .locals 3

    const-string v0, "CameraSuperTextUI"

    const-string v1, "showSuperTextResultView start"

    .line 113
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/oplus/camera/ui/b/a;->k:Landroid/graphics/Bitmap;

    .line 116
    iput-object p2, p0, Lcom/oplus/camera/ui/b/a;->m:Lcom/oplus/camera/ui/control/e;

    .line 117
    iput p3, p0, Lcom/oplus/camera/ui/b/a;->v:I

    .line 118
    iget-object p3, p0, Lcom/oplus/camera/ui/b/a;->i:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/control/a;->s()Lcom/oplus/camera/ui/control/ThumbImageView;

    move-result-object p3

    .line 121
    iget-boolean v1, p0, Lcom/oplus/camera/ui/b/a;->n:Z

    if-nez v1, :cond_2

    if-nez p4, :cond_0

    goto/16 :goto_0

    .line 128
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/ui/b/a;->h:Lcom/oplus/camera/ui/CameraUIListener;

    const-wide p3, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-interface {p2, p3, p4}, Lcom/oplus/camera/ui/CameraUIListener;->a(D)Landroid/util/Size;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 135
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    .line 137
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSuperTextResultView, size.width: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size.height: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", topBarHeight: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bitmap.width: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bitmap.height: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 137
    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p1, p3}, Lcom/oplus/camera/ui/b/a;->a(Landroid/graphics/Bitmap;I)V

    .line 143
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "showSuperTextResultView, bitmapWidth: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", bitmapHeight: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/oplus/camera/ui/b/a;->p:Lcom/a/a/j;

    invoke-virtual {p1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object p1

    const-wide/high16 p2, 0x4014000000000000L    # 5.0

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    .line 146
    invoke-static {p2, p3, v0, v1}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object p2

    .line 147
    invoke-virtual {p1, p2}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    const/4 p2, 0x0

    .line 148
    invoke-virtual {p1, p2}, Lcom/a/a/f;->a(Z)Lcom/a/a/f;

    .line 149
    new-instance p2, Lcom/oplus/camera/ui/b/a$2;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/ui/b/a$2;-><init>(Lcom/oplus/camera/ui/b/a;Lcom/a/a/f;)V

    invoke-virtual {p1, p2}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 174
    invoke-virtual {p1, p2, p3}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    return-void

    .line 122
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSuperTextResultView, mbPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/ui/b/a;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needShowResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p3, p2, p1}, Lcom/oplus/camera/ui/b/a;->a(Lcom/oplus/camera/ui/control/ThumbImageView;Lcom/oplus/camera/ui/control/e;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/oplus/camera/ui/b/a;->j:Landroid/view/ViewGroup;

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/oplus/camera/ui/b/a;->n:Z

    .line 89
    iget-boolean v0, p0, Lcom/oplus/camera/ui/b/a;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/b/a;->q:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 91
    iput-object v1, p0, Lcom/oplus/camera/ui/b/a;->q:Landroid/animation/ObjectAnimator;

    .line 94
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/b/a;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/b/a;->r:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 96
    iput-object v1, p0, Lcom/oplus/camera/ui/b/a;->r:Landroid/animation/ObjectAnimator;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/b/a;->j:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/oplus/camera/ui/b/a;->o:Lcom/oplus/camera/ui/widget/RoundImageView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/oplus/camera/ui/b/a;->w:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x65

    .line 104
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iput-object v1, p0, Lcom/oplus/camera/ui/b/a;->w:Landroid/os/Handler;

    .line 108
    :cond_0
    iput-object v1, p0, Lcom/oplus/camera/ui/b/a;->g:Landroid/app/Activity;

    .line 109
    iput-object v1, p0, Lcom/oplus/camera/ui/b/a;->j:Landroid/view/ViewGroup;

    return-void
.end method
