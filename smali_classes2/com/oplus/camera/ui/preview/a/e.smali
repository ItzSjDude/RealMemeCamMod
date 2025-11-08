.class public Lcom/oplus/camera/ui/preview/a/e;
.super Lcom/oplus/camera/ui/preview/a/y;
.source "BlurTexturePreview.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/a/aa$d;


# static fields
.field public static a:Ljava/lang/String; = "0ms"

.field private static b:Z


# instance fields
.field private final c:Ljava/lang/Object;

.field private d:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/oplus/camera/gl/s;

.field private p:Lcom/oplus/camera/gl/s;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/sensetime/blur/STBlurPreview;

.field private u:Lcom/oplus/camera/ui/preview/a/aa;

.field private v:Z

.field private w:Z

.field private x:Landroid/os/Handler;

.field private y:Landroid/os/HandlerThread;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 86
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/e;->d:I

    .line 68
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/e;->k:I

    .line 69
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/e;->l:I

    const/4 v1, -0x1

    .line 70
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/e;->m:I

    .line 71
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/e;->n:I

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/e;->o:Lcom/oplus/camera/gl/s;

    .line 73
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/e;->p:Lcom/oplus/camera/gl/s;

    .line 74
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/e;->q:Z

    .line 75
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/e;->r:Z

    const/4 v2, 0x1

    .line 76
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/e;->s:Z

    .line 77
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    .line 78
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/e;->u:Lcom/oplus/camera/ui/preview/a/aa;

    .line 79
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/e;->v:Z

    .line 80
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/e;->w:Z

    .line 81
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/e;->x:Landroid/os/Handler;

    .line 82
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/e;->y:Landroid/os/HandlerThread;

    .line 83
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/e;->z:Z

    .line 87
    invoke-static {p1}, Lcom/oplus/camera/sticker/c/d;->g(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/e;->z:Z

    return-void
.end method

.method private a(F)F
    .locals 4

    const p0, 0x3dcccccd    # 0.1f

    .line 254
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    const v0, 0x3f4ccccd    # 0.8f

    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x3ecccccd    # 0.4f

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x3e99999a    # 0.3f

    .line 256
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gez p0, :cond_1

    move p1, v3

    goto :goto_0

    .line 258
    :cond_1
    invoke-static {p1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gez p0, :cond_2

    move p1, v2

    goto :goto_0

    .line 260
    :cond_2
    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gez p0, :cond_3

    move p1, v1

    goto :goto_0

    .line 262
    :cond_3
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gez p0, :cond_4

    const p1, 0x3f333333    # 0.7f

    goto :goto_0

    .line 264
    :cond_4
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gez p0, :cond_5

    move p1, v0

    :cond_5
    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/e;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/e;->m:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/e;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/e;->y:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/e;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/e;->u:Lcom/oplus/camera/ui/preview/a/aa;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/e;Lcom/sensetime/blur/STBlurPreview;)Lcom/sensetime/blur/STBlurPreview;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    return-object p1
.end method

.method private a(IIZ)V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    if-eqz v0, :cond_0

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSTBlur, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sensetime/blur/STBlurPreview;->initRender(IIZ)I

    .line 514
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const-string p0, "initSTBlur, X"

    .line 516
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/e;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/e;->q()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/e;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/e;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/e;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/e;->n:I

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/e;)Ljava/lang/Object;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/e;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/a/e;)Lcom/sensetime/blur/STBlurPreview;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/a/e;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/e;->r:Z

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/preview/a/e;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/e;->m:I

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/preview/a/e;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/e;->n:I

    return p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/preview/a/e;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/e;->x:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/preview/a/e;)Landroid/os/HandlerThread;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/e;->y:Landroid/os/HandlerThread;

    return-object p0
.end method

