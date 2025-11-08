.class public Lcom/oplus/camera/ui/preview/a/c;
.super Lcom/oplus/camera/ui/preview/a/y;
.source "AnimojiTexturePreview.java"


# static fields
.field public static a:Ljava/lang/String; = "0ms"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

.field private G:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

.field private H:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

.field private I:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

.field b:Ljava/lang/Runnable;

.field c:Ljava/lang/Runnable;

.field d:Ljava/lang/Runnable;

.field private final k:Ljava/lang/Object;

.field private l:I

.field private m:I

.field private n:I

.field private o:[F

.field private p:Lcom/oplus/camera/gl/s;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/util/Size;

.field private v:Lcom/oplus/camera/ui/preview/a/aa;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 141
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/c;->k:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/c;->l:I

    .line 68
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/c;->m:I

    .line 69
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/c;->n:I

    const/4 v0, 0x3

    .line 70
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->o:[F

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->p:Lcom/oplus/camera/gl/s;

    .line 72
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->q:Z

    .line 73
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->r:Z

    .line 74
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->s:Z

    .line 75
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->t:Z

    .line 76
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->u:Landroid/util/Size;

    .line 77
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->v:Lcom/oplus/camera/ui/preview/a/aa;

    .line 78
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->w:Z

    .line 79
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->x:Z

    .line 80
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->y:Z

    .line 81
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->z:Z

    .line 82
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->A:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->B:Ljava/lang/String;

    .line 84
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->C:Z

    .line 85
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->D:Z

    .line 86
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->E:Z

    .line 88
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    .line 89
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->G:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 90
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->H:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 91
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->I:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 93
    new-instance p1, Lcom/oplus/camera/ui/preview/a/c$1;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/c$1;-><init>(Lcom/oplus/camera/ui/preview/a/c;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/c;->b:Ljava/lang/Runnable;

    .line 106
    new-instance p1, Lcom/oplus/camera/ui/preview/a/c$2;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/c$2;-><init>(Lcom/oplus/camera/ui/preview/a/c;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/c;->c:Ljava/lang/Runnable;

    .line 115
    new-instance p1, Lcom/oplus/camera/ui/preview/a/c$3;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/a/c$3;-><init>(Lcom/oplus/camera/ui/preview/a/c;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/c;->d:Ljava/lang/Runnable;

    return-void
.end method

.method private A()V
    .locals 4

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAnimojiRender, mbInitialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/c;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAvatarEngineRender: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimojiTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/c;->w:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    if-eqz v0, :cond_2

    const-string v0, "Animoji.releaseAnimojiRender"

    .line 498
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 500
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    invoke-virtual {v2}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->releaseRender()V

    .line 502
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/c;->G:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 503
    invoke-virtual {v2, v3}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->setData([B)V

    .line 506
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/c;->H:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    if-eqz p0, :cond_1

    .line 507
    invoke-virtual {p0, v3}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->setData([B)V

    .line 510
    :cond_1
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    :cond_2
    const-string p0, "releaseAnimojiEngine, end"

    .line 513
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private B()V
    .locals 11

    .line 545
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->v:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/aa;->o()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "AnimojiTexturePreview"

    const-string v0, "initTemplateResource, item is null"

    .line 548
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "Animoji.initTemplateResource"

    .line 553
    invoke-static {v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/data/StickerItem;->getFileContentUri()Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerName()Ljava/lang/String;

    move-result-object v2

    .line 558
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/c;->j:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/oplus/camera/sticker/g;->b(Landroid/content/Context;Lcom/oplus/camera/sticker/data/StickerItem;)Lcom/oplus/camera/sticker/data/AnimojiStickerExtendedInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 562
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/data/AnimojiStickerExtendedInfo;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "#F5E274"

    .line 565
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/c;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 567
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/c;->j:Landroid/content/Context;

    if-eqz v4, :cond_5

    .line 568
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/c;->j:Landroid/content/Context;

    invoke-static {v4}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/c;->j:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    .line 569
    invoke-direct {p0, v1, v3}, Lcom/oplus/camera/ui/preview/a/c;->a([BLjava/lang/String;)Z

    move-result v1

    .line 571
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/c;->k:Ljava/lang/Object;

    monitor-enter v3

    const-wide/16 v4, -0x1

    :try_start_0
    const-string v6, "AnimojiTexturePreview"

    .line 574
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initTemplateResource, stickerName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", unZipResult: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_3

    .line 577
    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/preview/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/oplus/camera/ui/preview/a/c;->A:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 580
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 581
    iget-object v8, p0, Lcom/oplus/camera/ui/preview/a/c;->o:[F

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v9, v10

    aput v9, v8, v7

    .line 582
    iget-object v8, p0, Lcom/oplus/camera/ui/preview/a/c;->o:[F

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    aput v9, v8, v6

    .line 583
    iget-object v8, p0, Lcom/oplus/camera/ui/preview/a/c;->o:[F

    const/4 v9, 0x2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v10

    aput v0, v8, v9

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    if-eqz v0, :cond_3

    .line 587
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/c;->A:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->setTemplate(Ljava/lang/String;)J

    move-result-wide v4

    :cond_3
    const-string v0, "Animoji.initTemplateResource"

    .line 591
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    const-string v0, "AnimojiTexturePreview"

    .line 593
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initTemplateResource, stickerName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", unZipResult: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", templateResult: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v6, v7

    .line 596
    :goto_1
    iput-boolean v6, p0, Lcom/oplus/camera/ui/preview/a/c;->q:Z

    .line 597
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method private C()Ljava/lang/String;
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->B:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->j:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/c;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/animoji"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->B:Ljava/lang/String;

    .line 622
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/c;->B:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Context;II)J
    .locals 5

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAnimojiEngine, start, mbInitialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/c;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AnimojiTexturePreview"

    invoke-static {p3, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/a/c;->j:Landroid/content/Context;

    const-wide/16 v0, -0x1

    if-nez p2, :cond_0

    return-wide v0

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/c;->C()Ljava/lang/String;

    move-result-object p2

    .line 447
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/a/c;->j:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "/odm/etc/camera/sticker/material/animoji/data.zip"

    invoke-direct {p0, p3, v3, p2, v2}, Lcom/oplus/camera/ui/preview/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 449
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/a/c;->k:Ljava/lang/Object;

    monitor-enter p3

    .line 450
    :try_start_0
    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/c;->w:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    if-nez v2, :cond_1

    const-string v0, "Animoji.initAnimojiEngine"

    .line 451
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 453
    new-instance v0, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    invoke-direct {v0, p1}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    .line 455
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    const-string v0, "/data/track_data.dat"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/config.txt"

    .line 456
    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 455
    invoke-virtual {p1, v0, v1, v2}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->initialize(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    const-string p1, "AnimojiTexturePreview"

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initAnimojiEngine, end, mCurrentTemplatePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/c;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", initResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/c;->q()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->y:Z

    .line 462
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/c;->w:Z

    const-string p0, "Animoji.initAnimojiEngine"

    .line 464
    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    const-string p0, "AnimojiTexturePreview"

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAnimojiEngine, end, initResult: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", dataPath: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_1
    monitor-exit p3

    return-wide v0

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/c;Landroid/content/Context;II)J
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/preview/a/c;->a(Landroid/content/Context;II)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/c;)Ljava/lang/Object;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/c;->k:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/c;->C()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 603
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 607
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 609
    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 610
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 699
    :cond_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 700
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 702
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 703
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 704
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "../"

    .line 706
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 710
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 711
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v5, "\\*"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 712
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 717
    :try_start_0
    new-instance v6, Ljava/io/File;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 720
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 723
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_4

    if-eqz v2, :cond_1

    .line 740
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 725
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, ".zip"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 726
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_5
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v4, 0x400

    .line 730
    :try_start_2
    new-array v4, v4, [B

    .line 733
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_6

    .line 734
    invoke-virtual {v3, v4, v8, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    .line 740
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 744
    :cond_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    move-object v5, v3

    goto :goto_3

    :catch_0
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v3

    .line 737
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_8

    .line 740
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v5, :cond_1

    .line 744
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_0

    :goto_3
    if-eqz v2, :cond_9

    .line 740
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v5, :cond_a

    .line 744
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 746
    :cond_a
    throw p0

    .line 749
    :cond_b
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 751
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    .line 752
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 753
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 755
    invoke-static {v0, p1}, Lcom/oplus/camera/ui/preview/a/c;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 756
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_4

    :cond_c
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    const/4 p0, 0x1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 805
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move-object p4, p1

    goto :goto_2

    .line 808
    :cond_1
    :goto_0
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 811
    invoke-virtual {p4}, Ljava/io/File;->mkdirs()Z

    .line 814
    :cond_2
    new-instance p4, Ljava/io/FileInputStream;

    invoke-direct {p4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 815
    :try_start_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p2

    sub-int/2addr p3, p0

    aget-object p2, p2, p3

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 817
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 819
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 p1, 0x400

    .line 820
    :try_start_2
    new-array p1, p1, [B

    .line 823
    :goto_1
    invoke-virtual {p4, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 824
    invoke-virtual {v1, p1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    const-string p1, ".zip"

    .line 827
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/oplus/camera/ui/preview/a/c;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 828
    invoke-virtual {p3}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_4

    .line 837
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 838
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz p4, :cond_7

    .line 842
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    .line 845
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catchall_0
    move-exception p0

    move-object p1, v1

    goto :goto_a

    :catch_1
    move-exception p0

    move-object p1, v1

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object p4, p1

    goto :goto_a

    :catch_3
    move-exception p0

    move-object p4, p1

    .line 833
    :goto_5
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_5

    .line 837
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 838
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_6

    :catch_4
    move-exception p0

    goto :goto_7

    :cond_5
    :goto_6
    if-eqz p4, :cond_6

    .line 842
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    .line 845
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_8
    move p0, v0

    :cond_7
    :goto_9
    return p0

    :catchall_2
    move-exception p0

    :goto_a
    if-eqz p1, :cond_8

    .line 837
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 838
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_b

    :catch_5
    move-exception p1

    goto :goto_c

    :cond_8
    :goto_b
    if-eqz p4, :cond_9

    .line 842
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_d

    .line 845
    :goto_c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 847
    :cond_9
    :goto_d
    throw p0
.end method

.method private a([BLjava/lang/String;)Z
    .locals 4

    const-string p0, ".zip"

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_5

    .line 766
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 771
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 772
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 773
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 775
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 777
    invoke-virtual {p2, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/ui/preview/a/c;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 778
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-eqz v2, :cond_2

    .line 788
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 789
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 792
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 784
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 788
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 789
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    return v0

    :goto_3
    if-eqz v2, :cond_3

    .line 788
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 789
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 792
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 794
    :cond_3
    :goto_4
    throw p0

    :cond_4
    :goto_5
    return v0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/c;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/c;->z:Z

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/a/c;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/c;->r()V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/a/c;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/c;->l:I

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/preview/a/c;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/c;->m:I

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/preview/a/c;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/c;->B()V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/ui/preview/a/c;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/c;->A()V

    return-void
.end method

.method private q()Z
    .locals 8

    .line 393
    invoke-static {}, Lcom/oplus/camera/e/a;->b()Lcom/oplus/camera/e/a$a;

    move-result-object v0

    .line 394
    invoke-static {}, Lcom/oplus/camera/e/a;->c()Lcom/oplus/camera/e/a$a;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "AnimojiTexturePreview"

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 398
    invoke-virtual {v0}, Lcom/oplus/camera/e/a$a;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 399
    invoke-virtual {v1}, Lcom/oplus/camera/e/a$a;->a()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 407
    :cond_0
    new-instance v4, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;

    invoke-direct {v4}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;-><init>()V

    .line 408
    invoke-static {}, Lcom/oplus/camera/e/a;->b()Lcom/oplus/camera/e/a$a;

    move-result-object v5

    iget v5, v5, Lcom/oplus/camera/e/a$a;->a:I

    iput v5, v4, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->iFrameWidth:I

    .line 409
    invoke-static {}, Lcom/oplus/camera/e/a;->b()Lcom/oplus/camera/e/a$a;

    move-result-object v5

    iget v5, v5, Lcom/oplus/camera/e/a$a;->b:I

    iput v5, v4, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->iFrameHeight:I

    .line 411
    invoke-static {}, Lcom/oplus/camera/e/a;->b()Lcom/oplus/camera/e/a$a;

    move-result-object v5

    iget v5, v5, Lcom/oplus/camera/e/a$a;->c:F

    iput v5, v4, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->fCameraFx:F

    .line 412
    invoke-static {}, Lcom/oplus/camera/e/a;->b()Lcom/oplus/camera/e/a$a;

    move-result-object v5

    iget v5, v5, Lcom/oplus/camera/e/a$a;->d:F

    iput v5, v4, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->fCameraFy:F

    .line 413
    invoke-static {}, Lcom/oplus/camera/e/a;->b()Lcom/oplus/camera/e/a$a;

    move-result-object v5

    iget v5, v5, Lcom/oplus/camera/e/a$a;->e:F

    iput v5, v4, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->fCameraCx:F

    .line 414
    invoke-static {}, Lcom/oplus/camera/e/a;->b()Lcom/oplus/camera/e/a$a;

    move-result-object v5

    iget v5, v5, Lcom/oplus/camera/e/a$a;->f:F

    iput v5, v4, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->fCameraCy:F

    .line 416
    new-instance v5, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;

    invoke-direct {v5}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;-><init>()V

    .line 417
    invoke-static {}, Lcom/oplus/camera/e/a;->c()Lcom/oplus/camera/e/a$a;

    move-result-object v6

    iget v6, v6, Lcom/oplus/camera/e/a$a;->a:I

    iput v6, v5, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->iFrameWidth:I

    .line 418
    invoke-static {}, Lcom/oplus/camera/e/a;->c()Lcom/oplus/camera/e/a$a;

    move-result-object v6

    iget v6, v6, Lcom/oplus/camera/e/a$a;->b:I

    iput v6, v5, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->iFrameHeight:I

    .line 420
    invoke-static {}, Lcom/oplus/camera/e/a;->c()Lcom/oplus/camera/e/a$a;

    move-result-object v6

    iget v6, v6, Lcom/oplus/camera/e/a$a;->c:F

    iput v6, v5, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->fCameraFx:F

    .line 421
    invoke-static {}, Lcom/oplus/camera/e/a;->c()Lcom/oplus/camera/e/a$a;

    move-result-object v6

    iget v6, v6, Lcom/oplus/camera/e/a$a;->d:F

    iput v6, v5, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->fCameraFy:F

    .line 422
    invoke-static {}, Lcom/oplus/camera/e/a;->c()Lcom/oplus/camera/e/a$a;

    move-result-object v6

    iget v6, v6, Lcom/oplus/camera/e/a$a;->e:F

    iput v6, v5, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->fCameraCx:F

    .line 423
    invoke-static {}, Lcom/oplus/camera/e/a;->c()Lcom/oplus/camera/e/a$a;

    move-result-object v6

    iget v6, v6, Lcom/oplus/camera/e/a$a;->f:F

    iput v6, v5, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->fCameraCy:F

    const-wide/16 v6, -0x1

    .line 426
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    if-eqz p0, :cond_1

    .line 427
    invoke-virtual {p0, v4, v5}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->setCamera(Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;)J

    move-result-wide v6

    .line 429
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCameraConf, masterCalibParam: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/camera/e/a$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", depthCalibParam: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v1}, Lcom/oplus/camera/e/a$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", result: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 429
    invoke-static {v3, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long p0, v6, v0

    if-nez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 400
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCameraConf, masterCalibParam valid: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    if-nez v0, :cond_4

    move-object v0, v4

    goto :goto_1

    .line 401
    :cond_4
    invoke-virtual {v0}, Lcom/oplus/camera/e/a$a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", depthCalibParam valid: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5

    goto :goto_2

    .line 402
    :cond_5
    invoke-virtual {v1}, Lcom/oplus/camera/e/a$a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 400
    invoke-static {v3, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private r()V
    .locals 3

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unInitAnimojiEngine, mbInitialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/c;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAvatarEngineRender: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimojiTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/c;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    if-eqz v0, :cond_0

    const-string v0, "Animoji.unInitAnimojiEngine"

    .line 478
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    invoke-virtual {v1}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->uninitialize()V

    const/4 v1, 0x0

    .line 481
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    .line 482
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/c;->G:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    const/4 v2, 0x0

    .line 483
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/c;->q:Z

    .line 484
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/c;->E:Z

    .line 485
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/c;->H:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 486
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/c;->w:Z

    .line 487
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/c;->y:Z

    .line 489
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/c;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/c;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimojiTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/c;->l:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/ui/preview/a/c;->m:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/c;->r:Z

    .line 661
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/c;->l:I

    .line 662
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/c;->m:I

    .line 664
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->r:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/c;->h:Lcom/oplus/camera/gl/GLRootView;

    if-eqz p1, :cond_2

    .line 665
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/c;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance p2, Lcom/oplus/camera/ui/preview/a/c$5;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/preview/a/c$5;-><init>(Lcom/oplus/camera/ui/preview/a/c;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/util/Size;Z)V
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 684
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/c;->s:Z

    .line 685
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/a/c;->t:Z

    .line 686
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/c;->u:Landroid/util/Size;

    const-string p1, "AnimojiTexturePreview"

    .line 688
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capture, mOutputOffscreen: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/c;->I:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbMirror: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/c;->t:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/gl/h;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 2

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEngine, reques: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbCreateEngine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/c;->z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimojiTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/c;->v:Lcom/oplus/camera/ui/preview/a/aa;

    .line 336
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->z:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Animoji.createEngine"

    .line 340
    invoke-static {p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 342
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->z:Z

    .line 343
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->C:Z

    const/4 p1, 0x0

    .line 344
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->D:Z

    .line 346
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/c;->c:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    .line 348
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/c;->k:Ljava/lang/Object;

    monitor-enter p1

    .line 349
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/c;->d:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    .line 350
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "Animoji.createEngine"

    .line 352
    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 350
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a([BII)V
    .locals 4

    .line 146
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/c;->w:Z

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/c;->G:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/c;->G:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 152
    invoke-virtual {v1}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getWidth()I

    move-result v1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/c;->G:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 153
    invoke-virtual {v1}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getHeight()I

    move-result v1

    if-eq p3, v1, :cond_4

    .line 154
    :cond_1
    new-instance v1, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    const-string v2, "com.oplus.sticker.use.nv12"

    .line 155
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.oplus.preview.format.nv12"

    .line 156
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x802

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v2, 0x801

    .line 157
    :goto_1
    invoke-direct {v1, p2, p3, v2}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;-><init>(III)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/c;->G:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    const-string v1, "AnimojiTexturePreview"

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewCallback, new ArcSoftOffscreen, width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_4
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/a/c;->G:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/a/c;->v:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 163
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/c;->G:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    invoke-virtual {p0, p1}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->setData([B)V

    .line 165
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/c;->D:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(I)Z
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->v:Lcom/oplus/camera/ui/preview/a/aa;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 195
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/aa;->C()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/c;->C:Z

    if-eqz v0, :cond_1

    .line 196
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/c;->C:Z

    .line 199
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/c;->a_(I)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 203
    :cond_2
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/c;->x:Z

    if-nez p1, :cond_3

    return v1

    .line 207
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/c;->v:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/aa;->r()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/c;->v:Lcom/oplus/camera/ui/preview/a/aa;

    .line 208
    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/aa;->s()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->v:Lcom/oplus/camera/ui/preview/a/aa;

    .line 209
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/aa;->o()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/data/StickerItem;->getMaterialType()I

    move-result v0

    if-eq p1, v0, :cond_4

    goto :goto_0

    .line 213
    :cond_4
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/c;->C:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$a;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 218
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v2

    .line 220
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/c;->v:Lcom/oplus/camera/ui/preview/a/aa;

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    iget-boolean v4, v0, Lcom/oplus/camera/ui/preview/a/c;->w:Z

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/c;->p:Lcom/oplus/camera/gl/s;

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/c;->G:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    if-eqz v4, :cond_a

    .line 225
    invoke-virtual {v4}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getData()[B

    move-result-object v4

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    iget v4, v1, Lcom/oplus/camera/ui/preview/a/y$a;->j:I

    if-lez v4, :cond_a

    iget v4, v1, Lcom/oplus/camera/ui/preview/a/y$a;->k:I

    if-gtz v4, :cond_0

    goto/16 :goto_6

    .line 242
    :cond_0
    iget v4, v0, Lcom/oplus/camera/ui/preview/a/c;->n:I

    .line 243
    iget v6, v0, Lcom/oplus/camera/ui/preview/a/c;->f:I

    .line 244
    iget v14, v1, Lcom/oplus/camera/ui/preview/a/y$a;->j:I

    .line 245
    iget v15, v1, Lcom/oplus/camera/ui/preview/a/y$a;->k:I

    .line 247
    iget-object v13, v0, Lcom/oplus/camera/ui/preview/a/c;->k:Ljava/lang/Object;

    monitor-enter v13

    .line 248
    :try_start_0
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    if-nez v7, :cond_1

    .line 249
    monitor-exit v13

    return v5

    .line 252
    :cond_1
    iget-boolean v7, v0, Lcom/oplus/camera/ui/preview/a/c;->q:Z

    const/4 v12, 0x1

    if-nez v7, :cond_3

    .line 253
    iget-boolean v1, v0, Lcom/oplus/camera/ui/preview/a/c;->E:Z

    if-nez v1, :cond_2

    .line 254
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/c;->d:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    .line 255
    iput-boolean v12, v0, Lcom/oplus/camera/ui/preview/a/c;->E:Z

    :cond_2
    const-string v0, "AnimojiTexturePreview"

    const-string v1, "process, non selected template!"

    .line 258
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    monitor-exit v13

    return v5

    .line 263
    :cond_3
    iget-boolean v11, v0, Lcom/oplus/camera/ui/preview/a/c;->g:Z

    .line 264
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    invoke-virtual {v7, v4}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->setDevicesOrientation(I)J

    .line 267
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/c;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    if-eqz v7, :cond_4

    .line 268
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/c;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    invoke-interface {v7, v6, v4}, Lcom/oplus/camera/ui/preview/a/y$b;->a(II)I

    move-result v4

    move v10, v4

    goto :goto_0

    :cond_4
    move v10, v5

    .line 271
    :goto_0
    iget-boolean v4, v0, Lcom/oplus/camera/ui/preview/a/c;->y:Z

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/c;->H:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/c;->H:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    invoke-virtual {v4}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getData()[B

    move-result-object v4

    if-eqz v4, :cond_5

    .line 272
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/c;->G:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    iget-object v8, v0, Lcom/oplus/camera/ui/preview/a/c;->H:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    const/16 v9, 0x5a

    invoke-virtual/range {v6 .. v11}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->process(Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;IIZ)J

    goto :goto_1

    .line 275
    :cond_5
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/c;->G:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    const/4 v8, 0x0

    const/16 v9, 0x5a

    invoke-virtual/range {v6 .. v11}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->process(Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;IIZ)J

    .line 279
    :goto_1
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/c;->o:[F

    aget v4, v4, v5

    .line 280
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/c;->o:[F

    aget v6, v6, v12

    .line 281
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/c;->o:[F

    const/4 v8, 0x2

    aget v11, v7, v8

    const/high16 v10, 0x3f800000    # 1.0f

    .line 282
    invoke-static {v4, v6, v11, v10}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 283
    invoke-static {v5, v5, v14, v15}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 285
    new-array v9, v12, [I

    .line 286
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v8, v14

    move-object/from16 v19, v9

    move v9, v15

    move/from16 v10, v16

    move/from16 v21, v11

    move/from16 v11, v17

    move-object/from16 v12, v19

    move-object/from16 v16, v13

    move-object/from16 v13, v18

    :try_start_1
    invoke-virtual/range {v7 .. v13}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->render(IIIZ[ILcom/arcsoft/arcsoftjni/ArcSoftOffscreen;)J

    move-result-wide v7

    .line 287
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/a/c;->p:Lcom/oplus/camera/gl/s;

    iget-object v1, v1, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    aget v10, v19, v5

    invoke-virtual {v9, v1, v10, v14, v15}, Lcom/oplus/camera/gl/s;->a(Lcom/oplus/camera/gl/h;III)V

    const/4 v1, 0x1

    .line 288
    iput-boolean v1, v0, Lcom/oplus/camera/ui/preview/a/c;->D:Z

    .line 290
    iget-boolean v9, v0, Lcom/oplus/camera/ui/preview/a/c;->s:Z

    if-eqz v9, :cond_8

    const-string v9, "AnimojiTexturePreview"

    const-string v10, "process, captureRender start"

    .line 291
    invoke-static {v9, v10}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iput-boolean v5, v0, Lcom/oplus/camera/ui/preview/a/c;->s:Z

    .line 294
    new-instance v9, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    iget-object v10, v0, Lcom/oplus/camera/ui/preview/a/c;->u:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v10

    iget-object v11, v0, Lcom/oplus/camera/ui/preview/a/c;->u:Landroid/util/Size;

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    const-string v12, "com.oplus.sticker.use.nv12"

    .line 295
    invoke-static {v12}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "com.oplus.preview.format.nv12"

    .line 296
    invoke-static {v12}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_2

    :cond_6
    const/16 v12, 0x802

    goto :goto_3

    :cond_7
    :goto_2
    const/16 v12, 0x801

    .line 297
    :goto_3
    invoke-direct {v9, v10, v11, v12}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;-><init>(III)V

    iput-object v9, v0, Lcom/oplus/camera/ui/preview/a/c;->I:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 298
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/a/c;->I:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    iget-object v10, v0, Lcom/oplus/camera/ui/preview/a/c;->u:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v10

    iget-object v11, v0, Lcom/oplus/camera/ui/preview/a/c;->u:Landroid/util/Size;

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    new-array v10, v10, [B

    invoke-virtual {v9, v10}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->setData([B)V

    move/from16 v9, v21

    const/high16 v10, 0x3f800000    # 1.0f

    .line 300
    invoke-static {v4, v6, v9, v10}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 301
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/c;->I:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    invoke-virtual {v6}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getWidth()I

    move-result v18

    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/c;->I:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    invoke-virtual {v6}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getHeight()I

    move-result v19

    const/16 v20, 0x10e

    iget-boolean v6, v0, Lcom/oplus/camera/ui/preview/a/c;->t:Z

    const/16 v22, 0x0

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/c;->I:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    move-object/from16 v17, v4

    move/from16 v21, v6

    move-object/from16 v23, v0

    invoke-virtual/range {v17 .. v23}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->render(IIIZ[ILcom/arcsoft/arcsoftjni/ArcSoftOffscreen;)J

    move-result-wide v9

    const-string v0, "AnimojiTexturePreview"

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "process, captureRender end, captureResult: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_8
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 308
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v9

    .line 310
    invoke-static {v2, v3, v9, v10}, Lcom/oplus/camera/algovisualization/a;->a(JJ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/ui/preview/a/c;->a:Ljava/lang/String;

    const-wide/16 v2, -0x1

    cmp-long v0, v7, v2

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    move v1, v5

    :goto_4
    return v1

    :catchall_0
    move-exception v0

    move-object/from16 v16, v13

    .line 306
    :goto_5
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 229
    :cond_a
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process, something wrong, so return! mRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/c;->v:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mbInitialized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/oplus/camera/ui/preview/a/c;->w:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mAvatarEngineRender: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/c;->F:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mOutputAnimojiTexture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/c;->p:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mPreviewOffscreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/c;->G:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mPreviewOffscreen.data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/c;->G:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getData()[B

    move-result-object v0

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", frameInfo: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", outTextureWidth: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_c

    move v0, v5

    goto :goto_8

    .line 235
    :cond_c
    iget v0, v1, Lcom/oplus/camera/ui/preview/a/y$a;->j:I

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", outTextureHeight: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_d

    move v0, v5

    goto :goto_9

    .line 236
    :cond_d
    iget v0, v1, Lcom/oplus/camera/ui/preview/a/y$a;->k:I

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimojiTexturePreview"

    .line 229
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 678
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/c;->n:I

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public e()V
    .locals 2

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyEngine, mReques: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/c;->v:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimojiTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/c;->z:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/c;->z:Z

    .line 364
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/c;->C:Z

    .line 366
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->v:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->h:Lcom/oplus/camera/gl/GLRootView;

    if-nez v0, :cond_1

    goto :goto_0

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/c$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/c$4;-><init>(Lcom/oplus/camera/ui/preview/a/c;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public f()Lcom/oplus/camera/gl/s;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public g()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/c;->p:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public h()Z
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/c;->d:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->b(Ljava/lang/Runnable;)V

    .line 538
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/c;->d:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    .line 539
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public i()V
    .locals 4

    .line 627
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/c;->l:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/c;->m:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->p:Lcom/oplus/camera/gl/s;

    .line 628
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/c;->x:Z

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newTextures, mOutputAnimojiTexture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/c;->p:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AnimojiTexturePreview"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recycleTextures, mbTextureInited: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/c;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOutputAnimojiTexture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/c;->p:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimojiTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/c;->x:Z

    if-nez v0, :cond_0

    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->p:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_1

    .line 648
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    const/4 v0, 0x0

    .line 649
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/c;->p:Lcom/oplus/camera/gl/s;

    :cond_1
    const/4 v0, 0x0

    .line 652
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/c;->x:Z

    return-void
.end method
