.class public Lcom/oplus/camera/r/g;
.super Lcom/oplus/camera/capmode/w;
.source "SlowVideoMode.java"


# instance fields
.field private g:Z

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/oplus/camera/r/a;

.field private p:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

.field private final q:Lcom/oplus/camera/r/a$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/w;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/oplus/camera/r/g;->g:Z

    .line 68
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/r/g;->h:Ljava/util/HashMap;

    .line 71
    iput-boolean p1, p0, Lcom/oplus/camera/r/g;->i:Z

    .line 72
    iput-boolean p1, p0, Lcom/oplus/camera/r/g;->j:Z

    .line 73
    iput-boolean p1, p0, Lcom/oplus/camera/r/g;->k:Z

    .line 74
    iput-boolean p1, p0, Lcom/oplus/camera/r/g;->l:Z

    .line 75
    iput-boolean p1, p0, Lcom/oplus/camera/r/g;->m:Z

    .line 76
    iput-boolean p1, p0, Lcom/oplus/camera/r/g;->n:Z

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    .line 78
    iput-object p1, p0, Lcom/oplus/camera/r/g;->p:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 1498
    new-instance p1, Lcom/oplus/camera/r/g$7;

    invoke-direct {p1, p0}, Lcom/oplus/camera/r/g$7;-><init>(Lcom/oplus/camera/r/g;)V

    iput-object p1, p0, Lcom/oplus/camera/r/g;->q:Lcom/oplus/camera/r/a$a;

    return-void
.end method

