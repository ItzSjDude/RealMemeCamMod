.class public Lcom/oplus/camera/ui/preview/a/ae;
.super Lcom/oplus/camera/ui/preview/a/y;
.source "VideoRetentionTexturePreview.java"


# static fields
.field public static a:Ljava/lang/String; = "0ms"


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/content/Context;

.field private p:Lcom/oplus/camera/gl/s;

.field private q:Lcom/oplus/camera/gl/s;

.field private r:Lcom/oplus/ocs/camera/HumanVideoApiHelper;

.field private s:Lcom/oplus/camera/ui/preview/a/aa;

.field private t:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;

.field private u:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->b:I

    .line 33
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->c:I

    .line 34
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->d:I

    .line 36
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->k:Z

    .line 37
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->l:Z

    .line 38
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->m:Z

    .line 39
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->n:Z

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->o:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->p:Lcom/oplus/camera/gl/s;

    .line 43
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->q:Lcom/oplus/camera/gl/s;

    .line 44
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->r:Lcom/oplus/ocs/camera/HumanVideoApiHelper;

    .line 45
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->s:Lcom/oplus/camera/ui/preview/a/aa;

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->t:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;

    .line 48
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->u:Ljava/util/concurrent/locks/Lock;

    .line 52
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ae;->o:Landroid/content/Context;

    return-void
.end method

.method private A()V
    .locals 1

    .line 435
    invoke-static {}, Lcom/oplus/ocs/camera/HumanVideoApiHelper;->getInstance()Lcom/oplus/ocs/camera/HumanVideoApiHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->r:Lcom/oplus/ocs/camera/HumanVideoApiHelper;

    .line 436
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->r:Lcom/oplus/ocs/camera/HumanVideoApiHelper;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper;->setLogLevel(I)I

    return-void
.end method

