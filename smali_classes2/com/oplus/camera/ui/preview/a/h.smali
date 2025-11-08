.class public Lcom/oplus/camera/ui/preview/a/h;
.super Lcom/oplus/camera/ui/preview/a/y;
.source "FaceSlenderTexturePreview.java"


# static fields
.field public static a:Ljava/lang/String; = "0ms"


# instance fields
.field private b:Lcom/oplus/camera/gl/s;

.field private c:Lcom/oplus/camera/gl/s;

.field private d:Lcom/oplus/camera/ui/preview/a/aa;

.field private k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

.field private l:Z

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:F

.field private final t:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->b:Lcom/oplus/camera/gl/s;

    .line 30
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->c:Lcom/oplus/camera/gl/s;

    .line 31
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 32
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/h;->l:Z

    .line 34
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/h;->m:I

    .line 35
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/h;->n:I

    .line 36
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/h;->o:Z

    .line 37
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/h;->p:Z

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/h;->q:I

    const/4 p1, 0x1

    .line 39
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/h;->r:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 40
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/h;->s:F

    .line 41
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->t:Ljava/lang/Object;

    const-string p1, "com.oplus.facebeauty.version"

    .line 46
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/a/h;->q:I

    .line 48
    invoke-static {}, Lcom/oplus/camera/e;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 49
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/h;->r:I

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/h;Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;)Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/h;)Ljava/lang/Object;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/h;->t:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/h;)Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    return-object p0
.end method