.method static synthetic A(Lcom/oplus/camera/r/g;)Landroid/content/ContentValues;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCurrentVideoValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method static synthetic B(Lcom/oplus/camera/r/g;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getVideoFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic C(Lcom/oplus/camera/r/g;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getVideoFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private a(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "com.oplus.tunning.1080p.hfr.fps"

    .line 627
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "com.oplus.tunning.front.1080p.hfr.fps"

    .line 628
    invoke-static {p2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 629
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 631
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move-object p0, p2

    :cond_0
    return-object p0

    .line 634
    :cond_1
    invoke-static {p2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 5

    const-string v0, "pref_intelligent_high_frame_selected_key"

    .line 200
    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    iget-object v1, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    const v3, 0x7f100208

    .line 202
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isSlowVideoHighFrame()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_temp_intelligent_high_frame_selected_key"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 209
    iget-object v1, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 210
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object v1, v2

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    iget-object v2, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v3, "off"

    invoke-interface {v2, v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isSlowVideoHighFrame()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, v0}, Lcom/oplus/camera/r/g;->a(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    .line 224
    invoke-direct {p0, v0}, Lcom/oplus/camera/r/g;->a(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private a(I)V
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->H()Z

    .line 1133
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->o(I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/r/g;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/oplus/camera/r/g;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/r/g;Lcom/oplus/camera/ui/control/e$d;ZZ)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/r/g;->a(Lcom/oplus/camera/ui/control/e$d;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/r/g;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/oplus/camera/r/g;->deleteVideoFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/r/g;ZZZ)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/r/g;->a(ZZZ)V

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/control/e$d;ZZ)V
    .locals 2

    .line 1470
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableUIView enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", animation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlowVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    iget-object v0, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    const/4 v1, 0x1

    .line 1474
    invoke-virtual {v0, v1}, Lcom/oplus/camera/r/a;->a(I)Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1477
    iget-object v1, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p1, p3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/e$d;Z)V

    .line 1481
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p2, p3}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/oplus/camera/ui/control/e$d;)V
    .locals 4

    const/4 v0, 0x0

    .line 1419
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1420
    :try_start_1
    iget-object v2, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const-wide/16 v2, -0x1

    .line 1421
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    sget v3, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    invoke-static {v2, v3}, Lcom/oplus/camera/ui/control/e;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p2, Lcom/oplus/camera/ui/control/e$d;->m:Landroid/graphics/Bitmap;

    .line 1423
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_pending"

    const/4 v3, 0x0

    .line 1424
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1425
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1430
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_2

    :catch_1
    :goto_0
    :try_start_2
    const-string p0, "SlowVideoMode"

    const-string p1, "extractMetadataThumbnailFromFile, get video thumbnail fail."

    .line 1427
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    .line 1430
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1433
    :cond_1
    throw p0
.end method

.method private a(ZZZ)V
    .locals 2

    .line 1112
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1114
    iget-object p1, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 p3, 0x0

    invoke-interface {p1, p3, v1, v0}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 1115
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->D(Z)V

    goto :goto_0

    .line 1117
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->C(Z)V

    if-eqz p3, :cond_1

    .line 1120
    iget-object p1, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v1, v0}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 1121
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/r/g;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/camera/ui/control/e$d;)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/r/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/camera/ui/control/e$d;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/r/g;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/oplus/camera/r/g;->m:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/camera/ui/control/e$d;)Z
    .locals 4

    .line 1438
    invoke-static {}, Lcom/oplus/camera/Storage;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SlowVideoMode"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/oplus/camera/Storage;->b(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1439
    iput-object v3, p0, Lcom/oplus/camera/r/g;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1441
    iget-object p1, p0, Lcom/oplus/camera/r/g;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz p1, :cond_0

    .line 1442
    iget-object p1, p0, Lcom/oplus/camera/r/g;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 1443
    iput-object v3, p0, Lcom/oplus/camera/r/g;->mCurrentVideoValues:Landroid/content/ContentValues;

    :cond_0
    const-string p0, "deleteUpdateSlowVideoToMediaStore, Exception: sdcard has removed, so not add to mediaStore."

    .line 1446
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1451
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->t()V

    .line 1452
    invoke-direct {p0, p2, p3}, Lcom/oplus/camera/r/g;->a(Ljava/lang/String;Lcom/oplus/camera/ui/control/e$d;)V

    .line 1454
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteUpdateVideo, originalVideoFileName: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",  compiledSlowVideoUri: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.oplus.dump.960fps.original.support"

    .line 1457
    invoke-static {p2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1458
    invoke-virtual {p0, p1}, Lcom/oplus/camera/r/g;->deleteVideoFile(Ljava/lang/String;)V

    .line 1461
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/r/g;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz p1, :cond_3

    .line 1462
    iget-object p1, p0, Lcom/oplus/camera/r/g;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 1463
    iput-object v3, p0, Lcom/oplus/camera/r/g;->mCurrentVideoValues:Landroid/content/ContentValues;

    :cond_3
    return v1
.end method

.method static synthetic b(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x78

    const-string v0, "video_120fps"

    if-eq p1, p0, :cond_3

    const/16 p0, 0xf0

    if-eq p1, p0, :cond_2

    const/16 p0, 0x1e0

    if-eq p1, p0, :cond_1

    const/16 p0, 0x3c0

    if-eq p1, p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "video_960fps"

    return-object p0

    :cond_1
    const-string p0, "video_480fps"

    return-object p0

    :cond_2
    const-string p0, "video_240fps"

    return-object p0

    :cond_3
    return-object v0
.end method

.method private b()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    const-string v0, "key_slow_video_frame_seek_bar_menu_key"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-direct {p0}, Lcom/oplus/camera/r/g;->e()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->p(I)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/r/g;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->b()V

    return-void
.end method

.method private c()Z
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v0, "key_slow_video_frame_seek_bar_menu_key"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1003e8

    .line 303
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 302
    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d()I
    .locals 2

    .line 579
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.feature.front.slow.video.support"

    .line 580
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "com.oplus.tunning.1080p.hfr.fps"

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/r/g;->a(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 582
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->k()I

    move-result p0

    :goto_0
    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/r/g;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->a()V

    return-void
.end method

.method private e()I
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/oplus/camera/r/g;->d()I

    move-result p0

    const-string v1, "pref_slow_video_rear_fps_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/r/g;)Z
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/r/g;)Landroid/app/Activity;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    const-string v0, "com.oplus.feature.intelligent.high.frame.support"

    .line 595
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    if-nez v0, :cond_4

    .line 597
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->e()I

    move-result p0

    const/16 v0, 0x78

    if-eq p0, v0, :cond_3

    const/16 v0, 0xf0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1e0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3c0

    if-eq p0, v0, :cond_0

    return-object v1

    :cond_0
    const-string p0, "com.oplus.slow.video.hfr.960fps.videotype"

    .line 607
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFpsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "com.oplus.slow.video.hfr.480fps.videotype"

    .line 605
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFpsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "com.oplus.slow.video.hfr.240fps.videotype"

    .line 603
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFpsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "com.oplus.slow.video.hfr.120fps.videotype"

    .line 601
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFpsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "pref_platform_slow_video_fps_key"

    .line 611
    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->getSupportMenu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 612
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->h()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/r/f;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 614
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "video_size_1080p"

    .line 616
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 617
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "com.oplus.tunning.1080p.hfr.fps"

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/r/g;->a(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "video_size_720p"

    .line 618
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "com.oplus.tunning.720p.hfr.fps"

    .line 619
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v1
.end method

.method static synthetic g(Lcom/oplus/camera/r/g;)Landroid/content/SharedPreferences;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private g()Z
    .locals 0

    .line 960
    iget-boolean p0, p0, Lcom/oplus/camera/r/g;->j:Z

    return p0
.end method

.method private h()I
    .locals 2

    .line 1274
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "com.oplus.slow.video.720p.default.value"

    .line 1275
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_platform_slow_video_fps_key"

    .line 1274
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1277
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method private i()Lcom/oplus/camera/r/a;
    .locals 3

    .line 1281
    iget-object v0, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/r/a;->a()I

    move-result v0

    invoke-direct {p0}, Lcom/oplus/camera/r/g;->h()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1282
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->j()V

    .line 1284
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->h()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/r/f;->a(ILandroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;)Lcom/oplus/camera/r/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    .line 1285
    iget-object v0, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    iget-object v1, p0, Lcom/oplus/camera/r/g;->q:Lcom/oplus/camera/r/a$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/r/a;->a(Lcom/oplus/camera/r/a$a;)V

    .line 1286
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1287
    iget-object v1, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    .line 1288
    invoke-virtual {v1}, Lcom/oplus/camera/r/a;->a()I

    move-result v1

    invoke-static {v1}, Lcom/oplus/camera/r/f;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_slow_video_size_key"

    .line 1287
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1292
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fpsModeInstanceWrap fpsMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    invoke-virtual {v1}, Lcom/oplus/camera/r/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlowVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    iget-object p0, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    return-object p0
.end method

.method static synthetic j(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 1298
    iget-object v0, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    if-eqz v0, :cond_1

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyFpsMode mbCompilingVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/r/g;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlowVideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->m:Z

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    invoke-virtual {v0}, Lcom/oplus/camera/r/a;->d()V

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    invoke-virtual {v0}, Lcom/oplus/camera/r/a;->e()V

    const/4 v0, 0x0

    .line 1306
    iput-object v0, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    :cond_1
    return-void
.end method

.method private k()I
    .locals 2

    .line 1486
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_size_1080p"

    .line 1489
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.oplus.slow.video.1080p.default.value"

    .line 1490
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v1, "video_size_720p"

    .line 1491
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.slow.video.720p.default.value"

    .line 1492
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1495
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_slow_video_rear_fps_key"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/oplus/camera/r/g;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/oplus/camera/r/g;->mbPaused:Z

    return p0
.end method

.method static synthetic l(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic m(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic n(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic o(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic p(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic q(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic r(Lcom/oplus/camera/r/g;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/oplus/camera/r/g;->mbPaused:Z

    return p0
.end method

.method static synthetic s(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic t(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic u(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic v(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/r/a;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    return-object p0
.end method

.method static synthetic w(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic x(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic y(Lcom/oplus/camera/r/g;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/oplus/camera/r/g;->mVideoOrientation:I

    return p0
.end method

.method static synthetic z(Lcom/oplus/camera/r/g;)Landroid/net/Uri;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCurrentVideoUri:Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public afterStartRecording()V
    .locals 11

    .line 749
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    .line 750
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 749
    invoke-interface {v0, v3, v1, v2, v4}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 752
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    .line 754
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 753
    invoke-interface {v0, v3, v1, v2, v4}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 759
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isMotionDetectOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 760
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    .line 761
    iget-object v5, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v6, 0x7f100209

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface/range {v5 .. v10}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 763
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->E(Z)V

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_2

    .line 767
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->Z()V

    .line 768
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->i(Z)V

    .line 771
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 772
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 773
    iget-object v1, p0, Lcom/oplus/camera/r/g;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 774
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_4

    const-string v0, "key_intelligent_high_frame_usage_key"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 775
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 776
    iget-object v5, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v6, 0x7f10020f

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface/range {v5 .. v10}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    .line 778
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->needPostProcessAfterStopRecord()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 779
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 782
    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbPaused:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->k:Z

    if-eqz v0, :cond_6

    .line 783
    iput-boolean v4, p0, Lcom/oplus/camera/r/g;->k:Z

    .line 786
    :cond_6
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbPaused:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->l:Z

    if-eqz v0, :cond_7

    .line 787
    iput-boolean v4, p0, Lcom/oplus/camera/r/g;->l:Z

    :cond_7
    return-void
.end method

.method public afterStopRecording()V
    .locals 9

    .line 965
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v3, 0x3

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    .line 970
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    .line 969
    invoke-interface {v0, v3, v4, v5, v1}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 971
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 973
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbPaused:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->needPostProcessAfterStopRecord()Z

    move-result v0

    if-nez v0, :cond_4

    .line 974
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v3, 0x6

    const-string v4, "button_color_inside_red"

    const-string v5, "button_shape_dial_still"

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 977
    iget-object v3, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 978
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->E(Z)V

    .line 979
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f100209

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 980
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f10020f

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 981
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->b()V

    .line 983
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isMotionDetectOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 986
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    .line 987
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->i(Z)V

    .line 990
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->i:Z

    if-eqz v0, :cond_2

    .line 991
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    goto :goto_0

    .line 993
    :cond_2
    iget-object v3, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v4, 0x7f10020c

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 998
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100210

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 1001
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 1002
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1005
    :cond_5
    iput-boolean v2, p0, Lcom/oplus/camera/r/g;->i:Z

    .line 1006
    iput-boolean v2, p0, Lcom/oplus/camera/r/g;->j:Z

    .line 1007
    iput-boolean v2, p0, Lcom/oplus/camera/r/g;->mbHasDragIntelligentView:Z

    .line 1009
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->afterStopRecording()V

    return-void
.end method

.method public allowSwitchCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public beforeModeChanged()V
    .locals 5

    .line 322
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->beforeModeChanged()V

    .line 324
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10020b

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 325
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10020a

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 326
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f100216

    aput v4, v2, v3

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    .line 327
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v0, v1, [I

    const v1, 0x7f100219

    aput v1, v0, v3

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    return-void
.end method

.method public beforeStartRecording()V
    .locals 7

    .line 713
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 714
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->needPostProcessAfterStopRecord()Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    invoke-virtual {v4}, Lcom/oplus/camera/r/a;->c()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->h(I)V

    .line 716
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    .line 717
    invoke-virtual {v4, v3}, Lcom/oplus/camera/r/a;->a(I)Lcom/oplus/camera/ui/control/b;

    move-result-object v4

    .line 716
    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 719
    invoke-direct {p0, v0, v2, v2}, Lcom/oplus/camera/r/g;->a(ZZZ)V

    .line 720
    iget-object v4, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v4, v1, v2, v0}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 721
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v4, 0x5

    const-string v5, "button_color_inside_red"

    const-string v6, "button_shape_dial_still"

    invoke-direct {v0, v4, v5, v6, v2}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 724
    iget-object v4, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 727
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    .line 731
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getVideoSizeType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/oplus/camera/e/d;->a(ZLjava/lang/String;)V

    .line 735
    :cond_2
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->beforeStartRecording()V

    .line 737
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_4

    .line 738
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_3

    .line 739
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v3, p0, Lcom/oplus/camera/r/g;->mCameraId:I

    iget-object v4, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 740
    invoke-interface {v4}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/oplus/camera/r/g;->getJpegOrientation(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 739
    invoke-interface {v0, v2, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 743
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x7f100219
        0x7f100216
    .end array-data
.end method

.method public beforeSwitchCamera()V
    .locals 5

    .line 1045
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->beforeSwitchCamera()V

    .line 1047
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x7f100216

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    .line 1049
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v1, v1, [I

    const v2, 0x7f100219

    aput v2, v1, v4

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    const/4 v0, 0x4

    .line 1050
    invoke-direct {p0, v0}, Lcom/oplus/camera/r/g;->a(I)V

    :cond_0
    return-void
.end method

.method public checkVideoCodecAndReset()V
    .locals 4

    .line 407
    invoke-static {}, Lcom/oplus/camera/util/Util;->at()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_support_slow_video_h265"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    const v1, 0x7f100495

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_video_codec_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "H265"

    .line 411
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SlowVideoMode"

    const-string v3, "checkVideoCodecAndReset, reset video codec to default."

    .line 412
    invoke-static {v1, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 415
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method protected configVideoBitRate()I
    .locals 3

    .line 1312
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->needPostProcessAfterStopRecord()Z

    move-result v0

    const v1, 0x989680

    if-eqz v0, :cond_0

    return v1

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mVideoSizeType:Ljava/lang/String;

    const-string v2, "video_size_1080p"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mProfile:Landroid/media/CamcorderProfile;

    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    .line 1318
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mVideoSizeType:Ljava/lang/String;

    const-string v1, "video_size_720p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.oplus.slow.video.720p.videobitrate.value"

    .line 1319
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 1322
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getVideoCodec()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H264"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1323
    iget-object v1, p0, Lcom/oplus/camera/r/g;->mProfile:Landroid/media/CamcorderProfile;

    iput v0, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    .line 1325
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mProfile:Landroid/media/CamcorderProfile;

    const v1, 0x7270e0

    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 1329
    :cond_3
    :goto_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->configVideoBitRate()I

    move-result p0

    return p0
.end method

.method public displayAllIcon(ZZ)V
    .locals 0

    .line 1033
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoFlashTorchOpen()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1034
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method public displayScreenHintIconInSwitchOn()V
    .locals 8

    .line 1019
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 1020
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_videoflashmode_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoFlashTorchOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1005b0

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 1023
    iget-object v2, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f1005b2

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1005b2

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 1026
    iget-object v2, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f1005b0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public forceStopVideoRecording(Z)V
    .locals 0

    .line 801
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->forceStopVideoRecording(Z)V

    const/4 p1, 0x1

    .line 803
    iput-boolean p1, p0, Lcom/oplus/camera/r/g;->k:Z

    return-void
.end method

.method public generateImageInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1368
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isMotionDetectOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    iget v0, p0, Lcom/oplus/camera/r/g;->mCameraId:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->getSensorOrientation(I)I

    move-result v0

    .line 1370
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->q(I)Landroid/graphics/RectF;

    move-result-object p0

    const-string v0, "intelligent_crop_region"

    .line 1372
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "slowVideo"

    return-object p0
.end method

.method public getCanAddMenuOption(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_videoflashmode_key"

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_platform_slow_video_fps_key"

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getCanAddMenuOption(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getDefaultVideoSize()Ljava/lang/String;
    .locals 0

    .line 524
    iget p0, p0, Lcom/oplus/camera/r/g;->mCameraId:I

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrontEnable()Z
    .locals 1

    const-string v0, "pref_support_switch_camera"

    .line 97
    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getNeedReduceBitRate()Z
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    const v1, 0x7f100495

    .line 445
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_video_codec_key"

    .line 444
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "H265"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getOperatingMode()I
    .locals 2

    .line 698
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    if-nez v0, :cond_0

    const-string v0, "key_support_fovc"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x830d

    goto :goto_0

    :cond_0
    const v0, 0x800d

    .line 703
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/r/g;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/r/g;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 704
    invoke-interface {v1}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getVideoSizeType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/camera/e/h;->a(Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 1

    .line 534
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->getVideoPreviewSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 541
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getRealCaptureRate()Ljava/lang/Double;
    .locals 2

    .line 450
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->f()Ljava/lang/String;

    move-result-object p0

    .line 452
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRealVideoTimeRatio()Ljava/lang/Float;
    .locals 0

    .line 439
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getRealVideoTimeRatio()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getRearEnable()Z
    .locals 0

    const-string p0, "com.oplus.feature.slow.video.support"

    .line 92
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 1

    .line 332
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    const-string v0, "button_shape_dial_still"

    .line 333
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/b;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method protected getSlowVideoFps()I
    .locals 2

    .line 559
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getSlowVideoFps()I

    move-result v0

    const-string v1, "key_intelligent_high_frame_usage_key"

    .line 561
    invoke-virtual {p0, v1}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->e()I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v1, "pref_platform_slow_video_fps_key"

    .line 563
    invoke-virtual {p0, v1}, Lcom/oplus/camera/r/g;->getSupportMenu(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->h()I

    move-result v0

    goto :goto_0

    .line 566
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getVideoFpsRange()Landroid/util/Range;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 569
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 573
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSlowVideoFps: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SlowVideoMode"

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 6

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "pref_camera_videoflashmode_key"

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "key_intelligent_high_frame_usage_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "key_slow_video_frame_seek_bar_menu_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_video_size_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "pref_face_detection_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_time_lapse_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "func_out_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "pref_support_recording_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "pref_intelligent_high_frame_selected_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "pref_video_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_e
    const-string v0, "key_accelerometer_usage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_f
    const-string v0, "key_support_slow_video_h265"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_10
    const-string v0, "func_out_preview_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_11
    const-string v0, "pref_update_setting_background_bar_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_12
    const-string v0, "pref_slow_video_size_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_13
    const-string v0, "pref_platform_slow_video_fps_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_1

    :sswitch_14
    const-string v0, "func_request_fast_launch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_15
    const-string v0, "key_support_show_dim_hint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v4, "com.oplus.feature.slowmotion.platform"

    const-string v5, "com.oplus.feature.intelligent.high.frame.support"

    packed-switch v0, :pswitch_data_0

    .line 296
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 289
    :pswitch_0
    iget-boolean p0, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    if-nez p0, :cond_1

    .line 290
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    return v2

    .line 286
    :pswitch_1
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecording()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isMotionDetectOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/oplus/camera/r/g;->i:Z

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    move v2, v3

    :goto_3
    return v2

    .line 280
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecording()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    if-nez p1, :cond_3

    const-string p1, "com.oplus.feature.slow.video.zoom.support"

    .line 282
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 283
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->c()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_4

    :cond_3
    move v2, v3

    :goto_4
    return v2

    .line 275
    :pswitch_3
    iget-boolean p1, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    if-nez p1, :cond_4

    .line 276
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 277
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isSlowVideoHighFrame()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_5

    :cond_4
    move v2, v3

    :goto_5
    return v2

    .line 270
    :pswitch_4
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    if-nez p1, :cond_5

    .line 272
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecording()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_6

    :cond_5
    move v2, v3

    :goto_6
    return v2

    :pswitch_5
    const-string p0, "com.oplus.feature.front.slow.video.support"

    .line 266
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 262
    :pswitch_6
    iget-boolean p0, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    if-nez p0, :cond_7

    .line 263
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_7

    :cond_6
    move v2, v3

    :cond_7
    :goto_7
    return v2

    :pswitch_7
    const-string p0, "com.oplus.slowmotion.h265.support"

    .line 259
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 256
    :pswitch_8
    invoke-virtual {p0, v1}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_9
    return v3

    .line 240
    :pswitch_a
    invoke-static {}, Lcom/oplus/camera/util/Util;->aQ()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7336bb70 -> :sswitch_15
        -0x6f76feb5 -> :sswitch_14
        -0x63a6c449 -> :sswitch_13
        -0x572b61b9 -> :sswitch_12
        -0x4c04a975 -> :sswitch_11
        -0x30f7a71d -> :sswitch_10
        -0x29f85f05 -> :sswitch_f
        -0x2503e02f -> :sswitch_e
        -0x1e969cb5 -> :sswitch_d
        -0x185952aa -> :sswitch_c
        -0xde943da -> :sswitch_b
        -0xb0f5f67 -> :sswitch_a
        0x739636c -> :sswitch_9
        0x140b168f -> :sswitch_8
        0x27866a5a -> :sswitch_7
        0x3f50f6f7 -> :sswitch_6
        0x408542df -> :sswitch_5
        0x5f579904 -> :sswitch_4
        0x62669e01 -> :sswitch_3
        0x741b369e -> :sswitch_2
        0x7c67bc7a -> :sswitch_1
        0x7e4b5cf3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "pref_camera_videoflashmode_key"

    .line 639
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 640
    iget-boolean p0, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    xor-int/2addr p0, v1

    return p0

    :cond_0
    const-string v0, "pref_intelligent_high_frame_selected_key"

    .line 643
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "key_slow_video_frame_seek_bar_menu_key"

    .line 644
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "pref_platform_slow_video_fps_key"

    .line 645
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "pref_slow_video_size_key"

    .line 649
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 650
    iget-object v2, p0, Lcom/oplus/camera/r/g;->p:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-nez v2, :cond_2

    .line 651
    iget-object v2, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->h(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/r/g;->p:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 654
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/r/g;->p:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    const-string v3, "com.oplus.feature.front.slow.video.support"

    const-string v4, "com.oplus.feature.front.720p.slow.video.support"

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 655
    iget-boolean v2, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    const v4, 0x7f1004f1

    if-eqz v2, :cond_3

    .line 656
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 657
    iget-object v2, p0, Lcom/oplus/camera/r/g;->p:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l(Ljava/lang/String;)V

    .line 658
    iget-object v2, p0, Lcom/oplus/camera/r/g;->p:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    new-array v3, v1, [Ljava/lang/String;

    iget-object v6, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    .line 659
    invoke-virtual {v6, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 658
    invoke-virtual {v2, v0, v3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_0

    .line 661
    :cond_3
    iget-object v2, p0, Lcom/oplus/camera/r/g;->p:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l(Ljava/lang/String;)V

    .line 662
    iget-object v2, p0, Lcom/oplus/camera/r/g;->p:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    new-array v3, v1, [Ljava/lang/String;

    iget-object v6, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    .line 663
    invoke-virtual {v6, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 662
    invoke-virtual {v2, v0, v3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_0

    .line 665
    :cond_4
    iget-object v2, p0, Lcom/oplus/camera/r/g;->p:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v2, :cond_6

    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "com.oplus.feature.front.1080p.slow.video.support"

    .line 666
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 667
    iget-boolean v2, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    const v4, 0x7f1004ef

    if-eqz v2, :cond_5

    .line 668
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 669
    iget-object v2, p0, Lcom/oplus/camera/r/g;->p:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l(Ljava/lang/String;)V

    .line 670
    iget-object v2, p0, Lcom/oplus/camera/r/g;->p:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    new-array v3, v1, [Ljava/lang/String;

    iget-object v6, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    .line 671
    invoke-virtual {v6, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 670
    invoke-virtual {v2, v0, v3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_0

    .line 673
    :cond_5
    iget-object v2, p0, Lcom/oplus/camera/r/g;->p:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->l(Ljava/lang/String;)V

    .line 674
    iget-object v2, p0, Lcom/oplus/camera/r/g;->p:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    new-array v3, v1, [Ljava/lang/String;

    iget-object v6, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    .line 675
    invoke-virtual {v6, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 674
    invoke-virtual {v2, v0, v3}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 679
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/r/g;->p:Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->X()I

    move-result v0

    if-gt v0, v1, :cond_7

    return v5

    .line 682
    :cond_7
    invoke-virtual {p0, p1}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 686
    :cond_8
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 646
    :cond_9
    :goto_1
    invoke-virtual {p0, p1}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getTouchEnable(ZII)Z
    .locals 1

    .line 1211
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isMotionDetectOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecordStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecordStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1215
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/w;->getTouchEnable(ZII)Z

    move-result p0

    return p0
.end method

.method protected getVideoFileExifTag()Ljava/lang/String;
    .locals 1

    .line 1238
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getCameraMode()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/g/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoFps()I
    .locals 0

    .line 529
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getVideoFrameRate()I

    move-result p0

    return p0
.end method

.method public getVideoFpsRange()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 502
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->f()Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 505
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecording()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x1e

    goto :goto_1

    .line 506
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 505
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 506
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 505
    invoke-static {p0, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoSizeType()Ljava/lang/String;
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    instance-of v0, v0, Lcom/oplus/camera/ComboPreferences;

    const-string v1, "pref_slow_video_size_key"

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    check-cast v0, Lcom/oplus/camera/ComboPreferences;

    .line 516
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    .line 515
    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ComboPreferences;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getVideoTitle()Ljava/lang/String;
    .locals 2

    .line 461
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->f()Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 464
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->needPostProcessAfterStopRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iget-object p0, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 468
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slow_motion_hfr_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":0,0,0,0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 471
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getVideoTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getZSLMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 1

    .line 546
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object p0

    const/4 v0, 0x1

    .line 547
    invoke-virtual {p0, v0}, Lcom/oplus/camera/af;->z(Z)V

    return-object p0
.end method

.method public isFlashState()Z
    .locals 0

    .line 1040
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoFlashTorchOpen()Z

    move-result p0

    return p0
.end method

.method protected isHFR()Z
    .locals 0

    .line 493
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isMotionDetectOpen()Z
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v0, "key_intelligent_high_frame_usage_key"

    .line 794
    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    const v1, 0x7f100208

    .line 796
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_intelligent_high_frame_selected_key"

    .line 795
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isMotionDetected()Z
    .locals 0

    .line 838
    iget-boolean p0, p0, Lcom/oplus/camera/r/g;->i:Z

    return p0
.end method

.method protected isRecordFileValid()Z
    .locals 5

    .line 817
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isSlowVideoHighFrame()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 818
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbStopVideoFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->k:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 820
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->isRecordFileValid()Z

    move-result v0

    .line 823
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isMotionDetectOpen()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    .line 826
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->i:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 829
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecordFileValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", motionDetectOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mbMotionDetected: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oplus/camera/r/g;->i:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mbStopVideoFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/r/g;->mbStopVideoFail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mbForceStopRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/r/g;->k:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SlowVideoMode"

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected isSlowVideoHighFrame()Z
    .locals 2

    const-string v0, "com.oplus.feature.intelligent.high.frame.support"

    .line 1101
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1106
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->e()I

    move-result p0

    const/16 v0, 0x1e0

    if-eq v0, p0, :cond_1

    const/16 v0, 0x3c0

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public isSlowVideoMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isUseMediaRecorderNotUseAPS()Z
    .locals 1

    .line 552
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportApsPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    if-nez v0, :cond_1

    .line 554
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isSlowVideoHighFrame()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public needPostProcessAfterStopRecord()Z
    .locals 0

    .line 1363
    iget-object p0, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/r/a;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needPreviewMeta(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "type_video_frame"

    .line 476
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    .line 477
    iget-object p1, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isUseMediaCodec()Z

    move-result p1

    if-nez p1, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isUseMediaRecorderNotUseAPS()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "key_intelligent_high_frame_usage_key"

    .line 480
    invoke-virtual {p0, p1}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const-string p0, "type_video"

    .line 483
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public needUploadOplusStatistics(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_face_detection_key"

    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_zoom_key"

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-boolean p0, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    if-nez p0, :cond_1

    const-string p0, "com.oplus.feature.slow.video.zoom.support"

    .line 193
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 196
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->needUploadOplusStatistics(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onAfterSnapping()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 2

    .line 364
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onAfterStartPreview(Z)V

    .line 366
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->g:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 367
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/r/g$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/r/g$1;-><init>(Lcom/oplus/camera/r/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lcom/oplus/camera/r/g;->g:Z

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 383
    iget-object p1, p0, Lcom/oplus/camera/r/g;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oplus/camera/r/g$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/r/g$2;-><init>(Lcom/oplus/camera/r/g;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onBackPressed()Z
    .locals 8

    const-string v0, "key_intelligent_high_frame_usage_key"

    .line 900
    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onBackPressed()Z

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0x3c0

    .line 905
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getSlowVideoFps()I

    move-result v1

    const-string v2, "SlowVideoMode"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isSlowVideoHighFrame()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    if-nez v0, :cond_2

    .line 907
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecordStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/oplus/camera/r/g;->mRecordingTotalTime:J

    .line 908
    invoke-virtual {p0, v3}, Lcom/oplus/camera/r/g;->getRecordingMinTime(Z)I

    move-result v5

    int-to-long v5, v5

    cmp-long v0, v0, v5

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 910
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/r/g;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    if-eqz v0, :cond_2

    const-string p0, "onBackPressed(), Record Time less than 1 second."

    .line 912
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 917
    :cond_2
    iput-boolean v4, p0, Lcom/oplus/camera/r/g;->mbBackPressedAfterCapture:Z

    .line 920
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->k:Z

    const-string v1, ", isVideoRecordStopping: "

    if-nez v0, :cond_5

    .line 921
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isSlowVideoHighFrame()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 922
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->g()Z

    move-result v0

    if-nez v0, :cond_5

    .line 923
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecordStarted()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecordStopping()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 924
    :cond_3
    invoke-virtual {p0, v3}, Lcom/oplus/camera/r/g;->forceStopVideoRecording(Z)V

    .line 927
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_4

    .line 928
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v5, 0x6

    const-string v6, "button_color_inside_red"

    const-string v7, "button_shape_dial_still"

    invoke-direct {v0, v5, v6, v7, v4}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 932
    iget-object v5, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 933
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 934
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f100209

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 935
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f10020f

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 938
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackPressed, return, isVideoRecordStarted: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecordStarted()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecordStopping()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 938
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 944
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecordStopping()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/oplus/camera/r/g;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 952
    :cond_6
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onBackPressed()Z

    move-result p0

    return p0

    .line 945
    :cond_7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackPressed, return, isVideoRecording: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecording()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecordStopping()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSlowVideoFileSaving: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->g()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 945
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method protected onBeforePreview()V
    .locals 3

    .line 340
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onBeforePreview()V

    const-string v0, "pref_platform_slow_video_fps_key"

    .line 342
    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->getSupportMenu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->i()Lcom/oplus/camera/r/a;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mVideoSizeType:Ljava/lang/String;

    const-string v1, "video_size_1080p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mProfile:Landroid/media/CamcorderProfile;

    const v1, 0x989680

    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mVideoSizeType:Ljava/lang/String;

    const-string v1, "video_size_720p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.oplus.slow.video.720p.videobitrate.value"

    .line 349
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 352
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getVideoCodec()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H264"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    iget-object v1, p0, Lcom/oplus/camera/r/g;->mProfile:Landroid/media/CamcorderProfile;

    iput v0, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mProfile:Landroid/media/CamcorderProfile;

    const v1, 0x7270e0

    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 359
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBeforePreview, slowVideoFps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getSlowVideoFps()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SlowVideoMode"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SlowVideoMode"

    const-string v1, "onDeInitCameraMode"

    .line 308
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 310
    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->enableVideoRecordingSound(Z)V

    .line 311
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->j()V

    .line 313
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onDeInitCameraMode(Ljava/lang/String;)V

    .line 315
    iget-object p1, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/oplus/camera/capmode/a;->b(I)V

    const/4 p1, 0x0

    .line 316
    invoke-direct {p0, p1, p1, p1}, Lcom/oplus/camera/r/g;->a(ZZZ)V

    const/16 p1, 0x8

    .line 317
    invoke-direct {p0, p1}, Lcom/oplus/camera/r/g;->a(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 125
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onDestroy()V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/oplus/camera/r/g;->g:Z

    .line 128
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->j()V

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/r/g;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/oplus/camera/r/g;->h:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method protected onFrameInterpolationStarted()V
    .locals 2

    .line 874
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbPaused:Z

    if-nez v0, :cond_0

    const-string v0, "SlowVideoMode"

    const-string v1, "onFrameInterpolationStarted"

    .line 875
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/r/g$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/r/g$4;-><init>(Lcom/oplus/camera/r/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    .line 895
    iput-boolean v0, p0, Lcom/oplus/camera/r/g;->j:Z

    return-void
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 2

    .line 1200
    instance-of v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    if-eqz v0, :cond_1

    .line 1201
    move-object v0, p1

    check-cast v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    .line 1202
    iget v1, p0, Lcom/oplus/camera/r/g;->mDcsLux:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mLux:Ljava/lang/String;

    .line 1203
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isMotionDetectOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsIntelligentDetect:Ljava/lang/String;

    move-object p0, v0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    move-object p0, p1

    :cond_2
    return-object p0
.end method

.method protected onInitCameraMode()V
    .locals 2

    const-string v0, "SlowVideoMode"

    const-string v1, "onInitCameraMode"

    .line 172
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onInitCameraMode()V

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->enableVideoRecordingSound(Z)V

    .line 176
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/r/g;->mOrientation:I

    .line 177
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/oplus/camera/capmode/a;->a(I)V

    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 2

    .line 1534
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onMoreModeHidden(I)V

    .line 1535
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1536
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    if-eq v1, p1, :cond_0

    .line 1538
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->c()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/oplus/camera/r/g;->a(ZZZ)V

    .line 1539
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->b()V

    .line 1541
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isMotionDetectOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1542
    invoke-direct {p0, v0}, Lcom/oplus/camera/r/g;->a(I)V

    :cond_0
    return-void
.end method

.method public onMoreModeShown()V
    .locals 1

    const/4 v0, 0x0

    .line 1525
    invoke-direct {p0, v0, v0, v0}, Lcom/oplus/camera/r/g;->a(ZZZ)V

    .line 1527
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isMotionDetectOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 1528
    invoke-direct {p0, v0}, Lcom/oplus/camera/r/g;->a(I)V

    :cond_0
    return-void
.end method

.method protected onMotionDetected()V
    .locals 2

    .line 843
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbPaused:Z

    if-nez v0, :cond_0

    const-string v0, "SlowVideoMode"

    const-string v1, "onMotionDetected"

    .line 844
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/r/g$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/r/g$3;-><init>(Lcom/oplus/camera/r/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 864
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 865
    iput-boolean v0, p0, Lcom/oplus/camera/r/g;->i:Z

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/oplus/camera/r/g;->mbHasDragIntelligentView:Z

    .line 149
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onPause()V

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100210

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 155
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10020c

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->b(I)V

    :cond_1
    const-string v0, "key_intelligent_high_frame_usage_key"

    .line 162
    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->l:Z

    if-nez v0, :cond_3

    .line 164
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecordStarted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecordStarting()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecordStopping()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->stopVideoRecordThread()V

    :cond_3
    return-void
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 0

    .line 1014
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    return-void
.end method

.method protected onResume(Z)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onResume(Z)V

    .line 114
    iget-object p1, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/oplus/camera/capmode/a;->a(I)V

    .line 116
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isVideoRecordStopped()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/oplus/camera/r/g;->i:Z

    .line 118
    iput-boolean p1, p0, Lcom/oplus/camera/r/g;->j:Z

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    .line 1056
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/w;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const-string v0, "key_slow_video_frame_seek_bar_menu_key"

    .line 1058
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "on"

    if-eqz v1, :cond_0

    .line 1059
    invoke-virtual {p0, p2}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1003e8

    .line 1062
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1061
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    .line 1064
    invoke-direct {p0, v0, v1, v1}, Lcom/oplus/camera/r/g;->a(ZZZ)V

    :cond_0
    const-string v0, "pref_intelligent_high_frame_selected_key"

    .line 1067
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1068
    invoke-virtual {p0, p2}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 1070
    iget-object v1, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    const v3, 0x7f100208

    .line 1071
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1070
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1072
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1074
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isSlowVideoHighFrame()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1075
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "pref_temp_intelligent_high_frame_selected_key"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    if-eqz v1, :cond_2

    const-string p1, "key_intelligent_high_frame_usage_key"

    .line 1078
    invoke-virtual {p0, p1}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1079
    invoke-direct {p0, p1}, Lcom/oplus/camera/r/g;->a(I)V

    .line 1080
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10020b

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    .line 1083
    invoke-direct {p0, p1}, Lcom/oplus/camera/r/g;->a(I)V

    .line 1084
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10020a

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_3
    :goto_0
    const-string p1, "pref_platform_slow_video_fps_key"

    .line 1089
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1090
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->i()Lcom/oplus/camera/r/a;

    :cond_4
    return-void
.end method

.method public onSlowVideoFrameChange(I)V
    .locals 3

    .line 1148
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/16 v1, 0x78

    if-ne v1, p1, :cond_0

    const-string v1, "com.oplus.slow.video.hfr.120fps.videotype"

    .line 1154
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFpsVideoType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xf0

    if-ne v1, p1, :cond_1

    const-string v1, "com.oplus.slow.video.hfr.240fps.videotype"

    .line 1156
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFpsVideoType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e0

    if-ne v1, p1, :cond_2

    const-string v1, "com.oplus.slow.video.hfr.480fps.videotype"

    .line 1158
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFpsVideoType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x3c0

    if-ne v1, p1, :cond_3

    const-string v1, "com.oplus.slow.video.hfr.960fps.videotype"

    .line 1160
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFpsVideoType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const-string v2, "pref_slow_video_size_key"

    .line 1163
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_slow_video_rear_fps_key"

    .line 1164
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1165
    iget-object p1, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    const v1, 0x7f100208

    .line 1166
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_intelligent_high_frame_selected_key"

    .line 1165
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1168
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isSlowVideoHighFrame()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x4

    .line 1169
    invoke-direct {p0, p1}, Lcom/oplus/camera/r/g;->a(I)V

    .line 1172
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->av()V

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onStopVideoRecording(Z)V
    .locals 4

    .line 1243
    iget-wide v0, p0, Lcom/oplus/camera/r/g;->mRecordingTotalTime:J

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oplus/camera/r/g;->getRecordingMinTime(Z)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/r/g;->mbPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/r/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1245
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/r/g;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0x3c0

    .line 1248
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getSlowVideoFps()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "com.oplus.feature.intelligent.high.frame.support"

    .line 1249
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "SlowVideoMode"

    const-string p1, "onStopVideoRecording, Record Time less than 1 second."

    .line 1250
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1255
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    .line 1257
    iget-object p1, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    const v1, 0x7f100411

    .line 1258
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_storage_key"

    .line 1257
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1260
    invoke-static {}, Lcom/oplus/camera/Storage;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1261
    iget-object p1, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/r/g$5;

    invoke-direct {v0, p0}, Lcom/oplus/camera/r/g$5;-><init>(Lcom/oplus/camera/r/g;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onZoomMenuCollapsed()V
    .locals 1

    .line 1229
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onZoomMenuCollapsed()V

    .line 1231
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isMotionDetectOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1232
    invoke-direct {p0, v0}, Lcom/oplus/camera/r/g;->a(I)V

    :cond_0
    return-void
.end method

.method public onZoomMenuExpand()V
    .locals 1

    .line 1220
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onZoomMenuExpand()V

    .line 1222
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isMotionDetectOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 1223
    invoke-direct {p0, v0}, Lcom/oplus/camera/r/g;->a(I)V

    :cond_0
    return-void
.end method

.method protected processPlatformSlowVideo()V
    .locals 2

    .line 1343
    iget-object v0, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/r/g$6;

    invoke-direct {v1, p0}, Lcom/oplus/camera/r/g$6;-><init>(Lcom/oplus/camera/r/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportIntelligentDragViewMoveToDcs(IIZI)V
    .locals 2

    const/4 v0, 0x1

    .line 1177
    iput-boolean v0, p0, Lcom/oplus/camera/r/g;->mbHasDragIntelligentView:Z

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1179
    new-instance p2, Lcom/oplus/camera/statistics/model/FocusAimMsgData;

    iget-object v1, p0, Lcom/oplus/camera/r/g;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, v1}, Lcom/oplus/camera/statistics/model/FocusAimMsgData;-><init>(Landroid/content/Context;)V

    .line 1180
    iget v1, p0, Lcom/oplus/camera/r/g;->mCameraId:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/r/g;->getProperCameraId(I)I

    move-result v1

    iput v1, p2, Lcom/oplus/camera/statistics/model/FocusAimMsgData;->mCameraId:I

    .line 1181
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/oplus/camera/statistics/model/FocusAimMsgData;->mCaptureMode:Ljava/lang/String;

    .line 1182
    iget v1, p0, Lcom/oplus/camera/r/g;->mOrientation:I

    iput v1, p2, Lcom/oplus/camera/statistics/model/FocusAimMsgData;->mOrientation:I

    .line 1183
    iput v0, p2, Lcom/oplus/camera/statistics/model/FocusAimMsgData;->mCaptureType:I

    const/4 v0, 0x0

    .line 1184
    iput-boolean v0, p2, Lcom/oplus/camera/statistics/model/FocusAimMsgData;->mbVideoRecording:Z

    .line 1185
    iput-object p1, p2, Lcom/oplus/camera/statistics/model/FocusAimMsgData;->mTouchXY:Ljava/lang/String;

    .line 1187
    iget-boolean p0, p0, Lcom/oplus/camera/r/g;->mbFrontCamera:Z

    if-nez p0, :cond_0

    .line 1188
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/oplus/camera/statistics/model/FocusAimMsgData;->mAeAfLock:Ljava/lang/String;

    .line 1191
    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/oplus/camera/statistics/model/FocusAimMsgData;->mTouchEV:Ljava/lang/String;

    const-string p0, "10"

    .line 1192
    iput-object p0, p2, Lcom/oplus/camera/statistics/model/FocusAimMsgData;->mActType:Ljava/lang/String;

    .line 1193
    invoke-virtual {p2}, Lcom/oplus/camera/statistics/model/FocusAimMsgData;->report()V

    return-void
.end method

.method public restoreDefaultMode(Z)V
    .locals 0

    .line 1139
    iget-object p1, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    .line 1140
    iget-object p0, p0, Lcom/oplus/camera/r/g;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "key_slow_video_frame_seek_bar_menu_key"

    .line 1141
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1142
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V
    .locals 2

    .line 1378
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V

    .line 1380
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    .line 1381
    invoke-virtual {p0, v0}, Lcom/oplus/camera/r/g;->getVideoPreviewSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1384
    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setVideoSize(Landroid/util/Size;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 1386
    invoke-direct {p0}, Lcom/oplus/camera/r/g;->f()Ljava/lang/String;

    move-result-object v0

    .line 1387
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/r/g;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 1388
    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_FPS:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p1, v1, v0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 1391
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->isSlowVideoHighFrame()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1392
    sget-object p0, Lcom/oplus/ocs/camera/CameraParameter;->SLOW_VIDEO_INTELLIGENT_HIGH_FRAME_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v0, "on"

    invoke-virtual {p1, p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    :cond_1
    return-void
.end method

.method protected shouldAutoStop(J)Z
    .locals 2

    .line 1334
    iget-object v0, p0, Lcom/oplus/camera/r/g;->o:Lcom/oplus/camera/r/a;

    if-eqz v0, :cond_1

    .line 1335
    invoke-virtual {v0}, Lcom/oplus/camera/r/a;->c()I

    move-result v0

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/r/g;->n:Z

    .line 1338
    :cond_1
    iget-boolean p0, p0, Lcom/oplus/camera/r/g;->n:Z

    return p0
.end method

.method protected stopVideoRecordThread()V
    .locals 1

    const/4 v0, 0x1

    .line 808
    iput-boolean v0, p0, Lcom/oplus/camera/r/g;->l:Z

    .line 810
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->stopVideoRecordThread()V

    return-void
.end method

.method protected supportBinauralRecord()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
