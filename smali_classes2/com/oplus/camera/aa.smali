.class public Lcom/oplus/camera/aa;
.super Ljava/lang/Object;
.source "QrCodeManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/aa$a;
    }
.end annotation


# instance fields
.field private A:Lcom/oplus/camera/o/a/f;

.field private B:Lcom/oplus/camera/util/YuvUtil;

.field private C:I

.field private D:Landroid/os/Handler;

.field private a:Landroid/app/Activity;

.field private b:Lcom/oplus/camera/o/c;

.field private c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

.field private d:Lcom/oplus/camera/ui/CameraQrCodeView;

.field private e:Lcom/oplus/camera/o/b;

.field private f:Landroid/app/KeyguardManager;

.field private g:Lcom/oplus/camera/o/b;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/os/Handler;

.field private q:Landroid/os/Handler;

.field private r:I

.field private s:Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;

.field private t:Ljava/lang/Object;

.field private u:Lcom/oplus/camera/ComboPreferences;

.field private v:Lcom/oplus/camera/capmode/a;

.field private w:I

.field private x:Lcom/oplus/camera/aa$a;

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/google/zxing/qrcode/QRCodeReader;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/capmode/a;I)V
    .locals 6

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    .line 104
    iput-object v0, p0, Lcom/oplus/camera/aa;->b:Lcom/oplus/camera/o/c;

    .line 105
    iput-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    .line 106
    iput-object v0, p0, Lcom/oplus/camera/aa;->d:Lcom/oplus/camera/ui/CameraQrCodeView;

    .line 107
    iput-object v0, p0, Lcom/oplus/camera/aa;->e:Lcom/oplus/camera/o/b;

    .line 108
    iput-object v0, p0, Lcom/oplus/camera/aa;->f:Landroid/app/KeyguardManager;

    .line 111
    iput-object v0, p0, Lcom/oplus/camera/aa;->g:Lcom/oplus/camera/o/b;

    const/4 v1, 0x0

    .line 113
    iput-boolean v1, p0, Lcom/oplus/camera/aa;->i:Z

    const/4 v2, 0x1

    .line 114
    iput-boolean v2, p0, Lcom/oplus/camera/aa;->j:Z

    .line 115
    iput-boolean v2, p0, Lcom/oplus/camera/aa;->k:Z

    .line 116
    iput-boolean v1, p0, Lcom/oplus/camera/aa;->l:Z

    .line 117
    iput-boolean v1, p0, Lcom/oplus/camera/aa;->m:Z

    .line 118
    iput-boolean v1, p0, Lcom/oplus/camera/aa;->n:Z

    .line 119
    iput-boolean v1, p0, Lcom/oplus/camera/aa;->o:Z

    .line 120
    iput-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    .line 121
    iput-object v0, p0, Lcom/oplus/camera/aa;->q:Landroid/os/Handler;

    .line 122
    iput v1, p0, Lcom/oplus/camera/aa;->r:I

    .line 123
    iput-object v0, p0, Lcom/oplus/camera/aa;->s:Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;

    .line 124
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/aa;->t:Ljava/lang/Object;

    .line 125
    iput-object v0, p0, Lcom/oplus/camera/aa;->u:Lcom/oplus/camera/ComboPreferences;

    .line 126
    iput-object v0, p0, Lcom/oplus/camera/aa;->v:Lcom/oplus/camera/capmode/a;

    const/16 v2, 0xff

    .line 127
    iput v2, p0, Lcom/oplus/camera/aa;->w:I

    .line 128
    iput-object v0, p0, Lcom/oplus/camera/aa;->x:Lcom/oplus/camera/aa$a;

    .line 129
    iput-object v0, p0, Lcom/oplus/camera/aa;->y:Ljava/util/Map;

    .line 130
    iput-object v0, p0, Lcom/oplus/camera/aa;->z:Lcom/google/zxing/qrcode/QRCodeReader;

    .line 131
    iput-object v0, p0, Lcom/oplus/camera/aa;->A:Lcom/oplus/camera/o/a/f;

    .line 132
    iput-object v0, p0, Lcom/oplus/camera/aa;->B:Lcom/oplus/camera/util/YuvUtil;

    const/4 v2, -0x1

    .line 133
    iput v2, p0, Lcom/oplus/camera/aa;->C:I

    .line 135
    new-instance v2, Lcom/oplus/camera/aa$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/oplus/camera/aa$1;-><init>(Lcom/oplus/camera/aa;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oplus/camera/aa;->D:Landroid/os/Handler;

    .line 211
    iput-object p1, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    .line 212
    iput-object p2, p0, Lcom/oplus/camera/aa;->u:Lcom/oplus/camera/ComboPreferences;

    .line 213
    iput-object p3, p0, Lcom/oplus/camera/aa;->v:Lcom/oplus/camera/capmode/a;

    .line 214
    iput p4, p0, Lcom/oplus/camera/aa;->w:I

    .line 216
    iget-object p2, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    const p3, 0x7f090193

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    .line 217
    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result p3

    .line 218
    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getHeight()I

    move-result p2

    .line 219
    iget-object p4, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    invoke-virtual {p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v2, 0x7f070974

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 221
    new-instance v2, Lcom/oplus/camera/o/c;

    invoke-direct {v2}, Lcom/oplus/camera/o/c;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/aa;->b:Lcom/oplus/camera/o/c;

    .line 222
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/oplus/camera/aa;->h:I

    .line 223
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c003e

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    iput-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    .line 224
    iget-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    const v2, 0x7f0902f6

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setId(I)V

    .line 225
    iget-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-virtual {v0, p4, p3, p2, v1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a(IIII)V

    .line 226
    iget-object p2, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object p2, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    iget p3, p0, Lcom/oplus/camera/aa;->h:I

    invoke-virtual {p2, p3}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setDefaultPreviewHeight(I)V

    .line 228
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "keyguard"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    iput-object p2, p0, Lcom/oplus/camera/aa;->f:Landroid/app/KeyguardManager;

    .line 229
    new-instance p2, Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;

    invoke-direct {p2, p1}, Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oplus/camera/aa;->s:Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;

    .line 230
    new-instance p1, Lcom/oplus/camera/o/a/f;

    invoke-direct {p1}, Lcom/oplus/camera/o/a/f;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/aa;->A:Lcom/oplus/camera/o/a/f;

    .line 232
    new-instance p1, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {p1}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/aa;->z:Lcom/google/zxing/qrcode/QRCodeReader;

    .line 233
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/aa;->y:Ljava/util/Map;

    .line 234
    iget-object p1, p0, Lcom/oplus/camera/aa;->y:Ljava/util/Map;

    sget-object p2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    const-string p3, "utf-8"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object p1, p0, Lcom/oplus/camera/aa;->y:Ljava/util/Map;

    sget-object p2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object p1, p0, Lcom/oplus/camera/aa;->y:Ljava/util/Map;

    sget-object p2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    sget-object p3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object p1, p0, Lcom/oplus/camera/aa;->B:Lcom/oplus/camera/util/YuvUtil;

    if-nez p1, :cond_0

    .line 239
    new-instance p1, Lcom/oplus/camera/util/YuvUtil;

    invoke-direct {p1}, Lcom/oplus/camera/util/YuvUtil;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/aa;->B:Lcom/oplus/camera/util/YuvUtil;

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/aa;->o()V

    .line 244
    invoke-direct {p0}, Lcom/oplus/camera/aa;->q()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "QrCodeManager"

    const-string p1, "QrCodeManager, mbIsWifiQrcodeShare, cannot get packageManager!"

    .line 247
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a([Lcom/google/zxing/ResultPoint;)Landroid/graphics/RectF;
    .locals 11

    .line 401
    array-length p0, p1

    const/4 v0, 0x4

    if-ne v0, p0, :cond_0

    .line 404
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x0

    .line 406
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    const/4 v2, 0x2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 407
    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    aget-object v5, p1, v2

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    .line 409
    aget-object v5, p1, v0

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    aget-object v0, p1, v0

    .line 410
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v9, v0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    .line 409
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float p1, v5

    div-float/2addr p1, v3

    sub-float v0, v1, p1

    .line 411
    iput v0, p0, Landroid/graphics/RectF;->left:F

    sub-float v0, v4, p1

    .line 412
    iput v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    .line 413
    iput v1, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, p1

    .line 414
    iput v4, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private a(Lcom/google/zxing/Result;II)Lcom/oplus/camera/o/b;
    .locals 9

    const/4 v0, 0x0

    const-string v1, "QrCodeManager"

    if-eqz p1, :cond_3

    .line 374
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/oplus/camera/aa;->q()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "innerConvertResult, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 383
    invoke-direct {p0, v1}, Lcom/oplus/camera/aa;->a([Lcom/google/zxing/ResultPoint;)Landroid/graphics/RectF;

    move-result-object v6

    if-nez v6, :cond_1

    return-object v0

    .line 390
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/aa;->b:Lcom/oplus/camera/o/c;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/o/c;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 392
    new-instance p0, Lcom/oplus/camera/o/b;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/oplus/camera/o/b$a;->WIFI:Lcom/oplus/camera/o/b$a;

    const/4 v5, 0x0

    move-object v2, p0

    move v7, p2

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/o/b;-><init>(Ljava/lang/String;Lcom/oplus/camera/o/b$a;Ljava/lang/String;Landroid/graphics/RectF;II)V

    return-object p0

    .line 394
    :cond_2
    new-instance p0, Lcom/oplus/camera/o/b;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/oplus/camera/o/b$a;->NONE:Lcom/oplus/camera/o/b$a;

    const/4 v5, 0x0

    move-object v2, p0

    move v7, p2

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/o/b;-><init>(Ljava/lang/String;Lcom/oplus/camera/o/b$a;Ljava/lang/String;Landroid/graphics/RectF;II)V

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "innerConvertResult, result is null"

    .line 375
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/oplus/camera/aa;Lcom/oplus/camera/o/b;)Lcom/oplus/camera/o/b;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/oplus/camera/aa;->e:Lcom/oplus/camera/o/b;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/aa;[BII)Lcom/oplus/camera/o/b;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/aa;->a([BII)Lcom/oplus/camera/o/b;

    move-result-object p0

    return-object p0
.end method

.method private a([BII)Lcom/oplus/camera/o/b;
    .locals 3

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrCodeManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget v0, p0, Lcom/oplus/camera/aa;->C:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oplus/camera/aa;->a([BIII)Lcom/google/zxing/Result;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 426
    iput v0, p0, Lcom/oplus/camera/aa;->C:I

    .line 427
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/oplus/camera/aa;->A:Lcom/oplus/camera/o/a/f;

    invoke-virtual {v2}, Lcom/oplus/camera/o/a/f;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 428
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/oplus/camera/aa;->a([BIII)Lcom/google/zxing/Result;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 431
    iput v1, p0, Lcom/oplus/camera/aa;->C:I

    goto :goto_0

    .line 433
    :cond_0
    iput v0, p0, Lcom/oplus/camera/aa;->C:I

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 437
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/aa;->a(Lcom/google/zxing/Result;II)Lcom/oplus/camera/o/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/aa;)Lcom/oplus/camera/ui/CameraQrCodeJumpView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    return-object p0
.end method

.method private a(IZ)V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/oplus/camera/aa;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/aa;->s:Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/oplus/camera/aa;->s:Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;

    invoke-virtual {v1, p2}, Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;->buildEventId(Z)V

    .line 504
    iget-object v1, p0, Lcom/oplus/camera/aa;->s:Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;

    invoke-direct {p0, v1}, Lcom/oplus/camera/aa;->a(Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;)V

    if-eqz p2, :cond_0

    .line 507
    iget-object p2, p0, Lcom/oplus/camera/aa;->s:Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;

    iput p1, p2, Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;->mProtocol:I

    .line 510
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/aa;->s:Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;

    invoke-virtual {p0}, Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;->report()V

    .line 512
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a(Lcom/oplus/camera/o/b;)V
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 340
    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    iget-object v0, p0, Lcom/oplus/camera/aa;->e:Lcom/oplus/camera/o/b;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Lcom/oplus/camera/o/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/camera/o/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    .line 345
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/aa;->D:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    iget-object v0, p0, Lcom/oplus/camera/aa;->D:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 353
    iget-object p0, p0, Lcom/oplus/camera/aa;->D:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private a(Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/aa;->v:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_2

    .line 915
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->b()Lcom/oplus/camera/entry/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/oplus/camera/aa;->v:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->b()Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 919
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/aa;->v:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v0

    iput v0, p1, Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;->mCameraId:I

    .line 922
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/aa;->u:Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_3

    const-string v1, "pref_camera_mode_key"

    const-string v2, ""

    .line 923
    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;->mCaptureMode:Ljava/lang/String;

    .line 926
    :cond_3
    iget v0, p0, Lcom/oplus/camera/aa;->r:I

    iput v0, p1, Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;->mOrientation:I

    .line 927
    iget-object v0, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/aa;->w:I

    int-to-float p0, p0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    int-to-float p0, p0

    float-to-int p0, p0

    .line 929
    iput p0, p1, Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;->mScreenBrightness:I

    return-void
.end method

.method private a(Landroid/view/View;II)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 834
    new-array v1, v1, [I

    .line 835
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 836
    aget v2, v1, v0

    const/4 v3, 0x1

    .line 837
    aget v1, v1, v3

    const/16 v4, 0x10e

    .line 841
    iget p0, p0, Lcom/oplus/camera/aa;->r:I

    if-ne v4, p0, :cond_1

    .line 842
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr v2, p0

    .line 843
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v2

    .line 844
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    :goto_0
    add-int/2addr p1, v1

    goto :goto_1

    :cond_1
    const/16 v4, 0x5a

    if-ne v4, p0, :cond_2

    .line 846
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr v1, p0

    .line 847
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v2

    .line 848
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    goto :goto_0

    .line 850
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v2

    .line 851
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    goto :goto_0

    :goto_1
    if-lt p3, v1, :cond_3

    if-gt p3, p1, :cond_3

    if-lt p2, v2, :cond_3

    if-gt p2, p0, :cond_3

    return v3

    :cond_3
    return v0
.end method

.method static synthetic a(Lcom/oplus/camera/aa;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/oplus/camera/aa;->n:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    .line 516
    iget-object v0, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 522
    :cond_0
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v2, "searchCode e: "

    const-string v3, "QrCodeManager"

    const/4 v4, 0x1

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_2

    .line 523
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 524
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 529
    :try_start_1
    invoke-direct {p0, v4, v4}, Lcom/oplus/camera/aa;->a(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v4

    goto :goto_2

    :catch_0
    move-exception v0

    move v5, v4

    goto :goto_1

    :catch_1
    move-exception v0

    move v5, v1

    .line 531
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iput-boolean v1, p0, Lcom/oplus/camera/aa;->n:Z

    :goto_2
    if-nez v5, :cond_5

    .line 538
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "query"

    .line 539
    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    invoke-direct {p0}, Lcom/oplus/camera/aa;->q()Landroid/content/Context;

    move-result-object p1

    const-string v6, "com.heytap.browser"

    invoke-static {p1, v6}, Lcom/oplus/camera/util/Util;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 542
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 543
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/aa;->q()Landroid/content/Context;

    move-result-object p1

    const-string v6, "com.android.chrome"

    invoke-static {p1, v6}, Lcom/oplus/camera/util/Util;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "com.android.browser"

    .line 544
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    :goto_3
    const/high16 p1, 0x10000000

    .line 547
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 550
    :try_start_2
    iget-object p1, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/4 p1, 0x4

    .line 552
    :try_start_3
    invoke-direct {p0, p1, v4}, Lcom/oplus/camera/aa;->a(IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    move v4, v5

    .line 554
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iput-boolean v1, p0, Lcom/oplus/camera/aa;->n:Z

    goto :goto_5

    :cond_5
    move v4, v5

    :goto_5
    return v4
.end method

.method static synthetic b(Lcom/oplus/camera/aa;Lcom/oplus/camera/o/b;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/oplus/camera/aa;->a(Lcom/oplus/camera/o/b;)V

    return-void
.end method

.method private b(Lcom/oplus/camera/o/b;)V
    .locals 4

    .line 467
    iget-object v0, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    const-string v1, "QrCodeManager"

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/aa;->i:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 473
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/o/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 477
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/o/b;->c()Lcom/oplus/camera/o/b$a;

    move-result-object v0

    .line 478
    invoke-virtual {p1}, Lcom/oplus/camera/o/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 480
    sget-object v2, Lcom/oplus/camera/o/b$a;->NONE:Lcom/oplus/camera/o/b$a;

    if-ne v0, v2, :cond_2

    .line 481
    invoke-direct {p0, p1}, Lcom/oplus/camera/aa;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 482
    :cond_2
    sget-object v2, Lcom/oplus/camera/o/b$a;->WIFI:Lcom/oplus/camera/o/b$a;

    if-ne v0, v2, :cond_3

    .line 483
    new-instance v0, Landroid/content/Intent;

    const-string v2, "wireless.settings.WLAN_CONNECT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.oplus.wirelesssettings"

    .line 484
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "rawResult"

    .line 485
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x3

    const/4 v2, 0x1

    .line 489
    invoke-direct {p0, v0, v2}, Lcom/oplus/camera/aa;->a(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCodeResult, innerHandleCodeResult e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-direct {p0, p1}, Lcom/oplus/camera/aa;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 496
    :cond_3
    invoke-direct {p0, p1}, Lcom/oplus/camera/aa;->a(Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p0, "handleCodeResult activity is destroyed"

    .line 468
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/aa;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/oplus/camera/aa;->i:Z

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/aa;Lcom/oplus/camera/o/b;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/oplus/camera/aa;->b(Lcom/oplus/camera/o/b;)V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/aa;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/oplus/camera/aa;->k:Z

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/aa;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/oplus/camera/aa;->n:Z

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/aa;)Lcom/oplus/camera/o/b;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/oplus/camera/aa;->g:Lcom/oplus/camera/o/b;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/aa;)Lcom/oplus/camera/o/b;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/oplus/camera/aa;->e:Lcom/oplus/camera/o/b;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/aa;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/oplus/camera/aa;->m:Z

    return p0
.end method

.method static synthetic h(Lcom/oplus/camera/aa;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/oplus/camera/aa;->r()V

    return-void
.end method

.method static synthetic i(Lcom/oplus/camera/aa;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/oplus/camera/aa;->s()V

    return-void
.end method

.method static synthetic j(Lcom/oplus/camera/aa;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/oplus/camera/aa;->n()V

    return-void
.end method

.method static synthetic k(Lcom/oplus/camera/aa;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/oplus/camera/aa;->D:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic l(Lcom/oplus/camera/aa;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/oplus/camera/aa;->p()V

    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/aa;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    return-object p0
.end method

.method private n()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->clearAnimation()V

    .line 200
    iget-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setVisibility(I)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/aa;->d:Lcom/oplus/camera/ui/CameraQrCodeView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/ui/CameraQrCodeView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/oplus/camera/aa;->d:Lcom/oplus/camera/ui/CameraQrCodeView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/CameraQrCodeView;->clearAnimation()V

    .line 205
    iget-object p0, p0, Lcom/oplus/camera/aa;->d:Lcom/oplus/camera/ui/CameraQrCodeView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/CameraQrCodeView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 3

    .line 257
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraQrCode"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 259
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CameraQrCodeJump"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 261
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oplus/camera/aa;->q:Landroid/os/Handler;

    .line 263
    new-instance v1, Lcom/oplus/camera/aa$2;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/oplus/camera/aa$2;-><init>(Lcom/oplus/camera/aa;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    return-void
.end method

.method private p()V
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/oplus/camera/aa;->D:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    iget-object v0, p0, Lcom/oplus/camera/aa;->D:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 323
    iget-boolean v0, p0, Lcom/oplus/camera/aa;->m:Z

    const-string v1, "QrCodeManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "qrCodeEmpty, MSG_QR_CODE_CHECK_LEAVE"

    .line 324
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 330
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/aa;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "qrCodeEmpty, QR_CODE_MAX_DETECTION_TIME"

    .line 331
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object p0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private q()Landroid/content/Context;
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    if-eqz p0, :cond_0

    .line 565
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private r()V
    .locals 3

    .line 643
    iget-object v0, p0, Lcom/oplus/camera/aa;->d:Lcom/oplus/camera/ui/CameraQrCodeView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/aa;->j:Z

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/oplus/camera/aa;->e:Lcom/oplus/camera/o/b;

    invoke-virtual {v1}, Lcom/oplus/camera/o/b;->d()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/aa;->e:Lcom/oplus/camera/o/b;

    invoke-virtual {v2}, Lcom/oplus/camera/o/b;->e()I

    move-result v2

    iget-object p0, p0, Lcom/oplus/camera/aa;->e:Lcom/oplus/camera/o/b;

    .line 645
    invoke-virtual {p0}, Lcom/oplus/camera/o/b;->f()I

    move-result p0

    .line 644
    invoke-virtual {v0, v1, v2, p0}, Lcom/oplus/camera/ui/CameraQrCodeView;->a(Landroid/graphics/RectF;II)V

    goto :goto_0

    .line 646
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/aa;->d:Lcom/oplus/camera/ui/CameraQrCodeView;

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    .line 647
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/CameraQrCodeView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private s()V
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/oplus/camera/aa;->d:Lcom/oplus/camera/ui/CameraQrCodeView;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/aa;->i:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 656
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/CameraQrCodeView;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private t()V
    .locals 3

    const-string v0, "requestKeyguard: "

    const-string v1, "QrCodeManager"

    const-string v2, "requestKeyguard"

    .line 884
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 886
    iput-boolean v2, p0, Lcom/oplus/camera/aa;->o:Z

    .line 887
    new-instance p0, Landroid/view/OplusWindowManager;

    invoke-direct {p0}, Landroid/view/OplusWindowManager;-><init>()V

    :try_start_0
    const-string v2, "unlockOrShowSecurity"

    .line 890
    invoke-virtual {p0, v2}, Landroid/view/OplusWindowManager;->requestKeyguard(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private u()Z
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/aa;->f:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private v()V
    .locals 3

    .line 954
    iget-object v0, p0, Lcom/oplus/camera/aa;->e:Lcom/oplus/camera/o/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/aa;->q:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const-string v0, "QrCodeManager"

    const-string v1, "jump, QR code jump"

    .line 955
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/oplus/camera/aa;->x:Lcom/oplus/camera/aa$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 958
    iget-object v2, p0, Lcom/oplus/camera/aa;->q:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 959
    iget-object v0, p0, Lcom/oplus/camera/aa;->x:Lcom/oplus/camera/aa$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/aa$a;->a(Z)V

    .line 962
    :cond_0
    new-instance v0, Lcom/oplus/camera/aa$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/oplus/camera/aa$a;-><init>(Lcom/oplus/camera/aa;Lcom/oplus/camera/aa$1;)V

    iput-object v0, p0, Lcom/oplus/camera/aa;->x:Lcom/oplus/camera/aa$a;

    .line 963
    iget-object v0, p0, Lcom/oplus/camera/aa;->x:Lcom/oplus/camera/aa$a;

    iget-object v2, p0, Lcom/oplus/camera/aa;->e:Lcom/oplus/camera/o/b;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/aa$a;->a(Lcom/oplus/camera/o/b;)V

    .line 964
    iget-object v0, p0, Lcom/oplus/camera/aa;->q:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oplus/camera/aa;->x:Lcom/oplus/camera/aa$a;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 965
    invoke-virtual {p0, v1}, Lcom/oplus/camera/aa;->d(Z)V

    .line 966
    invoke-virtual {p0}, Lcom/oplus/camera/aa;->c()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a([BIII)Lcom/google/zxing/Result;
    .locals 10

    .line 442
    new-instance v9, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    const/4 p1, -0x1

    if-eq p1, p4, :cond_0

    .line 446
    iget-object p1, p0, Lcom/oplus/camera/aa;->A:Lcom/oplus/camera/o/a/f;

    invoke-virtual {p1, p4}, Lcom/oplus/camera/o/a/f;->a(I)Lcom/oplus/camera/o/a/a;

    move-result-object p1

    invoke-virtual {v9}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getMatrix()[B

    move-result-object p2

    invoke-virtual {v9}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result p3

    invoke-virtual {v9}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result p4

    invoke-interface {p1, p2, p3, p4}, Lcom/oplus/camera/o/a/a;->a([BII)[B

    .line 449
    :cond_0
    new-instance p1, Lcom/google/zxing/BinaryBitmap;

    new-instance p2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {p2, v9}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p1, p2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 452
    :try_start_0
    iget-object p2, p0, Lcom/oplus/camera/aa;->z:Lcom/google/zxing/qrcode/QRCodeReader;

    iget-object p3, p0, Lcom/oplus/camera/aa;->y:Ljava/util/Map;

    invoke-virtual {p2, p1, p3}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    iget-object p0, p0, Lcom/oplus/camera/aa;->z:Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/QRCodeReader;->reset()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 458
    :try_start_1
    invoke-virtual {p1}, Lcom/google/zxing/ChecksumException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 456
    invoke-virtual {p1}, Lcom/google/zxing/FormatException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 454
    invoke-virtual {p1}, Lcom/google/zxing/NotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/aa;->z:Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/QRCodeReader;->reset()V

    const/4 p1, 0x0

    :goto_1
    return-object p1

    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/aa;->z:Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/QRCodeReader;->reset()V

    .line 461
    throw p1
.end method

.method public a()V
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearHistory, mHistoryQrCodeScanResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/aa;->g:Lcom/oplus/camera/o/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,mQrCodeScanResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/aa;->e:Lcom/oplus/camera/o/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrCodeManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/oplus/camera/aa;->g:Lcom/oplus/camera/o/b;

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/oplus/camera/aa;->m:Z

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrCodeManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iput p1, p0, Lcom/oplus/camera/aa;->r:I

    .line 685
    invoke-virtual {p0}, Lcom/oplus/camera/aa;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 686
    iget-object p1, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    iget p0, p0, Lcom/oplus/camera/aa;->r:I

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 6

    if-eqz p1, :cond_4

    .line 572
    iget-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    const v1, 0x7f090193

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    const v1, 0x7f0902df

    .line 577
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/CameraQrCodeView;

    iput-object v2, p0, Lcom/oplus/camera/aa;->d:Lcom/oplus/camera/ui/CameraQrCodeView;

    .line 579
    iget-object v2, p0, Lcom/oplus/camera/aa;->d:Lcom/oplus/camera/ui/CameraQrCodeView;

    if-nez v2, :cond_1

    .line 580
    iget-object v2, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0182

    .line 581
    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 582
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/CameraQrCodeView;

    iput-object v1, p0, Lcom/oplus/camera/aa;->d:Lcom/oplus/camera/ui/CameraQrCodeView;

    .line 585
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 586
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    .line 588
    invoke-direct {p0}, Lcom/oplus/camera/aa;->q()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    .line 589
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x2

    const v3, 0x7f0900e5

    .line 590
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 592
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result v2

    .line 593
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getHeight()I

    move-result v0

    .line 594
    iget-object v3, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070974

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 596
    iget-object v4, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0709c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 597
    iget-object v4, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-virtual {p1, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    iget-object p1, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v2, v0, v1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a(IIII)V

    .line 599
    iget-object p1, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setVisibility(I)V

    .line 600
    iget-object p1, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    const v0, 0x7f0900a5

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 602
    iget-object p0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    const/high16 p0, 0x43340000    # 180.0f

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    .line 603
    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    :cond_4
    :goto_2
    return-void
.end method

.method public a(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 933
    invoke-virtual {p0, p1}, Lcom/oplus/camera/aa;->a(Landroid/view/ViewGroup;)V

    .line 934
    invoke-virtual {p0, p2}, Lcom/oplus/camera/aa;->a(I)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/aa;->e:Lcom/oplus/camera/o/b;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/oplus/camera/aa;->i:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    iget v1, p0, Lcom/oplus/camera/aa;->r:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setOrientation(I)V

    .line 614
    iget-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    iget-object p0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a()V

    goto :goto_0

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a(ZZ)V

    const/4 p1, 0x0

    .line 618
    invoke-direct {p0, p1, p1}, Lcom/oplus/camera/aa;->a(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a([BLandroid/graphics/Rect;Landroid/util/Size;II)V
    .locals 8

    .line 357
    iget-boolean v0, p0, Lcom/oplus/camera/aa;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/aa;->k:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/aa;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/aa;->l()V

    int-to-float v0, p5

    const/high16 v1, 0x44340000    # 720.0f

    div-float/2addr v0, v1

    int-to-float v1, p4

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 366
    iget-object v2, p0, Lcom/oplus/camera/aa;->B:Lcom/oplus/camera/util/YuvUtil;

    const/16 v7, 0x2d0

    move-object v3, p1

    move v4, p4

    move v5, p5

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/camera/util/YuvUtil;->a([BIIII)[B

    move-result-object v3

    .line 368
    iget-object p1, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    const/4 p4, 0x3

    invoke-virtual {p1, p4}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    iget-object p0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    new-instance p1, Lcom/oplus/camera/o/a;

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/oplus/camera/o/a;-><init>([BLandroid/graphics/Rect;Landroid/util/Size;II)V

    invoke-virtual {p0, p4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 370
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 803
    iget-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    const-string v1, "QrCodeManager"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 804
    invoke-virtual {v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    .line 805
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v0, v3, v4}, Lcom/oplus/camera/aa;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "needTouchEvent, QrCode is show and dispatchTouchEvent"

    .line 806
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne v2, p1, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/oplus/camera/aa;->c()V

    :cond_0
    return v2

    .line 815
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needTouchEvent, isShowQrCodeView: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/aa;->h()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/aa;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    .line 820
    iput-boolean v1, p0, Lcom/oplus/camera/aa;->n:Z

    .line 821
    invoke-virtual {p0}, Lcom/oplus/camera/aa;->b()V

    .line 822
    invoke-virtual {p0, v2}, Lcom/oplus/camera/aa;->d(Z)V

    .line 823
    invoke-virtual {p0}, Lcom/oplus/camera/aa;->c()V

    :cond_3
    return v1
.end method

.method public b()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    iget-object p0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 624
    iget-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/aa;->e:Lcom/oplus/camera/o/b;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/aa;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/aa;->D:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 637
    iget-object v0, p0, Lcom/oplus/camera/aa;->D:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 638
    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 639
    iget-object p0, p0, Lcom/oplus/camera/aa;->D:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 625
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/aa;->D:Landroid/os/Handler;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 626
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 629
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/aa;->D:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 630
    iget-object p0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public c()V
    .locals 2

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearQrCodeView, canScanQrCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/aa;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/aa;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMainThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {p0}, Lcom/oplus/camera/aa;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrCodeManager"

    .line 660
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-boolean v0, p0, Lcom/oplus/camera/aa;->i:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/aa;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/aa;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/oplus/camera/aa;->D:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 669
    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 670
    iget-object p0, p0, Lcom/oplus/camera/aa;->D:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 672
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/aa;->n()V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 776
    iput-boolean p1, p0, Lcom/oplus/camera/aa;->k:Z

    .line 778
    iget-boolean p1, p0, Lcom/oplus/camera/aa;->k:Z

    if-nez p1, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/oplus/camera/aa;->c()V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 862
    iput-boolean p1, p0, Lcom/oplus/camera/aa;->m:Z

    .line 864
    iget-boolean p1, p0, Lcom/oplus/camera/aa;->m:Z

    if-eqz p1, :cond_0

    .line 865
    iget-object p1, p0, Lcom/oplus/camera/aa;->e:Lcom/oplus/camera/o/b;

    iput-object p1, p0, Lcom/oplus/camera/aa;->g:Lcom/oplus/camera/o/b;

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 677
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e()V
    .locals 4

    const-string v0, "QrCodeManager"

    const-string v1, "onResume"

    .line 691
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 693
    iput-boolean v0, p0, Lcom/oplus/camera/aa;->i:Z

    .line 694
    iput-boolean v0, p0, Lcom/oplus/camera/aa;->o:Z

    .line 696
    iget-object v0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d()V

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/aa;->d:Lcom/oplus/camera/ui/CameraQrCodeView;

    if-eqz v0, :cond_1

    .line 701
    invoke-virtual {v0}, Lcom/oplus/camera/ui/CameraQrCodeView;->c()V

    .line 704
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/aa;->n:Z

    if-eqz v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 706
    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 708
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/aa;->a()V

    :goto_0
    const/4 v0, 0x1

    .line 711
    invoke-virtual {p0, v0}, Lcom/oplus/camera/aa;->c(Z)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 870
    iput-boolean p1, p0, Lcom/oplus/camera/aa;->l:Z

    return-void
.end method

.method public f()V
    .locals 3

    const-string v0, "QrCodeManager"

    const-string v1, "onPause"

    .line 715
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 717
    iput-boolean v0, p0, Lcom/oplus/camera/aa;->i:Z

    const/4 v1, 0x0

    .line 718
    iput-boolean v1, p0, Lcom/oplus/camera/aa;->o:Z

    .line 720
    iget-object v2, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    if-eqz v2, :cond_0

    .line 721
    invoke-virtual {v2}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->c()V

    .line 724
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/aa;->d:Lcom/oplus/camera/ui/CameraQrCodeView;

    if-eqz v2, :cond_1

    .line 725
    invoke-virtual {v2}, Lcom/oplus/camera/ui/CameraQrCodeView;->b()V

    .line 728
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/aa;->x:Lcom/oplus/camera/aa$a;

    if-eqz v2, :cond_2

    .line 729
    invoke-virtual {v2, v0}, Lcom/oplus/camera/aa$a;->a(Z)V

    .line 732
    :cond_2
    invoke-virtual {p0, v1}, Lcom/oplus/camera/aa;->c(Z)V

    .line 734
    iget-object v0, p0, Lcom/oplus/camera/aa;->D:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 735
    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 736
    iget-object v0, p0, Lcom/oplus/camera/aa;->q:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 737
    iput v1, p0, Lcom/oplus/camera/aa;->r:I

    const/4 v0, -0x1

    .line 738
    iput v0, p0, Lcom/oplus/camera/aa;->C:I

    .line 739
    invoke-direct {p0}, Lcom/oplus/camera/aa;->n()V

    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "QrCodeManager"

    const-string v1, "onDestroy"

    .line 743
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/oplus/camera/aa;->x:Lcom/oplus/camera/aa$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 746
    invoke-virtual {v0, v1}, Lcom/oplus/camera/aa$a;->a(Z)V

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/aa;->D:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 750
    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 751
    iget-object v0, p0, Lcom/oplus/camera/aa;->q:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 752
    iput-object v1, p0, Lcom/oplus/camera/aa;->a:Landroid/app/Activity;

    .line 753
    iput-object v1, p0, Lcom/oplus/camera/aa;->f:Landroid/app/KeyguardManager;

    .line 755
    iget-object v0, p0, Lcom/oplus/camera/aa;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 756
    :try_start_0
    iput-object v1, p0, Lcom/oplus/camera/aa;->v:Lcom/oplus/camera/capmode/a;

    .line 757
    iput-object v1, p0, Lcom/oplus/camera/aa;->u:Lcom/oplus/camera/ComboPreferences;

    .line 758
    iput-object v1, p0, Lcom/oplus/camera/aa;->s:Lcom/oplus/camera/statistics/model/QrCodeDcsMsgData;

    .line 759
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 763
    iput-object v1, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    .line 764
    iget-object v0, p0, Lcom/oplus/camera/aa;->q:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 765
    iput-object v1, p0, Lcom/oplus/camera/aa;->q:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy, quit handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QrCodeManager"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 759
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public h()Z
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/oplus/camera/aa;->d:Lcom/oplus/camera/ui/CameraQrCodeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/CameraQrCodeView;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    if-eqz p0, :cond_2

    .line 786
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i()Z
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/oplus/camera/aa;->d:Lcom/oplus/camera/ui/CameraQrCodeView;

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {v0}, Lcom/oplus/camera/ui/CameraQrCodeView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    if-eqz p0, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()Z
    .locals 0

    .line 874
    iget-boolean p0, p0, Lcom/oplus/camera/aa;->l:Z

    return p0
.end method

.method public k()V
    .locals 0

    .line 878
    iget-object p0, p0, Lcom/oplus/camera/aa;->c:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    if-eqz p0, :cond_0

    .line 879
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->e()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 903
    iget-boolean v0, p0, Lcom/oplus/camera/aa;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/aa;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 904
    iput-boolean v0, p0, Lcom/oplus/camera/aa;->o:Z

    .line 905
    invoke-direct {p0}, Lcom/oplus/camera/aa;->v()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    .line 938
    iget-object v0, p0, Lcom/oplus/camera/aa;->p:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 939
    invoke-virtual {p0}, Lcom/oplus/camera/aa;->a()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 944
    iput-boolean p1, p0, Lcom/oplus/camera/aa;->n:Z

    .line 946
    invoke-direct {p0}, Lcom/oplus/camera/aa;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 947
    invoke-direct {p0}, Lcom/oplus/camera/aa;->t()V

    goto :goto_0

    .line 949
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/aa;->v()V

    :goto_0
    return-void
.end method
