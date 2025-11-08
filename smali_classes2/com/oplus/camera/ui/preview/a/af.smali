.class public Lcom/oplus/camera/ui/preview/a/af;
.super Lcom/oplus/camera/ui/preview/a/y;
.source "VideoRetentionV2TexturePreview.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/oplus/camera/gl/s;

.field private o:Lcom/oplus/camera/gl/s;

.field private p:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

.field private q:Lcom/oplus/camera/ui/preview/a/aa;

.field private r:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;

.field private s:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/af;->a:I

    .line 29
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/af;->b:I

    .line 30
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/af;->c:I

    .line 31
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/af;->d:Z

    .line 32
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/af;->k:Z

    .line 33
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/af;->l:Z

    .line 34
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/af;->m:Z

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->n:Lcom/oplus/camera/gl/s;

    .line 36
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->o:Lcom/oplus/camera/gl/s;

    .line 37
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->p:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    .line 38
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->q:Lcom/oplus/camera/ui/preview/a/aa;

    .line 39
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->r:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;

    .line 40
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->s:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private A()V
    .locals 2

    .line 405
    invoke-static {}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;->getInstance()Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->p:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    .line 406
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->p:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;->setLogLevel(I)I

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initVideoEffectPara, mHumanEffectApi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->p:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoRetentionV2TexturePreview"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private B()Z
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->p:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a(IZ)I
    .locals 3

    const/16 p0, 0xb4

    const/4 v0, 0x0

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_4

    if-eq p1, p0, :cond_0

    move p0, v0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    :cond_1
    move p0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v2

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_4
    :goto_1
    return p0
.end method