.method private b(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initOplusFaceBeautyPreview, textureWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", textureHeight: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", facebeauty version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oplus/camera/ui/preview/a/h;->q:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isMakeupSupport: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 212
    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/a/aa;->m()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", makeupType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 213
    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/a/aa;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FaceSlenderTexturePreview"

    .line 211
    invoke-static {v3, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "initOplusFaceBeautyPreview"

    .line 215
    invoke-static {v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 218
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/aa;->H()Lcom/oplus/camera/ui/preview/a/aa$b;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/aa;->H()Lcom/oplus/camera/ui/preview/a/aa$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/a/aa$b;->a()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 222
    :goto_0
    iget-object v15, v0, Lcom/oplus/camera/ui/preview/a/h;->t:Ljava/lang/Object;

    monitor-enter v15

    .line 223
    :try_start_0
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    if-eqz v4, :cond_1

    .line 224
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/h;->h:Lcom/oplus/camera/gl/GLRootView;

    invoke-virtual {v4}, Lcom/oplus/camera/gl/GLRootView;->g()V

    .line 225
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    invoke-virtual {v4}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->destroy()I

    .line 228
    :cond_1
    new-instance v4, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    invoke-direct {v4}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;-><init>()V

    iput-object v4, v0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    .line 229
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    const-string v6, "preview_makeup_support"

    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 230
    invoke-virtual {v7}, Lcom/oplus/camera/ui/preview/a/aa;->m()Z

    move-result v7

    invoke-static {v7}, Lcom/oplus/camera/ui/preview/a/g;->a(Z)Ljava/lang/String;

    move-result-object v7

    .line 229
    invoke-virtual {v4, v6, v7}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->setPreviewParams(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    const-string v6, "preview_makeup_type"

    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v7}, Lcom/oplus/camera/ui/preview/a/aa;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->setPreviewParams(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    const-string v6, "preview_ai_video_state"

    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 233
    invoke-virtual {v7}, Lcom/oplus/camera/ui/preview/a/aa;->K()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 232
    invoke-virtual {v4, v6, v7}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->setPreviewParams(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    const-string v6, "preview_face_dr_state"

    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 235
    invoke-virtual {v7}, Lcom/oplus/camera/ui/preview/a/aa;->L()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 234
    invoke-virtual {v4, v6, v7}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->setPreviewParams(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "none"

    .line 237
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v6}, Lcom/oplus/camera/ui/preview/a/aa;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 238
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    const-string v6, "preview_makeup_value"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->setPreviewParams(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 240
    :cond_2
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    const-string v6, "preview_makeup_value"

    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 241
    invoke-virtual {v7}, Lcom/oplus/camera/ui/preview/a/aa;->l()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 240
    invoke-virtual {v4, v6, v7}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->setPreviewParams(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_1
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    iget v6, v0, Lcom/oplus/camera/ui/preview/a/h;->q:I

    iget v7, v0, Lcom/oplus/camera/ui/preview/a/h;->r:I

    .line 245
    invoke-static {}, Lcom/oplus/camera/l/c;->h()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "cn"

    goto :goto_2

    :cond_3
    const-string v8, ""

    .line 246
    :goto_2
    invoke-static {}, Lcom/oplus/camera/util/Util;->aw()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/oplus/camera/util/Util;->ax()Ljava/lang/String;

    move-result-object v10

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/oplus/camera/ui/preview/a/h;->g:Z

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v11, v3

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v1, 0x1

    move v11, v1

    :goto_4
    const/4 v12, 0x1

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 248
    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/aa;->t()[B

    move-result-object v13

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/aa;->B()I

    move-result v14

    move-object v3, v4

    move/from16 v4, p1

    move/from16 v5, p2

    .line 244
    invoke-virtual/range {v3 .. v14}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->init(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[BI)I

    .line 249
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "initOplusFaceBeautyPreview"

    .line 251
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    const-string v0, "FaceSlenderTexturePreview"

    const-string v1, "initOplusFaceBeautyPreview, X"

    .line 253
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 249
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 378
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

    const-string v1, "FaceSlenderTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/h;->m:I

    .line 381
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/h;->n:I

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;)V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/h;->b:Lcom/oplus/camera/gl/s;

    const-string v1, "FaceSlenderTexturePreview"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/h;->b:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTextures, mInputTexture id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/h;->b:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/h;->c:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/h;->c:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareTextures, mOutputTexture id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/h;->c:Lcom/oplus/camera/gl/s;

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

    .line 330
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->c:Lcom/oplus/camera/gl/s;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 2

    const-string v0, "FaceSlenderTexturePreview"

    const-string v1, "createEngine"

    .line 270
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextureSizeChanged, sizeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceSlenderTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/h;->l:Z

    return-void
.end method

.method public a([BII)V
    .locals 0

    .line 55
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/a/h;->t:Ljava/lang/Object;

    monitor-enter p2

    .line 56
    :try_start_0
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 57
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->updataMetaParams([B)I

    .line 59
    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a([B[BII)V
    .locals 0

    .line 64
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/a/h;->t:Ljava/lang/Object;

    monitor-enter p3

    .line 65
    :try_start_0
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    if-eqz p4, :cond_0

    .line 66
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    invoke-virtual {p4, p1}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->updataMetaParams([B)I

    .line 67
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    invoke-virtual {p0, p2}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->updataFfd([B)I

    .line 69
    :cond_0
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(I)Z
    .locals 3

    .line 155
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/h;->a_(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->c:Lcom/oplus/camera/gl/s;

    const-string v1, "FaceSlenderTexturePreview"

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->b:Lcom/oplus/camera/gl/s;

    if-nez p1, :cond_1

    goto :goto_1

    .line 166
    :cond_1
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/h;->o:Z

    if-nez p1, :cond_2

    const-string p0, "canProcess, texture is not inited"

    .line 167
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 172
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    if-nez p1, :cond_3

    const-string p0, "canProcess, mRequest is null"

    .line 173
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 181
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 182
    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/aa;->C()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 183
    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/aa;->H()Lcom/oplus/camera/ui/preview/a/aa$b;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 184
    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/aa;->H()Lcom/oplus/camera/ui/preview/a/aa$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/a/aa$b;->a()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/h;->g:Z

    if-nez p1, :cond_4

    return v0

    .line 189
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/aa;->j()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move p1, v0

    :goto_0
    if-nez p1, :cond_5

    .line 196
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 197
    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/aa;->k()Ljava/lang/String;

    move-result-object p1

    const-string v1, "none"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    const/4 v0, 0x1

    .line 201
    :cond_6
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/h;->p:Z

    if-nez p1, :cond_7

    if-eqz v0, :cond_7

    .line 202
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/h;->k()I

    .line 205
    :cond_7
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/h;->p:Z

    return v0

    .line 160
    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canProcess, mOutputTexture or mInputTexture is null, mOutputTexture: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/h;->c:Lcom/oplus/camera/gl/s;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mInputTexture: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/h;->b:Lcom/oplus/camera/gl/s;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$a;)Z
    .locals 9

    .line 74
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v0

    .line 76
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    const-string v3, "FaceSlenderTexturePreview"

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    iget-object v2, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    if-eqz v2, :cond_6

    iget-boolean v2, p1, Lcom/oplus/camera/ui/preview/a/y$a;->h:Z

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 82
    :cond_0
    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/h;->l:Z

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->h()I

    move-result v2

    iget-object v5, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    invoke-virtual {v5}, Lcom/oplus/camera/gl/s;->i()I

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/oplus/camera/ui/preview/a/h;->b(II)V

    .line 84
    iput-boolean v4, p0, Lcom/oplus/camera/ui/preview/a/h;->l:Z

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    if-eqz v2, :cond_5

    const-string v2, "FaceSlenderTexturePreview.process"

    .line 88
    invoke-static {v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 90
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/preview/a/aa;->j()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v4

    .line 91
    :goto_0
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    .line 92
    invoke-static {v5}, Lcom/oplus/camera/ui/preview/a/g;->a(Z)Ljava/lang/String;

    move-result-object v5

    const-string v8, "preview_face_beauty_enable"

    .line 91
    invoke-virtual {v7, v8, v5}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->setPreviewParams(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v7}, Lcom/oplus/camera/ui/preview/a/aa;->k()Ljava/lang/String;

    move-result-object v7

    const-string v8, "preview_makeup_type"

    invoke-virtual {v5, v8, v7}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->setPreviewParams(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 96
    invoke-virtual {v7}, Lcom/oplus/camera/ui/preview/a/aa;->K()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "preview_ai_video_state"

    .line 95
    invoke-virtual {v5, v8, v7}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->setPreviewParams(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 98
    invoke-virtual {v7}, Lcom/oplus/camera/ui/preview/a/aa;->L()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "preview_face_dr_state"

    .line 97
    invoke-virtual {v5, v8, v7}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->setPreviewParams(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/preview/a/aa;->k()Ljava/lang/String;

    move-result-object v5

    const-string v7, "none"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "preview_makeup_value"

    if-eqz v5, :cond_3

    .line 101
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->setPreviewParams(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 103
    :cond_3
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    iget-object v8, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 104
    invoke-virtual {v8}, Lcom/oplus/camera/ui/preview/a/aa;->l()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 103
    invoke-virtual {v5, v7, v8}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->setPreviewParams(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process, makeup type: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v7}, Lcom/oplus/camera/ui/preview/a/aa;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", makeup level: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 108
    invoke-virtual {v7}, Lcom/oplus/camera/ui/preview/a/aa;->l()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-static {v3, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v7}, Lcom/oplus/camera/ui/preview/a/aa;->u()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->updataPreviewParams(J)I

    .line 111
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    iget-object p1, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    invoke-virtual {p1}, Lcom/oplus/camera/gl/s;->e()I

    move-result p1

    new-array v7, v6, [I

    iget-object v8, p0, Lcom/oplus/camera/ui/preview/a/h;->c:Lcom/oplus/camera/gl/s;

    invoke-virtual {v8}, Lcom/oplus/camera/gl/s;->e()I

    move-result v8

    aput v8, v7, v4

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    .line 112
    invoke-virtual {v8}, Lcom/oplus/camera/ui/preview/a/aa;->q()[I

    move-result-object v8

    .line 111
    invoke-virtual {v5, p1, v7, v4, v8}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->process(I[I[I[I)I

    .line 114
    invoke-static {v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->getZoomScale()F

    move-result p1

    .line 118
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/a/aa;->H()Lcom/oplus/camera/ui/preview/a/aa$b;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/h;->s:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process, zoomScale: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/h;->s:F

    .line 122
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/aa;->H()Lcom/oplus/camera/ui/preview/a/aa$b;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa$b;->a(F)V

    .line 125
    :cond_4
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide p0

    .line 127
    invoke-static {v0, v1, p0, p1}, Lcom/oplus/camera/algovisualization/a;->a(JJ)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/ui/preview/a/h;->a:Ljava/lang/String;

    return v6

    :cond_5
    return v4

    .line 77
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process, mReques: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/h;->d:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", frameInfo: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v4
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

    const/4 p0, 0x4

    return p0
.end method

.method public e()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/h;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/h$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/h$1;-><init>(Lcom/oplus/camera/ui/preview/a/h;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/h;->b:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public g()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/h;->c:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i()V
    .locals 4

    const-string v0, "FaceSlenderTexturePreview"

    const-string v1, "newTextures"

    .line 311
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/h;->m:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/h;->n:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/h;->b:Lcom/oplus/camera/gl/s;

    .line 314
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/h;->m:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/h;->n:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/h;->c:Lcom/oplus/camera/gl/s;

    .line 315
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/h;->o:Z

    return-void
.end method

.method public j()V
    .locals 4

    .line 355
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/h;->o:Z

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/h;->b:Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    const-string v2, "FaceSlenderTexturePreview"

    if-eqz v0, :cond_1

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recycleTextures, mInputTexture id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/h;->b:Lcom/oplus/camera/gl/s;

    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/h;->b:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 363
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/h;->b:Lcom/oplus/camera/gl/s;

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/h;->c:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_2

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recycleTextures, mOutputTexture id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/h;->c:Lcom/oplus/camera/gl/s;

    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/h;->c:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 370
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/h;->c:Lcom/oplus/camera/gl/s;

    :cond_2
    const/4 v0, 0x0

    .line 373
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/h;->o:Z

    return-void
.end method

.method public k()I
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/h;->k:Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/OplusFaceBeautyPreviewHelper;->reset()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public l()I
    .locals 0

    .line 395
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/h;->g:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