.method private q()V
    .locals 4

    .line 521
    sget-boolean v0, Lcom/oplus/camera/ui/preview/a/e;->b:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 524
    new-instance v1, Ljava/io/File;

    const-string v2, "/odm/etc/camera/singleblur/license_release.lic"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p0, "singleblur/license_release.lic"

    .line 525
    invoke-static {p0}, Lcom/oplus/camera/a/c;->a(Ljava/lang/String;)[B

    move-result-object p0

    .line 526
    array-length v0, p0

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 527
    array-length v1, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    array-length p0, p0

    aput-byte v3, v0, p0

    goto :goto_0

    .line 529
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/odm/etc/camera/singleblur/license_release.license"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "singleblur/license_release.license"

    .line 530
    invoke-static {v0}, Lcom/oplus/camera/a/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 531
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/e;->j:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oplus/camera/jni/SecurityLicenseChecker;->decodeBuffer(Landroid/content/Context;[B)[B

    move-result-object v0

    .line 534
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/sensetime/faceapi/LicenseHelper;->initLicense([B)I

    move-result p0

    const-string v0, "BlurTexturePreview"

    if-eqz p0, :cond_2

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLicense failed, resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 539
    :cond_2
    sput-boolean v2, Lcom/oplus/camera/ui/preview/a/e;->b:Z

    const-string p0, "checkLicense success"

    .line 541
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 491
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

    const-string v1, "BlurTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/e;->d:I

    .line 494
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/e;->k:I

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;)V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->p:Lcom/oplus/camera/gl/s;

    const-string v1, "BlurTexturePreview"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->p:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTextures, mInputBlurTexture.getId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/e;->p:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->o:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->o:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 464
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareTextures, mOutputBlurTexture.getId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/e;->o:Lcom/oplus/camera/gl/s;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/s;->e()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/s;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/e;->o:Lcom/oplus/camera/gl/s;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 3

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEngine, sbBlurLicenseChecked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oplus/camera/ui/preview/a/e;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBlurPreviewHandlerThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/e;->y:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {}, Lcom/sensetime/blur/STBlurPreview;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurTexturePreview"

    .line 295
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/e;->m:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    const-string v0, "/odm/etc/camera/sensetime/singlut_portrait.png"

    .line 299
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/e;->m:I

    const-string v0, "/odm/etc/camera/sensetime/singlut_background.png"

    .line 300
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/e;->n:I

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->y:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 304
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BlurPreviewHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->y:Landroid/os/HandlerThread;

    .line 305
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->y:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 307
    new-instance v0, Lcom/oplus/camera/ui/preview/a/e$1;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/e;->y:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/ui/preview/a/e$1;-><init>(Lcom/oplus/camera/ui/preview/a/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->x:Landroid/os/Handler;

    .line 358
    :cond_1
    sget-boolean v0, Lcom/oplus/camera/ui/preview/a/e;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->x:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    if-nez v2, :cond_3

    .line 364
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/e;->x:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 366
    :cond_3
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/e;->v:Z

    .line 369
    :goto_0
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/e;->u:Lcom/oplus/camera/ui/preview/a/aa;

    .line 371
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/e;->u:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p1, :cond_4

    .line 372
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/e;->u:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/a/aa;->a(Lcom/oplus/camera/ui/preview/a/aa$d;)V

    .line 374
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Z)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/e;->q:Z

    .line 501
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a([BII)V
    .locals 11

    .line 92
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/e;->v:Z

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/e;->r:Z

    if-eqz v1, :cond_1

    .line 98
    monitor-exit v0

    return-void

    .line 100
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    iget-boolean v6, p0, Lcom/oplus/camera/ui/preview/a/e;->g:Z

    .line 104
    iget-object v10, p0, Lcom/oplus/camera/ui/preview/a/e;->c:Ljava/lang/Object;

    monitor-enter v10

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->u:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz v0, :cond_2

    .line 106
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/e;->u:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/aa;->C()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v9}, Lcom/sensetime/blur/STBlurPreview;->onPreviewCallback([BIIIZZILcom/sensetime/blur/STBlurPreview$Callback;)V

    .line 108
    :cond_2
    monitor-exit v10

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 100
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(I)Z
    .locals 4

    .line 113
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/e;->a_(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/e;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/e;->u:Lcom/oplus/camera/ui/preview/a/aa;

    if-nez v1, :cond_1

    const-string p0, "BlurTexturePreview"

    const-string v1, "canProcess, Engine has not init!"

    .line 119
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    monitor-exit p1

    return v0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/e;->u:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/aa;->C()I

    move-result v1

    if-gtz v1, :cond_2

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/e;->r:Z

    if-nez v1, :cond_2

    const-string v1, "BlurTexturePreview"

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canProcess, facesCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/e;->u:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/aa;->C()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    monitor-exit p1

    return v0

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/e;->u:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/aa;->r()Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "BlurTexturePreview"

    const-string v1, "canProcess, not open effect"

    .line 131
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    monitor-exit p1

    return v0

    .line 135
    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/e;->w:Z

    if-nez p0, :cond_4

    const-string p0, "BlurTexturePreview"

    const-string p1, "canProcess, texture is not inited"

    .line 138
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 135
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$a;)Z
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 148
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v2

    .line 150
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/e;->u:Lcom/oplus/camera/ui/preview/a/aa;

    const/4 v5, 0x0

    if-eqz v4, :cond_f

    if-eqz v1, :cond_f

    iget-object v4, v1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/e;->o:Lcom/oplus/camera/gl/s;

    if-nez v4, :cond_0

    goto/16 :goto_6

    .line 157
    :cond_0
    iget-boolean v4, v0, Lcom/oplus/camera/ui/preview/a/e;->v:Z

    if-nez v4, :cond_1

    const-string v0, "BlurTexturePreview"

    const-string v1, "process, mSTBlurFilter not create, so return!"

    .line 158
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 163
    :cond_1
    iget-object v4, v1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 165
    invoke-virtual {v4}, Lcom/oplus/camera/gl/s;->h()I

    move-result v10

    .line 166
    invoke-virtual {v4}, Lcom/oplus/camera/gl/s;->i()I

    move-result v11

    .line 167
    iget-boolean v14, v0, Lcom/oplus/camera/ui/preview/a/e;->g:Z

    .line 169
    iget-object v15, v0, Lcom/oplus/camera/ui/preview/a/e;->c:Ljava/lang/Object;

    monitor-enter v15

    .line 170
    :try_start_0
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    const/4 v12, 0x1

    if-eqz v6, :cond_d

    .line 171
    iget-boolean v6, v0, Lcom/oplus/camera/ui/preview/a/e;->s:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_3

    .line 172
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    invoke-virtual {v6}, Lcom/sensetime/blur/STBlurPreview;->resetSegmentThread()V

    .line 173
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    const/16 v8, 0x3001

    .line 174
    iget-boolean v9, v0, Lcom/oplus/camera/ui/preview/a/e;->r:Z

    if-eqz v9, :cond_2

    move v9, v7

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    .line 173
    :goto_0
    invoke-virtual {v6, v8, v9}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    .line 175
    iput-boolean v5, v0, Lcom/oplus/camera/ui/preview/a/e;->s:Z

    .line 178
    :cond_3
    iget-boolean v6, v0, Lcom/oplus/camera/ui/preview/a/e;->q:Z

    if-eqz v6, :cond_4

    .line 179
    invoke-direct {v0, v10, v11, v14}, Lcom/oplus/camera/ui/preview/a/e;->a(IIZ)V

    .line 181
    iput-boolean v5, v0, Lcom/oplus/camera/ui/preview/a/e;->q:Z

    .line 184
    :cond_4
    invoke-static {v5, v5, v10, v11}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 186
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    const/16 v8, 0x1001

    iget-object v9, v0, Lcom/oplus/camera/ui/preview/a/e;->u:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v9}, Lcom/oplus/camera/ui/preview/a/aa;->a()F

    move-result v9

    invoke-direct {v0, v9}, Lcom/oplus/camera/ui/preview/a/e;->a(F)F

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    if-eqz v14, :cond_8

    .line 189
    iget-boolean v6, v0, Lcom/oplus/camera/ui/preview/a/e;->z:Z

    if-eqz v6, :cond_5

    iget-boolean v6, v0, Lcom/oplus/camera/ui/preview/a/e;->r:Z

    if-eqz v6, :cond_5

    .line 190
    invoke-virtual {v4}, Lcom/oplus/camera/gl/s;->e()I

    move-result v6

    const-string v7, "dump_retention_before"

    invoke-static {v6, v10, v11, v7}, Lcom/oplus/camera/util/Util;->a(IIILjava/lang/String;)V

    .line 193
    :cond_5
    iget-boolean v6, v0, Lcom/oplus/camera/ui/preview/a/e;->r:Z

    if-nez v6, :cond_6

    .line 194
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    invoke-virtual {v4}, Lcom/oplus/camera/gl/s;->e()I

    move-result v17

    iget v4, v0, Lcom/oplus/camera/ui/preview/a/e;->m:I

    iget v7, v0, Lcom/oplus/camera/ui/preview/a/e;->n:I

    new-array v8, v12, [I

    iget-object v9, v0, Lcom/oplus/camera/ui/preview/a/e;->o:Lcom/oplus/camera/gl/s;

    .line 195
    invoke-virtual {v9}, Lcom/oplus/camera/gl/s;->e()I

    move-result v9

    aput v9, v8, v5

    const/16 v21, 0x0

    move-object/from16 v16, v6

    move/from16 v18, v4

    move/from16 v19, v7

    move-object/from16 v20, v8

    .line 194
    invoke-virtual/range {v16 .. v21}, Lcom/sensetime/blur/STBlurPreview;->processTexture(III[IZ)I

    move-result v4

    move v6, v4

    move-object/from16 v16, v15

    const/4 v4, -0x1

    goto :goto_1

    .line 197
    :cond_6
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    invoke-virtual {v4}, Lcom/oplus/camera/gl/s;->e()I

    move-result v7

    iget v8, v0, Lcom/oplus/camera/ui/preview/a/e;->m:I

    iget v9, v0, Lcom/oplus/camera/ui/preview/a/e;->n:I

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/e;->u:Lcom/oplus/camera/ui/preview/a/aa;

    .line 198
    invoke-virtual {v4}, Lcom/oplus/camera/ui/preview/a/aa;->C()I

    move-result v4

    new-array v13, v12, [I

    iget-object v12, v0, Lcom/oplus/camera/ui/preview/a/e;->o:Lcom/oplus/camera/gl/s;

    .line 199
    invoke-virtual {v12}, Lcom/oplus/camera/gl/s;->e()I

    move-result v12

    aput v12, v13, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v18, 0x0

    move v12, v4

    const/4 v4, -0x1

    move-object/from16 v16, v15

    move/from16 v15, v18

    .line 197
    :try_start_1
    invoke-virtual/range {v6 .. v15}, Lcom/sensetime/blur/STBlurPreview;->doOnPreviewProcess(IIIIII[IZZ)I

    move-result v6

    .line 202
    :goto_1
    iget-boolean v7, v0, Lcom/oplus/camera/ui/preview/a/e;->z:Z

    if-eqz v7, :cond_7

    iget-boolean v7, v0, Lcom/oplus/camera/ui/preview/a/e;->r:Z

    if-eqz v7, :cond_7

    .line 203
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/e;->o:Lcom/oplus/camera/gl/s;

    invoke-virtual {v7}, Lcom/oplus/camera/gl/s;->e()I

    move-result v7

    iget-object v8, v0, Lcom/oplus/camera/ui/preview/a/e;->o:Lcom/oplus/camera/gl/s;

    invoke-virtual {v8}, Lcom/oplus/camera/gl/s;->h()I

    move-result v8

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/e;->o:Lcom/oplus/camera/gl/s;

    .line 204
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->i()I

    move-result v0

    const-string v9, "dump_retention_after"

    .line 203
    invoke-static {v7, v8, v0, v9}, Lcom/oplus/camera/util/Util;->a(IIILjava/lang/String;)V

    :cond_7
    move v13, v6

    const/4 v11, 0x1

    move v6, v4

    goto :goto_3

    :cond_8
    move-object/from16 v16, v15

    const/4 v6, -0x1

    .line 209
    iget v8, v0, Lcom/oplus/camera/ui/preview/a/e;->l:I

    const/16 v9, 0x10e

    const/16 v10, 0x5a

    const/16 v11, 0xb4

    if-eqz v8, :cond_c

    if-eq v8, v10, :cond_b

    if-eq v8, v11, :cond_a

    if-eq v8, v9, :cond_9

    goto :goto_2

    :cond_9
    move v11, v10

    goto :goto_2

    :cond_a
    move v11, v5

    goto :goto_2

    :cond_b
    move v11, v9

    .line 231
    :cond_c
    :goto_2
    iget-object v8, v0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    invoke-virtual {v8, v11, v5, v5}, Lcom/sensetime/blur/STBlurPreview;->rotateGrdualTexture(IZZ)I

    .line 232
    iget-object v8, v0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    invoke-virtual {v4}, Lcom/oplus/camera/gl/s;->e()I

    move-result v23

    iget v4, v0, Lcom/oplus/camera/ui/preview/a/e;->m:I

    iget v9, v0, Lcom/oplus/camera/ui/preview/a/e;->n:I

    const/4 v10, 0x4

    new-array v10, v10, [F

    aput v7, v10, v5

    const v7, 0x3f4ccccd    # 0.8f

    const/4 v11, 0x1

    aput v7, v10, v11

    const/4 v7, 0x2

    const v12, 0x3f19999a    # 0.6f

    aput v12, v10, v7

    const/4 v7, 0x3

    const v12, 0x3e99999a    # 0.3f

    aput v12, v10, v7

    new-array v7, v11, [I

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/e;->o:Lcom/oplus/camera/gl/s;

    .line 235
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->e()I

    move-result v0

    aput v0, v7, v5

    const/16 v28, 0x0

    move-object/from16 v22, v8

    move/from16 v24, v4

    move/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v7

    .line 232
    invoke-virtual/range {v22 .. v28}, Lcom/sensetime/blur/STBlurPreview;->processTextureGradual(III[F[IZ)I

    move-result v0

    move v13, v0

    .line 238
    :goto_3
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    goto :goto_4

    :cond_d
    move v11, v12

    move-object/from16 v16, v15

    const/4 v6, -0x1

    move v13, v6

    .line 240
    :goto_4
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 242
    iget-object v0, v1, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    invoke-interface {v0}, Lcom/oplus/camera/gl/h;->d()I

    move-result v0

    iget-object v1, v1, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    invoke-interface {v1}, Lcom/oplus/camera/gl/h;->e()I

    move-result v1

    invoke-static {v5, v5, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 244
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v0

    .line 246
    invoke-static {v2, v3, v0, v1}, Lcom/oplus/camera/algovisualization/a;->a(JJ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/ui/preview/a/e;->a:Ljava/lang/String;

    if-eq v13, v6, :cond_e

    move v5, v11

    :cond_e
    return v5

    :catchall_0
    move-exception v0

    move-object/from16 v16, v15

    .line 240
    :goto_5
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_f
    :goto_6
    return v5
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 506
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/e;->l:I

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/e;->r:Z

    if-eq v1, p1, :cond_0

    .line 550
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/e;->r:Z

    const/4 p1, 0x1

    .line 551
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/e;->s:Z

    .line 553
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    if-eqz p1, :cond_0

    .line 554
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/e;->t:Lcom/sensetime/blur/STBlurPreview;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/e;->r:Z

    invoke-virtual {p1, p0}, Lcom/sensetime/blur/STBlurPreview;->setRetentionOpen(Z)V

    .line 557
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public e()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/e$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/e$2;-><init>(Lcom/oplus/camera/ui/preview/a/e;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/e;->p:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public g()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/e;->o:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i()V
    .locals 4

    const-string v0, "BlurTexturePreview"

    const-string v1, "newTextures"

    .line 442
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/e;->d:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/e;->k:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->p:Lcom/oplus/camera/gl/s;

    .line 445
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/e;->d:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/e;->k:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->o:Lcom/oplus/camera/gl/s;

    .line 446
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/e;->w:Z

    .line 448
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_0
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/e;->s:Z

    .line 450
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public j()V
    .locals 2

    const-string v0, "BlurTexturePreview"

    const-string v1, "recycleTextures"

    .line 470
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/e;->w:Z

    if-nez v0, :cond_0

    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->p:Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 478
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/e;->p:Lcom/oplus/camera/gl/s;

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e;->o:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_2

    .line 482
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 483
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/e;->o:Lcom/oplus/camera/gl/s;

    :cond_2
    const/4 v0, 0x0

    .line 486
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/e;->w:Z

    return-void
.end method