.method private a(I[II)I
    .locals 8

    .line 412
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;

    invoke-direct {v0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;-><init>()V

    .line 414
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/af;->g:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;->CAMERA_TYPE_FRONT:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    goto :goto_0

    .line 415
    :cond_0
    sget-object v1, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;->CAMERA_TYPE_REAR:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;

    .line 414
    :goto_0
    invoke-virtual {v0, v1}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->setCameraType(Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$CameraType;)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/af;->b:I

    .line 416
    invoke-virtual {v0, v1}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->setHeight(I)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/af;->a:I

    .line 417
    invoke-virtual {v0, v1}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->setWidth(I)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;

    move-result-object v0

    .line 418
    invoke-virtual {v0, p3}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->setRotation(I)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 419
    invoke-virtual {v0, v1}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->setOES(Z)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;

    move-result-object v0

    .line 420
    invoke-virtual {v0, p1}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->setTexID(I)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;

    move-result-object p1

    .line 421
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequestBuilder;->build()Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequest;

    move-result-object p1

    .line 422
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTexureResult;

    aget v3, p2, v1

    const/4 v4, 0x0

    iget v5, p0, Lcom/oplus/camera/ui/preview/a/af;->a:I

    iget v6, p0, Lcom/oplus/camera/ui/preview/a/af;->b:I

    move-object v2, v0

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTexureResult;-><init>(IZIII)V

    .line 424
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->p:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;->process(Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTextureRequest;Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTexureResult;)I

    move-result p0

    .line 426
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "processEffect, request: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", processResult: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoRetentionV2TexturePreview"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private a(I[IZI)I
    .locals 2

    .line 368
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/af;->B()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processVideoEffect, textureInput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textureOutput[0]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFrontCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", orientation: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mWidth: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oplus/camera/ui/preview/a/af;->a:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mHeight: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oplus/camera/ui/preview/a/af;->b:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "VideoRetentionV2TexturePreview"

    invoke-static {v0, p3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, p1, p2, p4}, Lcom/oplus/camera/ui/preview/a/af;->a(I[II)I

    move-result p0

    .line 374
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 375
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/af;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->q:Lcom/oplus/camera/ui/preview/a/aa;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/af;Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->p:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/af;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->s:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method private a(IIZ)V
    .locals 2

    .line 284
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/af;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initVideoEffect, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isFrontCamera: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoRetentionV2TexturePreview"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->r:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;

    if-nez p1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/af;->r()Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->r:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/af;->q()V

    .line 293
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->p:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;->release()I

    .line 294
    invoke-direct {p0, p3}, Lcom/oplus/camera/ui/preview/a/af;->b(Z)V

    .line 295
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/af;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/af;->d:Z

    return p1
.end method

.method private b(Z)V
    .locals 3

    .line 432
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->p:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/af;->r:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;

    invoke-virtual {v0, v1}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;->initHandle(Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;)I

    move-result v0

    .line 433
    new-instance v1, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoRetainParams;

    if-eqz p1, :cond_0

    const-string p1, "odm/etc/camera/megvii/videolut_portrait_front.png"

    goto :goto_0

    :cond_0
    const-string p1, "odm/etc/camera/megvii/videolut_portrait.png"

    :goto_0
    const-string v2, "odm/etc/camera/megvii/videolut_background.png"

    .line 435
    invoke-direct {v1, p1, v2}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoRetainParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->p:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    invoke-virtual {p1, v1}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;->setParams(Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoRetainParams;)I

    move-result p1

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initVideoRetentionV2, initResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", paraRet: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sdk version: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->p:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    .line 440
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoRetentionV2TexturePreview"

    .line 439
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/af;)Z
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/af;->B()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/a/af;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/af;->A()V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/a/af;)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->p:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    return-object p0
.end method

.method private q()V
    .locals 0

    .line 361
    invoke-static {}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;->getInstance()Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;->preInit()V

    return-void
.end method

.method private r()Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;
    .locals 2

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->j:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "anc_cache"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 385
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    :cond_0
    :goto_0
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;

    invoke-direct {v0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;-><init>()V

    const-string v1, "/odm/lib64;/odm/lib/rfsa/adsp"

    .line 395
    iput-object v1, v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->nativeLibPath:Ljava/lang/String;

    const/4 v1, 0x1

    .line 396
    iput-boolean v1, v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->isRealTime:Z

    .line 397
    iput-object p0, v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->cachePath:Ljava/lang/String;

    const-string p0, "odm/etc/camera/megvii/video_retention_model"

    .line 398
    iput-object p0, v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->modelPath:Ljava/lang/String;

    .line 399
    sget-object p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->ANC_LOAD_TYPE_VNDKSUPPORT:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$SdkLoadType;->ordinal()I

    move-result p0

    iput p0, v0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoConfig;->sdkLoadType:I

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 261
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

    const-string v1, "VideoRetentionV2TexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/af;->a:I

    .line 264
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/af;->b:I

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;)V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->o:Lcom/oplus/camera/gl/s;

    const-string v1, "VideoRetentionV2TexturePreview"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->o:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTextures, mInputTexture.getId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/af;->o:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->n:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->n:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareTextures, mOutputTexture.getId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->n:Lcom/oplus/camera/gl/s;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/s;->e()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 2

    const-string v0, "VideoRetentionV2TexturePreview"

    const-string v1, "createEngine"

    .line 147
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/af$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/preview/a/af$1;-><init>(Lcom/oplus/camera/ui/preview/a/af;Lcom/oplus/camera/ui/preview/a/aa;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 272
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/af;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 275
    throw p1
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(I)Z
    .locals 1

    .line 48
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/af;->a_(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 55
    :try_start_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->q:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->q:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/aa;->h()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 62
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/af;->k:Z

    if-nez p0, :cond_2

    const-string p0, "VideoRetentionV2TexturePreview"

    const-string p1, "canProcess, texture is not init"

    .line 63
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 59
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 60
    throw p1
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$a;)Z
    .locals 8

    .line 73
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->q:Lcom/oplus/camera/ui/preview/a/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v1, "VideoRetentionV2TexturePreview"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    :try_start_1
    iget-object v0, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->n:Lcom/oplus/camera/gl/s;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/af;->d:Z

    if-nez v0, :cond_1

    const-string p1, "process, not create, so return!"

    .line 83
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 91
    iget-object p1, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    const/4 v0, -0x1

    .line 93
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->h()I

    move-result v3

    .line 94
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->i()I

    move-result v4

    .line 95
    iget-boolean v5, p0, Lcom/oplus/camera/ui/preview/a/af;->g:Z

    .line 96
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/a/af;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 99
    :try_start_2
    iget-boolean v6, p0, Lcom/oplus/camera/ui/preview/a/af;->l:Z

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/af;->B()Z

    move-result v6

    if-nez v6, :cond_2

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process, inTextureWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", inTextureHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, v4, v3, v5}, Lcom/oplus/camera/ui/preview/a/af;->a(IIZ)V

    .line 103
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/af;->l:Z

    .line 106
    :cond_2
    iget v1, p0, Lcom/oplus/camera/ui/preview/a/af;->c:I

    invoke-direct {p0, v1, v5}, Lcom/oplus/camera/ui/preview/a/af;->a(IZ)I

    move-result v1

    .line 108
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/af;->q:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/a/aa;->h()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 109
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->e()I

    move-result p1

    new-array v0, v4, [I

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/af;->n:Lcom/oplus/camera/gl/s;

    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v3

    aput v3, v0, v2

    invoke-direct {p0, p1, v0, v5, v1}, Lcom/oplus/camera/ui/preview/a/af;->a(I[IZI)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/af;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v0, :cond_4

    const/4 p1, 0x4

    if-ne p1, v0, :cond_5

    :cond_4
    move v2, v4

    .line 115
    :cond_5
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/af;->m:Z

    .line 117
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/af;->m:Z

    return p0

    :catchall_0
    move-exception p1

    .line 112
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 113
    throw p1

    :cond_6
    :goto_1
    :try_start_3
    const-string p1, "process, false"

    .line 77
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    .line 88
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 89
    throw p1
.end method

.method public b()V
    .locals 2

    const-string v0, "VideoRetentionV2TexturePreview"

    const-string v1, "onDestroy"

    .line 126
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/af;->e()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 280
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/af;->c:I

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 0

    const/16 p0, 0x100

    return p0
.end method

.method public e()V
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyEngine, mHumanEffectApi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/af;->p:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRetentionV2TexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/af$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/af$2;-><init>(Lcom/oplus/camera/ui/preview/a/af;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->o:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public g()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af;->n:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i()V
    .locals 4

    const-string v0, "VideoRetentionV2TexturePreview"

    const-string v1, "newTextures"

    .line 216
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/af;->a:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/af;->b:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->o:Lcom/oplus/camera/gl/s;

    .line 219
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/af;->a:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/af;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->n:Lcom/oplus/camera/gl/s;

    .line 220
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/af;->k:Z

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "VideoRetentionV2TexturePreview"

    const-string v1, "recycleTextures"

    .line 240
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/af;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->o:Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 248
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/af;->o:Lcom/oplus/camera/gl/s;

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af;->n:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_2

    .line 252
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 253
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/af;->n:Lcom/oplus/camera/gl/s;

    :cond_2
    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/af;->k:Z

    return-void
.end method

.method public y()Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/af;->m:Z

    return p0
.end method