.method private B()Z
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->r:Lcom/oplus/ocs/camera/HumanVideoApiHelper;

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
    .locals 2

    .line 440
    new-instance v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;

    invoke-direct {v0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;-><init>()V

    .line 441
    new-instance v1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTexureResult;

    invoke-direct {v1}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTexureResult;-><init>()V

    .line 442
    invoke-direct {p0, v0, p1, p3}, Lcom/oplus/camera/ui/preview/a/ae;->a(Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;II)V

    .line 443
    invoke-direct {p0, v1, p2, p3}, Lcom/oplus/camera/ui/preview/a/ae;->a(Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTexureResult;[II)V

    .line 444
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->r:Lcom/oplus/ocs/camera/HumanVideoApiHelper;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/ocs/camera/HumanVideoApiHelper;->process(Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessRequest;Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessResult;)I

    move-result p0

    .line 446
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "processVideoEffect, processResult: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoRetentionTexturePreview"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private a(I[IZI)I
    .locals 3

    .line 379
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ae;->B()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 380
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

    iget p3, p0, Lcom/oplus/camera/ui/preview/a/ae;->b:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mHeight: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oplus/camera/ui/preview/a/ae;->c:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "VideoRetentionTexturePreview"

    invoke-static {v0, p3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 385
    invoke-direct {p0, p1, p2, p4}, Lcom/oplus/camera/ui/preview/a/ae;->a(I[II)I

    move-result p0

    .line 387
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 389
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "processVideoEffect X, costTime: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/ae;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ae;->s:Lcom/oplus/camera/ui/preview/a/aa;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/ae;Lcom/oplus/ocs/camera/HumanVideoApiHelper;)Lcom/oplus/ocs/camera/HumanVideoApiHelper;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ae;->r:Lcom/oplus/ocs/camera/HumanVideoApiHelper;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/ae;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->u:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method private a(IIZ)V
    .locals 2

    .line 298
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ae;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
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

    const-string p2, "VideoRetentionTexturePreview"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/ae;->t:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;

    if-nez p1, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ae;->r()Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ae;->t:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ae;->q()V

    .line 306
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/ae;->r:Lcom/oplus/ocs/camera/HumanVideoApiHelper;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/HumanVideoApiHelper;->release()I

    .line 307
    invoke-direct {p0, p3}, Lcom/oplus/camera/ui/preview/a/ae;->b(Z)V

    .line 308
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    :cond_1
    return-void
.end method

.method private a(Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;II)V
    .locals 2

    .line 396
    iget-object v0, p1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/ae;->c:I

    iput v1, v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->height:I

    .line 397
    iget-object v0, p1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iget p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->b:I

    iput p0, v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->width:I

    .line 398
    iget-object p0, p1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iput p3, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->rotation:I

    .line 399
    iget-object p0, p1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iput p2, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->texID:I

    .line 400
    iget-object p0, p1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTextureRequest;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->isOES:Z

    return-void
.end method

.method private a(Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTexureResult;[II)V
    .locals 2

    .line 404
    iget-object v0, p1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTexureResult;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    const/4 v1, 0x0

    aget p2, p2, v1

    iput p2, v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->texID:I

    .line 405
    iget-object p2, p1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTexureResult;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iput p3, p2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->rotation:I

    .line 406
    iget-object p2, p1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTexureResult;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iget p3, p0, Lcom/oplus/camera/ui/preview/a/ae;->b:I

    iput p3, p2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->width:I

    .line 407
    iget-object p2, p1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTexureResult;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iget p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->c:I

    iput p0, p2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->height:I

    .line 408
    iget-object p0, p1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessTexureResult;->humanTexture:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;

    iput-boolean v1, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanTexture;->isOES:Z

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/ae;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ae;->k:Z

    return p1
.end method

.method private b(Z)V
    .locals 4

    .line 452
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->r:Lcom/oplus/ocs/camera/HumanVideoApiHelper;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ae;->t:Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;

    invoke-virtual {v0, v1}, Lcom/oplus/ocs/camera/HumanVideoApiHelper;->initHandle(Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;)I

    move-result v0

    .line 453
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ae;->r:Lcom/oplus/ocs/camera/HumanVideoApiHelper;

    sget-object v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$FeatureType;->ANCHUM_FEATURE_BOKEH:Lcom/oplus/ocs/camera/HumanVideoApiHelper$FeatureType;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/oplus/ocs/camera/HumanVideoApiHelper;->enableRuntimeFeature(Lcom/oplus/ocs/camera/HumanVideoApiHelper$FeatureType;Z)I

    .line 454
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ae;->r:Lcom/oplus/ocs/camera/HumanVideoApiHelper;

    sget-object v2, Lcom/oplus/ocs/camera/HumanVideoApiHelper$FeatureType;->ANCHUM_FEATURE_RETAIN:Lcom/oplus/ocs/camera/HumanVideoApiHelper$FeatureType;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/oplus/ocs/camera/HumanVideoApiHelper;->enableRuntimeFeature(Lcom/oplus/ocs/camera/HumanVideoApiHelper$FeatureType;Z)I

    .line 455
    new-instance v1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoRetainParams;

    invoke-direct {v1}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoRetainParams;-><init>()V

    const-string v2, "odm/etc/camera/megvii/videolut_background.png"

    .line 456
    iput-object v2, v1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoRetainParams;->bgPath:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "odm/etc/camera/megvii/videolut_portrait_front.png"

    .line 459
    iput-object p1, v1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoRetainParams;->fgPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "odm/etc/camera/megvii/videolut_portrait.png"

    .line 461
    iput-object p1, v1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoRetainParams;->fgPath:Ljava/lang/String;

    .line 464
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->r:Lcom/oplus/ocs/camera/HumanVideoApiHelper;

    invoke-virtual {p0, v1}, Lcom/oplus/ocs/camera/HumanVideoApiHelper;->setParams(Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoParams;)I

    move-result p0

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initVideoLut  initResult:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " paraRet:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoRetentionTexturePreview"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/ae;)Z
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ae;->B()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/a/ae;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ae;->A()V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/a/ae;)Lcom/oplus/ocs/camera/HumanVideoApiHelper;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->r:Lcom/oplus/ocs/camera/HumanVideoApiHelper;

    return-object p0
.end method

.method private q()V
    .locals 0

    .line 373
    invoke-static {}, Lcom/oplus/ocs/camera/HumanVideoApiHelper;->getInstance()Lcom/oplus/ocs/camera/HumanVideoApiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper;->preInit()V

    return-void
.end method

.method private r()Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;
    .locals 2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->o:Landroid/content/Context;

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

    .line 415
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 421
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 424
    :cond_0
    :goto_0
    new-instance v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;

    invoke-direct {v0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;-><init>()V

    .line 425
    sget-object v1, Lcom/oplus/ocs/camera/HumanVideoApiHelper$FeatureType;->ANCHUM_FEATURE_RETAIN:Lcom/oplus/ocs/camera/HumanVideoApiHelper$FeatureType;

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$FeatureType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;->sdkCapability:I

    const-string v1, "/odm/lib64;/odm/lib/rfsa/adsp"

    .line 426
    iput-object v1, v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;->nativeLibPath:Ljava/lang/String;

    const/4 v1, 0x1

    .line 427
    iput-boolean v1, v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;->isRealTime:Z

    .line 428
    iput-object p0, v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;->cachePath:Ljava/lang/String;

    const-string p0, "odm/etc/camera/megvii/video_retention_model"

    .line 429
    iput-object p0, v0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoConfig;->modelPath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 275
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

    const-string v1, "VideoRetentionTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/ae;->b:I

    .line 278
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ae;->c:I

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->q:Lcom/oplus/camera/gl/s;

    const-string v1, "VideoRetentionTexturePreview"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->q:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTextures, mInputTexture.getId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ae;->q:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->p:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->p:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareTextures, mOutputTexture.getId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->p:Lcom/oplus/camera/gl/s;

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

    const-string v0, "VideoRetentionTexturePreview"

    const-string v1, "createEngine"

    .line 163
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/ae$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/preview/a/ae$1;-><init>(Lcom/oplus/camera/ui/preview/a/ae;Lcom/oplus/camera/ui/preview/a/aa;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 286
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ae;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 289
    throw p1
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(I)Z
    .locals 1

    .line 57
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/ae;->a_(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/ae;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64
    :try_start_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/ae;->s:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/ae;->s:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/aa;->h()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/ae;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 71
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->l:Z

    if-nez p0, :cond_2

    const-string p0, "VideoRetentionTexturePreview"

    const-string p1, "canProcess, texture is not init"

    .line 72
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 68
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 69
    throw p1
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$a;)Z
    .locals 10

    .line 82
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v0

    .line 84
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ae;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ae;->s:Lcom/oplus/camera/ui/preview/a/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "VideoRetentionTexturePreview"

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    :try_start_1
    iget-object v2, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ae;->p:Lcom/oplus/camera/gl/s;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 93
    :cond_0
    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/ae;->k:Z

    if-nez v2, :cond_1

    const-string p1, "process, not create, so return!"

    .line 94
    invoke-static {v3, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v4

    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ae;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 102
    iget-object p1, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    const/4 v2, -0x1

    .line 104
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->h()I

    move-result v5

    .line 105
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->i()I

    move-result v6

    .line 106
    iget-boolean v7, p0, Lcom/oplus/camera/ui/preview/a/ae;->g:Z

    .line 108
    iget-object v8, p0, Lcom/oplus/camera/ui/preview/a/ae;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 111
    :try_start_2
    iget-boolean v8, p0, Lcom/oplus/camera/ui/preview/a/ae;->m:Z

    if-eqz v8, :cond_2

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ae;->B()Z

    move-result v8

    if-nez v8, :cond_2

    .line 112
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "process, inTextureWidth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", inTextureHeight: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v6, v5, v7}, Lcom/oplus/camera/ui/preview/a/ae;->a(IIZ)V

    .line 115
    iput-boolean v4, p0, Lcom/oplus/camera/ui/preview/a/ae;->m:Z

    .line 118
    :cond_2
    iget v3, p0, Lcom/oplus/camera/ui/preview/a/ae;->d:I

    invoke-direct {p0, v3, v7}, Lcom/oplus/camera/ui/preview/a/ae;->a(IZ)I

    move-result v3

    .line 120
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/a/ae;->s:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/preview/a/aa;->h()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 121
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->e()I

    move-result p1

    new-array v2, v6, [I

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/a/ae;->p:Lcom/oplus/camera/gl/s;

    invoke-virtual {v5}, Lcom/oplus/camera/gl/s;->e()I

    move-result v5

    aput v5, v2, v4

    invoke-direct {p0, p1, v2, v7, v3}, Lcom/oplus/camera/ui/preview/a/ae;->a(I[IZI)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/ae;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v2, :cond_4

    const/4 p1, 0x4

    if-ne p1, v2, :cond_5

    :cond_4
    move v4, v6

    .line 127
    :cond_5
    iput-boolean v4, p0, Lcom/oplus/camera/ui/preview/a/ae;->n:Z

    .line 129
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v2

    .line 131
    invoke-static {v0, v1, v2, v3}, Lcom/oplus/camera/algovisualization/a;->a(JJ)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/oplus/camera/ui/preview/a/ae;->a:Ljava/lang/String;

    .line 133
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->n:Z

    return p0

    :catchall_0
    move-exception p1

    .line 124
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 125
    throw p1

    :cond_6
    :goto_1
    :try_start_3
    const-string p1, "process, false"

    .line 88
    invoke-static {v3, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    .line 99
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 100
    throw p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 294
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ae;->d:I

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

    const-string v0, "VideoRetentionTexturePreview"

    const-string v1, "destroyEngine"

    .line 188
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/ae$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/ae$2;-><init>(Lcom/oplus/camera/ui/preview/a/ae;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->q:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public g()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->p:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i()V
    .locals 4

    const-string v0, "VideoRetentionTexturePreview"

    const-string v1, "newTextures"

    .line 230
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/ae;->b:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/ae;->c:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->q:Lcom/oplus/camera/gl/s;

    .line 233
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/ae;->b:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/ae;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->p:Lcom/oplus/camera/gl/s;

    .line 234
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/ae;->l:Z

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "VideoRetentionTexturePreview"

    const-string v1, "recycleTextures"

    .line 254
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->l:Z

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->q:Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 262
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/ae;->q:Lcom/oplus/camera/gl/s;

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->p:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_2

    .line 266
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 267
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/ae;->p:Lcom/oplus/camera/gl/s;

    :cond_2
    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ae;->l:Z

    return-void
.end method

.method public y()Z
    .locals 0

    .line 138
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/ae;->n:Z

    return p0
.end method
