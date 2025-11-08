.class public Lcom/oplus/camera/capmode/g;
.super Lcom/oplus/camera/capmode/e;
.source "DoubleExposureMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/capmode/g$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private final C:Landroid/content/DialogInterface$OnClickListener;

.field private D:Lcom/oplus/camera/doubleexposure/a;

.field private final E:Landroid/content/DialogInterface$OnClickListener;

.field private g:Lcom/oplus/camera/capmode/g$a;

.field private h:Lcom/oplus/camera/capmode/g$a;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/oplus/camera/doubleexposure/b;

.field private p:Lcom/oplus/camera/doubleexposure/b;

.field private q:Lcom/coui/appcompat/dialog/app/b;

.field private r:I

.field private s:Lcom/oplus/camera/ui/RotateImageView;

.field private t:Lcom/oplus/camera/ui/widget/e;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/e;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 69
    sget-object p1, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    iput-object p1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    .line 70
    sget-object p1, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    iput-object p1, p0, Lcom/oplus/camera/capmode/g;->h:Lcom/oplus/camera/capmode/g$a;

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->i:Z

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->j:Z

    .line 73
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->k:Z

    .line 74
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->l:Z

    const-string p2, ""

    .line 75
    iput-object p2, p0, Lcom/oplus/camera/capmode/g;->m:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/oplus/camera/capmode/g;->n:Ljava/lang/String;

    const/4 p2, 0x0

    .line 77
    iput-object p2, p0, Lcom/oplus/camera/capmode/g;->o:Lcom/oplus/camera/doubleexposure/b;

    .line 78
    iput-object p2, p0, Lcom/oplus/camera/capmode/g;->p:Lcom/oplus/camera/doubleexposure/b;

    .line 80
    iput p1, p0, Lcom/oplus/camera/capmode/g;->r:I

    .line 81
    iput-object p2, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    .line 82
    iput-object p2, p0, Lcom/oplus/camera/capmode/g;->t:Lcom/oplus/camera/ui/widget/e;

    .line 83
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->u:Z

    .line 84
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->v:Z

    .line 85
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->w:Z

    .line 86
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->x:Z

    const-wide/16 p2, 0x0

    .line 87
    iput-wide p2, p0, Lcom/oplus/camera/capmode/g;->y:J

    .line 88
    iput-wide p2, p0, Lcom/oplus/camera/capmode/g;->z:J

    .line 89
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->A:Z

    .line 90
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->B:Z

    .line 92
    new-instance p1, Lcom/oplus/camera/capmode/g$1;

    invoke-direct {p1, p0}, Lcom/oplus/camera/capmode/g$1;-><init>(Lcom/oplus/camera/capmode/g;)V

    iput-object p1, p0, Lcom/oplus/camera/capmode/g;->C:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    new-instance p1, Lcom/oplus/camera/capmode/g$5;

    invoke-direct {p1, p0}, Lcom/oplus/camera/capmode/g$5;-><init>(Lcom/oplus/camera/capmode/g;)V

    iput-object p1, p0, Lcom/oplus/camera/capmode/g;->D:Lcom/oplus/camera/doubleexposure/a;

    .line 140
    new-instance p1, Lcom/oplus/camera/capmode/g$6;

    invoke-direct {p1, p0}, Lcom/oplus/camera/capmode/g$6;-><init>(Lcom/oplus/camera/capmode/g;)V

    iput-object p1, p0, Lcom/oplus/camera/capmode/g;->E:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private synthetic A()V
    .locals 5

    const/4 v0, 0x0

    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/capmode/g;->mCurrentVideoUri:Landroid/net/Uri;

    const-string v3, "rw"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/capmode/g;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 702
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/oplus/camera/capmode/g;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 703
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/oplus/camera/capmode/g;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 704
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 710
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 714
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_0
    move-object v0, v1

    goto :goto_5

    :catch_1
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v2, v0

    .line 706
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_0

    .line 710
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 714
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 717
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 721
    :cond_1
    :goto_4
    new-instance v0, Lcom/oplus/camera/ui/control/e$d;

    invoke-direct {v0}, Lcom/oplus/camera/ui/control/e$d;-><init>()V

    const/4 v1, 0x1

    .line 722
    iput v1, v0, Lcom/oplus/camera/ui/control/e$d;->k:I

    .line 723
    iget-object v2, p0, Lcom/oplus/camera/capmode/g;->mCurrentVideoUri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 724
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->getVideoTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/oplus/camera/capmode/g;->addVideoToMediaStore(Lcom/oplus/camera/ui/control/e$d;ZLjava/lang/String;)Z

    .line 725
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->closeVideoFileDescriptor()V

    .line 726
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->n()V

    .line 727
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/g;->b(Z)V

    .line 728
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/ui/control/e$d;)V

    return-void

    :catchall_3
    move-exception p0

    :goto_5
    if-eqz v0, :cond_2

    .line 710
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_7

    :cond_2
    :goto_6
    if-eqz v2, :cond_3

    .line 714
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 717
    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 719
    :cond_3
    :goto_8
    throw p0
.end method

.method private synthetic B()V
    .locals 5

    .line 572
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/16 v1, 0x11

    const-string v2, "button_color_inside_none"

    const-string v3, "button_shape_ring_none"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 576
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->b(Z)V

    .line 577
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

.method private synthetic C()V
    .locals 5

    .line 498
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v1, 0x1

    const/4 v2, 0x6

    const-string v3, "button_color_inside_red"

    const-string v4, "button_shape_ring_none"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 502
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->b(Z)V

    .line 503
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

.method private synthetic D()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v1, 0x3a98

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->h(I)V

    .line 430
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v0}, Lcom/oplus/camera/ui/control/b;-><init>()V

    const/16 v1, 0x16

    .line 431
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    const/4 v1, 0x1

    .line 432
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->b(I)V

    .line 433
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->b(Z)V

    .line 434
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

.method private a(II)V
    .locals 12

    .line 1173
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x1

    move v2, p1

    move v10, p2

    invoke-interface/range {v1 .. v11}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZZZZIZ)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->t()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/g;Lcom/oplus/camera/doubleexposure/b;ZLcom/oplus/camera/doubleexposure/g$a;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/doubleexposure/b;ZLcom/oplus/camera/doubleexposure/g$a;)V

    return-void
.end method

.method private a(Lcom/oplus/camera/doubleexposure/b;Lcom/oplus/camera/doubleexposure/g$a;)V
    .locals 2

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFirstStageDone, clipVideoInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoubleExposureMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p2, "1"

    .line 589
    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/capmode/g;->a(Ljava/lang/String;Lcom/oplus/camera/doubleexposure/b;)V

    .line 590
    iget-object p2, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p2}, Lcom/oplus/camera/ui/CameraUIInterface;->aK()V

    const/4 p2, 0x0

    .line 591
    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/doubleexposure/b;ZLcom/oplus/camera/doubleexposure/g$a;)V

    .line 592
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/g;->l:Z

    const-string p1, "db_expo_page1"

    const-string p2, "save"

    .line 593
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_0
    new-instance v1, Lcom/oplus/camera/capmode/g$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/camera/capmode/g$8;-><init>(Lcom/oplus/camera/capmode/g;Lcom/oplus/camera/doubleexposure/b;Lcom/oplus/camera/doubleexposure/g$a;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/doubleexposure/b;ZLcom/oplus/camera/doubleexposure/g$a;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/oplus/camera/doubleexposure/b;ZLcom/oplus/camera/doubleexposure/g$a;)V
    .locals 2

    .line 942
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/g;->mbPaused:Z

    if-eqz v0, :cond_0

    .line 943
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "decodeVideo, cancel decode video, mbPaused: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/g;->mbPaused:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DoubleExposureMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_1

    .line 949
    new-instance v0, Lcom/oplus/camera/doubleexposure/c;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->D:Lcom/oplus/camera/doubleexposure/a;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/oplus/camera/doubleexposure/c;-><init>(Lcom/oplus/camera/doubleexposure/b;ZLcom/oplus/camera/doubleexposure/g$a;Lcom/oplus/camera/doubleexposure/a;)V

    .line 951
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/doubleexposure/c;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;Lcom/oplus/camera/doubleexposure/b;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1388
    invoke-virtual {p2}, Lcom/oplus/camera/doubleexposure/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1392
    :cond_0
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/capmode/g$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/oplus/camera/capmode/g$3;-><init>(Lcom/oplus/camera/capmode/g;Lcom/oplus/camera/doubleexposure/b;Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;)V

    const-string p0, "setClipVideoInfo"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/oplus/camera/ui/control/e$d;)V
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/g$11;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/capmode/g$11;-><init>(Lcom/oplus/camera/capmode/g;Lcom/oplus/camera/ui/control/e$d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/g;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->B:Z

    return p1
.end method

.method private a(Ljava/io/File;)Z
    .locals 0

    .line 920
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->v()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(I)V
    .locals 13

    .line 1156
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    .line 1157
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    .line 1158
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1159
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0x1388

    const/4 v12, 0x1

    move v3, p1

    invoke-interface/range {v2 .. v12}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZZZZIZ)V

    goto :goto_0

    .line 1162
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->y()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/g;->c(Z)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->r()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSecondStageDone, isNeedButtonAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoubleExposureMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->t()V

    .line 618
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->i()V

    .line 620
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/-$$Lambda$g$WfuJubcaFTMSvrsIEp1XRw80AJk;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/capmode/-$$Lambda$g$WfuJubcaFTMSvrsIEp1XRw80AJk;-><init>(Lcom/oplus/camera/capmode/g;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/g;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->l:Z

    return p1
.end method

.method private c(I)V
    .locals 3

    .line 1437
    new-instance v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/statistics/model/ReminderMsgData;-><init>(Landroid/content/Context;Z)V

    const-string v1, "disable_code"

    sparse-switch p1, :sswitch_data_0

    return-void

    .line 1451
    :sswitch_0
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderTypeValue:Ljava/lang/String;

    const-string p1, "video_unparseable"

    .line 1452
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderCodeValue:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    const-string p1, "bokeh_code"

    .line 1456
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderTypeValue:Ljava/lang/String;

    const-string p1, "move_closer"

    .line 1457
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderCodeValue:Ljava/lang/String;

    goto :goto_0

    .line 1446
    :sswitch_2
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderTypeValue:Ljava/lang/String;

    const-string p1, "time_short"

    .line 1447
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderCodeValue:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const-string p1, "advice"

    .line 1441
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderTypeValue:Ljava/lang/String;

    const-string p1, "no_face"

    .line 1442
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderCodeValue:Ljava/lang/String;

    .line 1464
    :goto_0
    iget p1, p0, Lcom/oplus/camera/capmode/g;->mCameraId:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/g;->getProperCameraId(I)I

    move-result p1

    iput p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCameraId:I

    .line 1465
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCaptureMode:Ljava/lang/String;

    .line 1466
    iget p1, p0, Lcom/oplus/camera/capmode/g;->mOrientation:I

    iput p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mOrientation:I

    .line 1467
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/g;->mbFrontCamera:Z

    if-eqz p0, :cond_0

    const-string p0, "front"

    goto :goto_1

    :cond_0
    const-string p0, "rear"

    :goto_1
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mRearOrFront:Ljava/lang/String;

    .line 1468
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/ReminderMsgData;->report()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f100130 -> :sswitch_3
        0x7f100131 -> :sswitch_2
        0x7f1005f1 -> :sswitch_1
        0x7f1005f3 -> :sswitch_0
    .end sparse-switch
.end method

.method private c(Z)V
    .locals 2

    .line 1167
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 1168
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/capmode/g;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/g;->l:Z

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/capmode/g;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->v:Z

    return p1
.end method

.method static synthetic d(Lcom/oplus/camera/capmode/g;)Lcom/oplus/camera/doubleexposure/b;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->o:Lcom/oplus/camera/doubleexposure/b;

    return-object p0
.end method

.method private synthetic d(Z)V
    .locals 5

    .line 621
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aL()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "button_shape_ring_none"

    const-string v3, "button_color_inside_red"

    if-eqz p1, :cond_1

    .line 630
    new-instance p1, Lcom/oplus/camera/ui/control/b;

    const/16 v4, 0x13

    invoke-direct {p1, v4, v3, v2, v0}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 634
    :cond_1
    new-instance p1, Lcom/oplus/camera/ui/control/b;

    const/4 v4, 0x6

    invoke-direct {p1, v4, v3, v2, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 639
    :goto_0
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/control/b;->b(Z)V

    .line 640
    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 641
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/g;->A:Z

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->s()V

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->p()V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->q()V

    return-void
.end method

.method static synthetic h(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->l()V

    return-void
.end method

.method static synthetic i(Lcom/oplus/camera/capmode/g;)Lcom/oplus/camera/capmode/g$a;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->h:Lcom/oplus/camera/capmode/g$a;

    return-object p0
.end method

.method static synthetic j(Lcom/oplus/camera/capmode/g;)Lcom/oplus/camera/capmode/g$a;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    return-object p0
.end method

.method private j()V
    .locals 3

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSecondStateRecordingFinish, mVideoFilename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoubleExposureMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/capmode/g;->y:J

    .line 564
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mVideoFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/capmode/g;->n:Ljava/lang/String;

    .line 565
    new-instance v0, Lcom/oplus/camera/doubleexposure/b;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/oplus/camera/doubleexposure/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/g;->p:Lcom/oplus/camera/doubleexposure/b;

    .line 566
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->p:Lcom/oplus/camera/doubleexposure/b;

    const-string v1, "2"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/capmode/g;->a(Ljava/lang/String;Lcom/oplus/camera/doubleexposure/b;)V

    .line 567
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aJ()V

    .line 568
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->p:Lcom/oplus/camera/doubleexposure/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/doubleexposure/b;ZLcom/oplus/camera/doubleexposure/g$a;)V

    const-string v0, "db_expo_page2"

    const-string v1, "save"

    .line 569
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/capmode/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/-$$Lambda$g$QrIApx6ya19IfzkdE1LRi9eT_6E;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/-$$Lambda$g$QrIApx6ya19IfzkdE1LRi9eT_6E;-><init>(Lcom/oplus/camera/capmode/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 580
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->displayScreenHintIconInSwitchOn()V

    return-void
.end method

.method private k()V
    .locals 2

    .line 646
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/capmode/g$9;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/g$9;-><init>(Lcom/oplus/camera/capmode/g;)V

    const-string p0, "clear cache video"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/oplus/camera/capmode/g;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/g;->v:Z

    return p0
.end method

.method private l()V
    .locals 3

    const-string v0, "DoubleExposureMode"

    const-string v1, "deleteCacheVideos"

    .line 655
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->v()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    new-instance v1, Lcom/oplus/camera/capmode/g$10;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/g$10;-><init>(Lcom/oplus/camera/capmode/g;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 665
    array-length v0, p0

    if-lez v0, :cond_0

    .line 666
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 667
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$4opmBrVgitep2sfakXINTMxGH_s(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->C()V

    return-void
.end method

.method public static synthetic lambda$Ab908pFMcIPky9npln3j7gKumG0(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->D()V

    return-void
.end method

.method public static synthetic lambda$F4tCr_7WQEqiBCbXYiJpcWvyiUM(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->z()V

    return-void
.end method

.method public static synthetic lambda$MxAImdDgNZkqG68REGzO_fnvx2A(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->A()V

    return-void
.end method

.method public static synthetic lambda$QrIApx6ya19IfzkdE1LRi9eT_6E(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->B()V

    return-void
.end method

.method public static synthetic lambda$WfuJubcaFTMSvrsIEp1XRw80AJk(Lcom/oplus/camera/capmode/g;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/g;->d(Z)V

    return-void
.end method

.method private m()V
    .locals 4

    .line 790
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/g;->k:Z

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/t;->r()V

    .line 792
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x5

    const-string v3, "pref_double_exposure_effect_type"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/a/t;->k(I)V

    :cond_0
    const/4 v0, 0x1

    .line 796
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/g;->k:Z

    return-void
.end method

.method private n()V
    .locals 1

    .line 800
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->r()V

    .line 801
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->s()V

    const-string v0, ""

    .line 803
    iput-object v0, p0, Lcom/oplus/camera/capmode/g;->m:Ljava/lang/String;

    .line 804
    iput-object v0, p0, Lcom/oplus/camera/capmode/g;->n:Ljava/lang/String;

    return-void
.end method

.method private o()Z
    .locals 1

    .line 855
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/g;->B:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private p()V
    .locals 4

    .line 859
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "key_bottom_guide_double_exposure"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 860
    iget-object v2, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_double_exposure_tips"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v0, :cond_3

    .line 863
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->w()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    iget v2, p0, Lcom/oplus/camera/capmode/g;->r:I

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    .line 866
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 873
    :cond_0
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v2

    if-ne v0, v2, :cond_1

    const v0, 0x7f10012a

    .line 874
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/g;->b(I)V

    goto :goto_0

    .line 875
    :cond_1
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v2

    if-ne v0, v2, :cond_2

    const v0, 0x7f100134

    .line 876
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/g;->b(I)V

    goto :goto_0

    .line 878
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->y()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/g;->c(Z)V

    .line 879
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->y()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/g;->c(Z)V

    :goto_0
    return-void

    .line 867
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->y()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/g;->c(Z)V

    .line 868
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->y()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/g;->c(Z)V

    return-void
.end method

.method private q()V
    .locals 2

    .line 884
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/-$$Lambda$g$F4tCr_7WQEqiBCbXYiJpcWvyiUM;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/-$$Lambda$g$F4tCr_7WQEqiBCbXYiJpcWvyiUM;-><init>(Lcom/oplus/camera/capmode/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private r()V
    .locals 2

    .line 904
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 907
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .line 912
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 915
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private t()V
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_0

    .line 936
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/a/t;->o()V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_0

    .line 957
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/a/t;->p()V

    :cond_0
    return-void
.end method

.method private v()Ljava/lang/String;
    .locals 1

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getDataDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "files"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private w()Z
    .locals 2

    .line 1148
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->t:Lcom/oplus/camera/ui/widget/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090411

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/e;

    iput-object v0, p0, Lcom/oplus/camera/capmode/g;->t:Lcom/oplus/camera/ui/widget/e;

    .line 1152
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->t:Lcom/oplus/camera/ui/widget/e;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private x()V
    .locals 5

    .line 1305
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1306
    new-instance v0, Lcom/oplus/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    .line 1307
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    const v2, 0x7f0902d6

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setId(I)V

    .line 1308
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    const v2, 0x7f0805cc

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1310
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07016c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1311
    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07016b

    .line 1312
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1313
    iget-object v3, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07016a

    .line 1314
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1316
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    .line 1317
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x15

    .line 1318
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1319
    invoke-virtual {v4, v1, v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1320
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 1321
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1322
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    new-instance v2, Lcom/oplus/camera/capmode/-$$Lambda$xW5jzJJ1VZaBFepN-Obd1Hssr3U;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/-$$Lambda$xW5jzJJ1VZaBFepN-Obd1Hssr3U;-><init>(Lcom/oplus/camera/capmode/g;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1325
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v2, 0x3

    const-string v3, "double_exposure"

    invoke-interface {v0, p0, v3, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;Ljava/lang/String;IZ)V

    return-void
.end method

.method private y()Z
    .locals 1

    .line 1618
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->isVideoFlashTorchOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->needUpdateFlashIcon()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic z()V
    .locals 7

    .line 885
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    const/16 v1, 0x8

    const-wide/16 v2, 0xc8

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->w()Z

    move-result v0

    if-nez v0, :cond_2

    .line 886
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v5

    const/4 v6, 0x0

    if-ne v0, v5, :cond_0

    .line 887
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p0, v6, v4, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 889
    :cond_0
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v5

    if-ne v0, v5, :cond_1

    .line 890
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p0, v6, v4, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 893
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p0, v1, v4, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 897
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p0, v1, v4, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/capmode/g$a;)V
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    iput-object v0, p0, Lcom/oplus/camera/capmode/g;->h:Lcom/oplus/camera/capmode/g$a;

    .line 989
    iput-object p1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    .line 991
    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/capmode/g$12;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/g$12;-><init>(Lcom/oplus/camera/capmode/g;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/oplus/camera/doubleexposure/b;)V
    .locals 3

    .line 1364
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1368
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;-><init>(Landroid/content/Context;)V

    const-string v1, "video_clip"

    .line 1369
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->buildEventId(Ljava/lang/String;)V

    .line 1370
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mPageId:Ljava/lang/String;

    .line 1371
    iget p1, p0, Lcom/oplus/camera/capmode/g;->mOrientation:I

    iput p1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mOrientation:I

    .line 1372
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mCaptureMode:Ljava/lang/String;

    .line 1373
    iget p1, p0, Lcom/oplus/camera/capmode/g;->mCameraId:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/g;->getProperCameraId(I)I

    move-result p1

    iput p1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mCameraId:I

    if-eqz p2, :cond_2

    .line 1376
    invoke-virtual {p2}, Lcom/oplus/camera/doubleexposure/b;->h()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1377
    invoke-virtual {p2}, Lcom/oplus/camera/doubleexposure/b;->e()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/oplus/camera/doubleexposure/b;->d()J

    move-result-wide v1

    sub-long/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mVideoTime:Ljava/lang/String;

    .line 1378
    invoke-virtual {p2}, Lcom/oplus/camera/doubleexposure/b;->b()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mVideoRecMode:Ljava/lang/String;

    .line 1379
    invoke-virtual {p2}, Lcom/oplus/camera/doubleexposure/b;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mVideoFps:Ljava/lang/String;

    .line 1380
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->report()V

    goto :goto_0

    .line 1382
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;Lcom/oplus/camera/doubleexposure/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1335
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1339
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;-><init>(Landroid/content/Context;)V

    const-string v1, "funcValue_select"

    .line 1340
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->buildEventId(Ljava/lang/String;)V

    const-string v1, "63"

    .line 1341
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mFuncKeyId:Ljava/lang/String;

    .line 1342
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mCaptureMode:Ljava/lang/String;

    .line 1343
    iget v1, p0, Lcom/oplus/camera/capmode/g;->mCameraId:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/g;->getProperCameraId(I)I

    move-result p0

    iput p0, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mCameraId:I

    .line 1344
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mFuncKeyItem:Ljava/lang/String;

    .line 1345
    iput-object p2, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mFuncKeyValue:Ljava/lang/String;

    .line 1346
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->report()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1472
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1476
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;-><init>(Landroid/content/Context;)V

    const-string v1, "guide_page"

    .line 1477
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->buildEventId(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 1479
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v3

    goto :goto_0

    :pswitch_1
    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v4

    goto :goto_0

    :pswitch_2
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    const-string p1, "select_video"

    .line 1493
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mPageId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, "portrait_video"

    .line 1489
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mPageId:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p1, "scene_video"

    .line 1485
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mPageId:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string p1, "video_overlay"

    .line 1481
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mPageId:Ljava/lang/String;

    .line 1497
    :goto_1
    iput-object p2, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mPageDuration:Ljava/lang/String;

    .line 1498
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mCaptureMode:Ljava/lang/String;

    .line 1499
    iget p1, p0, Lcom/oplus/camera/capmode/g;->mCameraId:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/g;->getProperCameraId(I)I

    move-result p0

    iput p0, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mCameraId:I

    .line 1500
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mExitType:Ljava/lang/String;

    .line 1501
    iput-object p4, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mOpenType:Ljava/lang/String;

    .line 1502
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->report()V

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .line 1222
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_REPLAY:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_1

    .line 1223
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->h()V

    .line 1224
    new-instance p1, Lcom/coui/appcompat/dialog/app/b$a;

    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 1225
    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/app/b$a;->f(I)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p1

    const v0, 0x7f100129

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->E:Landroid/content/DialogInterface$OnClickListener;

    .line 1226
    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/dialog/app/b$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p1

    const v0, 0x7f100127

    const/4 v1, 0x0

    .line 1227
    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p1

    .line 1228
    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/capmode/g;->q:Lcom/coui/appcompat/dialog/app/b;

    .line 1230
    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1231
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->q:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->show()V

    :cond_1
    return-void
.end method

.method public afterStartRecording()V
    .locals 0

    .line 451
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->displayScreenHintIconInSwitchOn()V

    .line 453
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->afterStartRecording()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1350
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1354
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;-><init>(Landroid/content/Context;)V

    const-string v1, "funcKey_click"

    .line 1355
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->buildEventId(Ljava/lang/String;)V

    .line 1356
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mFuncKeyId:Ljava/lang/String;

    .line 1357
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mCaptureMode:Ljava/lang/String;

    .line 1358
    iget p1, p0, Lcom/oplus/camera/capmode/g;->mCameraId:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/g;->getProperCameraId(I)I

    move-result p0

    iput p0, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mCameraId:I

    const/4 p0, 0x2

    .line 1359
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mFuncKeyResult:Ljava/lang/String;

    .line 1360
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->report()V

    return-void
.end method

.method public beforeStartRecording()V
    .locals 3

    const/4 v0, 0x1

    .line 426
    invoke-super {p0, v0}, Lcom/oplus/camera/capmode/e;->beforeStartRecording(Z)V

    .line 428
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/-$$Lambda$g$Ab908pFMcIPky9npln3j7gKumG0;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/-$$Lambda$g$Ab908pFMcIPky9npln3j7gKumG0;-><init>(Lcom/oplus/camera/capmode/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 437
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 438
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    .line 439
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/g;->i:Z

    .line 440
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->aH()V

    goto :goto_0

    .line 441
    :cond_0
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-ne v0, v1, :cond_1

    .line 442
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    .line 443
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/g;->i:Z

    .line 444
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aI()V

    .line 445
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->u()V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeSwitchCamera()V
    .locals 1

    .line 235
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->beforeSwitchCamera()V

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/g;->B:Z

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_0

    .line 240
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/a/t;->q()V

    :cond_0
    return-void
.end method

.method public beforeSwitchToMode(Z)V
    .locals 0

    .line 229
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->beforeSwitchToMode(Z)V

    .line 230
    sget-object p1, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    return-void
.end method

.method public cancelOp(Z)V
    .locals 3

    .line 828
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->o()Z

    move-result v0

    const-string v1, "DoubleExposureMode"

    if-eqz v0, :cond_0

    const-string p0, "cancelOp, need wait hide blur"

    .line 829
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 834
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelOp, showDialog: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 837
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/g;->a(Z)V

    goto :goto_0

    .line 839
    :cond_1
    sget-object p1, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    .line 840
    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->aM()V

    .line 841
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->t()V

    .line 842
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->r()V

    .line 843
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->s()V

    .line 845
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p1

    const/4 v0, 0x1

    .line 846
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/b;->c(Z)V

    .line 847
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 850
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->p()V

    .line 851
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->q()V

    return-void
.end method

.method public displayScreenHintIconInSwitchOn()V
    .locals 2

    .line 1558
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->needUpdateFlashIcon()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1559
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    return-void

    .line 1564
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->displayScreenHintIconInSwitchOn()V

    return-void
.end method

.method public f()Lcom/oplus/camera/capmode/g$a;
    .locals 0

    .line 984
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    return-object p0
.end method

.method public g()V
    .locals 3

    .line 1237
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_REPLAY:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1238
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->h()V

    .line 1239
    new-instance v0, Lcom/coui/appcompat/dialog/app/b$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1240
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/b$a;->f(I)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    const v1, 0x7f100133

    iget-object v2, p0, Lcom/oplus/camera/capmode/g;->C:Landroid/content/DialogInterface$OnClickListener;

    .line 1241
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    const v1, 0x7f100127

    const/4 v2, 0x0

    .line 1242
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    .line 1243
    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/g;->q:Lcom/coui/appcompat/dialog/app/b;

    .line 1245
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1246
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->q:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->show()V

    :cond_1
    return-void
.end method

.method public getCameraFeature()Ljava/lang/String;
    .locals 0

    const-string p0, "doubleExposure"

    return-object p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "double_exposure"

    return-object p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getOperatingMode()I
    .locals 0

    const p0, 0x800b

    return p0
.end method

.method public getRearEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getRelativePath()Ljava/lang/String;
    .locals 2

    .line 1077
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1080
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->getRelativePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1078
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->v()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 5

    .line 408
    sget-object v0, Lcom/oplus/camera/capmode/g$4;->a:[I

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/g$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 416
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    goto :goto_0

    .line 410
    :cond_0
    new-instance p0, Lcom/oplus/camera/ui/control/b;

    const/16 v0, 0x15

    const/4 v2, 0x0

    const-string v3, "button_color_inside_none"

    const-string v4, "button_shape_ring_none"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 419
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/control/b;->b(Z)V

    return-object p0
.end method

.method public getSupportFaceView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 4

    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "pref_camera_torch_mode_key"

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_filter_process_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_video_super_eis_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "pref_video_size_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "key_suppport_multi_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_sound_types_key_front"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "pref_video_eis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "key_support_super_eis_wide_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "pref_video_blur_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "func_hdr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "key_support_makeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "func_video_super_eis_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "func_video_double_exposure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "func_enhancement_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "func_video_super_eis_wide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "func_sat_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "pref_support_recording_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "key_support_video_high_fps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "support_video_count_down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "func_video_blur_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "func_iot_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "pref_video_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "pref_sound_types_key_rear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "func_video_retention"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "key_support_show_soloop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "key_video_duration_limit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "pref_inertial_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_1

    :sswitch_1b
    const-string v0, "func_tilt_shift"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_1c
    const-string v0, "pref_10bits_heic_encode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :sswitch_1d
    const-string v0, "func_face_beauty_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_1e
    const-string v0, "key_need_intercept_touch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto :goto_1

    :sswitch_1f
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto :goto_1

    :sswitch_20
    const-string v0, "func_ultra_night_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_21
    const-string v0, "pref_video_noise_filter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_22
    const-string v0, "key_support_show_dim_hint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 304
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 297
    :pswitch_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const-string p1, "key_bottom_guide_double_exposure"

    .line 298
    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    return v2

    .line 290
    :pswitch_1
    sget-object p1, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object p0

    if-ne p1, p0, :cond_2

    return v2

    :cond_2
    return v3

    :pswitch_2
    const-string p1, "pref_camera_videoflashmode_key"

    .line 286
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->isVideoRetentionOpen()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 287
    :cond_3
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    return v2

    :pswitch_3
    const-string p1, "func_torch_soft_light"

    .line 283
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_4
    return v2

    :pswitch_5
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x7336bb70 -> :sswitch_22
        -0x72854fc3 -> :sswitch_21
        -0x6bca5f3a -> :sswitch_20
        -0x5efa20f1 -> :sswitch_1f
        -0x557a4647 -> :sswitch_1e
        -0x500c4e2d -> :sswitch_1d
        -0x4c684fe0 -> :sswitch_1c
        -0x4c0c0f25 -> :sswitch_1b
        -0x48d5427c -> :sswitch_1a
        -0x3e37908c -> :sswitch_19
        -0x33b697ce -> :sswitch_18
        -0x3219bf21 -> :sswitch_17
        -0x264a55aa -> :sswitch_16
        -0x1e969cb5 -> :sswitch_15
        -0xf8e6ce6 -> :sswitch_14
        -0x9b1a6ca -> :sswitch_13
        -0x953b61c -> :sswitch_12
        0x2b4ae86 -> :sswitch_11
        0x52dec60 -> :sswitch_10
        0x739636c -> :sswitch_f
        0xb8585f9 -> :sswitch_e
        0x286b43e6 -> :sswitch_d
        0x2dffb2cd -> :sswitch_c
        0x2fbc3ab6 -> :sswitch_b
        0x383e0c7c -> :sswitch_a
        0x51f99d59 -> :sswitch_9
        0x5245e2fb -> :sswitch_8
        0x57360957 -> :sswitch_7
        0x573e5b47 -> :sswitch_6
        0x5a4fa36f -> :sswitch_5
        0x5c5ca3b7 -> :sswitch_4
        0x601dc156 -> :sswitch_3
        0x62669e01 -> :sswitch_2
        0x65dfb4cb -> :sswitch_1
        0x74ed85e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 4

    .line 314
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_camera_torch_mode_key"

    .line 316
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    .line 317
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_camera_videoflashmode_key"

    .line 318
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "pref_setting_key"

    .line 322
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 323
    sget-object p1, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_REPLAY:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v0

    if-eq p1, v0, :cond_1

    sget-object p1, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object p0

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2

    .line 319
    :cond_3
    :goto_1
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_REPLAY:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v3

    if-eq v0, v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoFps()I
    .locals 0

    .line 193
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->getVideoFrameRate()I

    move-result p0

    return p0
.end method

.method protected getVideoSavePath()Ljava/lang/String;
    .locals 3

    .line 1062
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/g;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1065
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->getVideoSavePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1063
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->v()Ljava/lang/String;

    move-result-object v0

    .line 1068
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoSavePath, path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DoubleExposureMode"

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getVideoSizeType()Ljava/lang/String;
    .locals 0

    const-string p0, "video_size_720p"

    return-object p0
.end method

.method protected getVideoTimeLimit()J
    .locals 2

    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method public getZoomBarOffset()I
    .locals 2

    .line 1201
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1202
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070432

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0

    .line 1205
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->getZoomBarOffset()I

    move-result p0

    return p0
.end method

.method public h()V
    .locals 1

    .line 1252
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->q:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->q:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 5

    .line 1422
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCurrentVideoUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1426
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;-><init>(Landroid/content/Context;)V

    const-string v1, "video_playback"

    .line 1427
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->buildEventId(Ljava/lang/String;)V

    const-string v1, "2"

    .line 1428
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mPageId:Ljava/lang/String;

    .line 1429
    iget v1, p0, Lcom/oplus/camera/capmode/g;->mOrientation:I

    iput v1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mOrientation:I

    .line 1430
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mCaptureMode:Ljava/lang/String;

    .line 1431
    iget v1, p0, Lcom/oplus/camera/capmode/g;->mCameraId:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/g;->getProperCameraId(I)I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mCameraId:I

    .line 1432
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/oplus/camera/capmode/g;->y:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->mDuration:Ljava/lang/String;

    .line 1433
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/DoubleExposureMsgData;->report()V

    :cond_1
    :goto_0
    return-void
.end method

.method public isAllowSwitch(Lcom/oplus/camera/d$a;)Z
    .locals 2

    .line 1608
    sget-object v0, Lcom/oplus/camera/d$a;->MODE:Lcom/oplus/camera/d$a;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    sget-object v1, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    if-eq v0, v1, :cond_0

    const-string p0, "DoubleExposureMode"

    const-string p1, "isAllowSwitch, not preview state, can\'t swith mode."

    .line 1609
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1614
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->isAllowSwitch(Lcom/oplus/camera/d$a;)Z

    move-result p0

    return p0
.end method

.method public isBottomGuideEntryViewShown()Z
    .locals 2

    .line 1553
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object p0

    if-ne v0, p0, :cond_0

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

.method public isDoubleExposureOpen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isHideHeadLine()Z
    .locals 2

    .line 1623
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1627
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->isHideHeadLine()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected isNeedAudioEncode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isNeedGenerateUri()Z
    .locals 0

    .line 1102
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/g;->i:Z

    return p0
.end method

.method protected isUseMediaCodec()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isUseMediaRecorderNotUseAPS()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needUpdateFlashIcon()Z
    .locals 2

    .line 1569
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    .line 1570
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_REPLAY:Lcom/oplus/camera/capmode/g$a;

    .line 1571
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 4

    .line 210
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->onAfterStartPreview(Z)V

    .line 212
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "key_bottom_guide_double_exposure"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 213
    iget-object v2, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_double_exposure_tips"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/capmode/g;->r:I

    const-string v3, "pref_double_exposure_open_count"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 220
    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k(I)V

    .line 223
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->p()V

    .line 224
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->q()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    .line 1259
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 1260
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1267
    :cond_0
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/g;->a(Z)V

    goto :goto_1

    .line 1261
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/oplus/camera/capmode/g;->mRecordingTotalTime:J

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/g;->getRecordingMinTime(Z)I

    move-result v3

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_2

    .line 1262
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090419

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1263
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1264
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/g;->a(Z)V

    :cond_2
    :goto_1
    return v2

    .line 1273
    :cond_3
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforePreview()V
    .locals 3

    .line 203
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->onBeforePreview()V

    .line 204
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_double_exposure_effect_type"

    const/4 v2, 0x5

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/preview/a/t;->k(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1526
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902d6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1528
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1530
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->F()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "67"

    .line 1531
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/g;->b(Ljava/lang/String;)V

    .line 1532
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x5

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->k(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DoubleExposureMode"

    const-string v1, "onDeInitCameraMode"

    .line 1180
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->onDeInitCameraMode(Ljava/lang/String;)V

    .line 1184
    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 1185
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1188
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->h()V

    const/4 p1, 0x0

    .line 1189
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->u:Z

    .line 1190
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->A:Z

    .line 1191
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aO()V

    .line 1192
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->e(IZ)V

    .line 1193
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aT()V

    .line 1194
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->k()V

    .line 1195
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v1, 0x10

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 1196
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/g;->c(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1289
    iput-object v0, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    .line 1292
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->onDestroy()V

    return-void
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 3

    .line 1507
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    .line 1509
    instance-of v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    if-eqz v0, :cond_1

    .line 1510
    move-object v0, p1

    check-cast v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    .line 1511
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x5

    const-string v2, "pref_double_exposure_effect_type"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne v1, p0, :cond_0

    const-string p0, "mixed"

    .line 1515
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mDoubleExposureEffect:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "silhouette"

    .line 1517
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mDoubleExposureEffect:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected onInitCameraMode()V
    .locals 5

    const-string v0, "DoubleExposureMode"

    const-string v1, "onInitCameraMode"

    .line 1112
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->onInitCameraMode()V

    .line 1116
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/capmode/g$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/g$2;-><init>(Lcom/oplus/camera/capmode/g;)V

    const-string v2, "init NvsStreamingContext"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1131
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    const-string v3, "key_bottom_guide_double_exposure"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1133
    iget-object v3, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_double_exposure_tips"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_double_exposure_open_count"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/capmode/g;->r:I

    .line 1137
    iget v0, p0, Lcom/oplus/camera/capmode/g;->r:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/oplus/camera/capmode/g;->r:I

    .line 1141
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090411

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/widget/e;

    iput-object v0, p0, Lcom/oplus/camera/capmode/g;->t:Lcom/oplus/camera/ui/widget/e;

    .line 1142
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->x()V

    .line 1143
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/g;->u:Z

    .line 1144
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/g;->A:Z

    return-void
.end method

.method public onModeShownTips(I)V
    .locals 0

    .line 1331
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/g;->c(I)V

    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 1

    .line 1592
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->onMoreModeHidden(I)V

    .line 1593
    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    const v0, 0x7f090220

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1596
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1599
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_1

    .line 1600
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1603
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->p()V

    return-void
.end method

.method public onMoreModeShown()V
    .locals 2

    .line 1576
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->onMoreModeShown()V

    .line 1577
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090220

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 1580
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 1584
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1587
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->e(IZ)V

    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 396
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v0

    sget-object v1, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/g;->B:Z

    .line 397
    iput-boolean v3, p0, Lcom/oplus/camera/capmode/g;->u:Z

    .line 398
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v1, 0x10

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 399
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->h()V

    .line 401
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->onPause()V

    return-void
.end method

.method protected onResume(Z)V
    .locals 2

    .line 748
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->onResume(Z)V

    .line 750
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/g;->w:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/g;->x:Z

    if-nez p1, :cond_0

    .line 751
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/g;->w:Z

    .line 752
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/g;->x:Z

    const-string p0, "DoubleExposureMode"

    const-string p1, "DoubleExposureMode, onResume, mbNeedRestore"

    .line 754
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 759
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/g;->j:Z

    if-eqz p1, :cond_1

    .line 760
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/g;->j:Z

    .line 761
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->aL()V

    return-void

    .line 766
    :cond_1
    sget-object p1, Lcom/oplus/camera/capmode/g$4;->a:[I

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/g$a;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 773
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->o:Lcom/oplus/camera/doubleexposure/b;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 774
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/doubleexposure/b;Lcom/oplus/camera/doubleexposure/g$a;)V

    goto :goto_0

    .line 776
    :cond_3
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/g;->B:Z

    .line 777
    sget-object p1, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    .line 778
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/g;->b(Z)V

    goto :goto_0

    .line 768
    :cond_4
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/g;->b(Z)V

    .line 769
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->m()V

    goto :goto_0

    .line 784
    :cond_5
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->j()V

    :goto_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    .line 336
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/e;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const-string p1, "key_bottom_guide_double_exposure"

    .line 338
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f10012a

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 339
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/g;->b(I)V

    goto/16 :goto_1

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "first_guide"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v0, "pref_double_exposure_tips"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 341
    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_9

    .line 344
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/g;->b(I)V

    const/4 p1, -0x1

    .line 345
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/oplus/camera/capmode/g;->z:J

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "click"

    .line 345
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/oplus/camera/capmode/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    const-string v0, "pref_double_exposure_open_count"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 350
    iget-object p2, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 351
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x3

    if-ne v0, p2, :cond_2

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/capmode/g;->z:J

    .line 356
    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    const p2, 0x7f090220

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 357
    iget-object p2, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070ce4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 358
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v0, 0x10

    float-to-int p2, p2

    invoke-interface {p0, p1, v0, v3, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;III)V

    goto/16 :goto_1

    :cond_2
    if-nez p1, :cond_9

    if-le v0, p2, :cond_9

    .line 359
    sget-object p1, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object p2

    if-ne p1, p2, :cond_9

    .line 360
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/g;->b(I)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "pref_double_exposure_effect_type"

    .line 362
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 363
    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const/4 p2, 0x5

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "db_expo_effect"

    if-ne p2, p1, :cond_4

    const-string p1, "mixed"

    .line 367
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/capmode/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "silhouette"

    .line 370
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/capmode/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 373
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_8

    const-string v0, "key_double_exposure_guid_page_and_duration"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 374
    iget-object p2, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 377
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v0, ":"

    .line 378
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_9

    .line 381
    array-length p2, v0

    const/4 v1, 0x2

    if-ge v1, p2, :cond_9

    .line 382
    iget-object p2, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 383
    aget-object p2, v0, v3

    aget-object v3, v0, v4

    aget-object v0, v0, v1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    const-string v2, "durable_guide"

    :goto_0
    invoke-virtual {p0, p2, v3, v0, v2}, Lcom/oplus/camera/capmode/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string p1, "pref_camera_videoflashmode_key"

    .line 386
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "off"

    .line 387
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-boolean p1, Lcom/oplus/camera/Camera;->l:Z

    if-nez p1, :cond_9

    sget-boolean p1, Lcom/oplus/camera/Camera;->m:Z

    if-nez p1, :cond_9

    .line 390
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->p()V

    :cond_9
    :goto_1
    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onStopVideoRecording(Z)V
    .locals 0

    .line 458
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->resetTimeUi()V

    .line 459
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->onStopVideoRecording(Z)V

    return-void
.end method

.method public onVideoLoadedDone(Lcom/oplus/camera/doubleexposure/b;Lcom/oplus/camera/doubleexposure/g$a;)V
    .locals 2

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoLoadedDone, clipVideoInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoubleExposureMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 482
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/g;->j:Z

    .line 483
    invoke-virtual {p1}, Lcom/oplus/camera/doubleexposure/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/g;->m:Ljava/lang/String;

    .line 484
    iput-object p1, p0, Lcom/oplus/camera/capmode/g;->o:Lcom/oplus/camera/doubleexposure/b;

    .line 485
    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->o:Lcom/oplus/camera/doubleexposure/b;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/doubleexposure/b;Lcom/oplus/camera/doubleexposure/g$a;)V

    return-void
.end method

.method public onVideoRecordingFail()V
    .locals 5

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoRecordingFail, mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoubleExposureMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    const/16 v2, 0xbb8

    const v3, 0x7f100131

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-ne v0, v1, :cond_1

    .line 525
    :cond_0
    invoke-direct {p0, v3, v2}, Lcom/oplus/camera/capmode/g;->a(II)V

    .line 526
    invoke-direct {p0, v3}, Lcom/oplus/camera/capmode/g;->c(I)V

    .line 527
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    const/4 v0, 0x0

    .line 528
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/g;->b(Z)V

    .line 531
    :cond_1
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 532
    invoke-direct {p0, v3, v2}, Lcom/oplus/camera/capmode/g;->a(II)V

    .line 533
    invoke-direct {p0, v3}, Lcom/oplus/camera/capmode/g;->c(I)V

    goto :goto_0

    .line 534
    :cond_2
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_REPLAY:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-ne v0, v1, :cond_4

    .line 535
    :cond_3
    invoke-direct {p0, v3, v2}, Lcom/oplus/camera/capmode/g;->a(II)V

    .line 536
    invoke-direct {p0, v3}, Lcom/oplus/camera/capmode/g;->c(I)V

    .line 537
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    .line 538
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const-string v3, "button_color_inside_red"

    const-string v4, "button_shape_ring_none"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 542
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/control/b;->b(Z)V

    .line 543
    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 544
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->o:Lcom/oplus/camera/doubleexposure/b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/doubleexposure/b;Lcom/oplus/camera/doubleexposure/g$a;)V

    .line 547
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->p()V

    .line 548
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->q()V

    .line 550
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/g$7;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/g$7;-><init>(Lcom/oplus/camera/capmode/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoRecordingFinish()V
    .locals 2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoRecordingFinish, mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoubleExposureMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PAUSED:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_REPLAY:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PAUSED:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-ne v0, v1, :cond_3

    .line 512
    :cond_1
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_REPLAY:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    .line 513
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->j()V

    goto :goto_1

    .line 495
    :cond_2
    :goto_0
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    .line 497
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/-$$Lambda$g$4opmBrVgitep2sfakXINTMxGH_s;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/-$$Lambda$g$4opmBrVgitep2sfakXINTMxGH_s;-><init>(Lcom/oplus/camera/capmode/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 506
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mVideoFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/capmode/g;->m:Ljava/lang/String;

    .line 507
    new-instance v0, Lcom/oplus/camera/doubleexposure/b;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/oplus/camera/doubleexposure/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/g;->o:Lcom/oplus/camera/doubleexposure/b;

    .line 508
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->o:Lcom/oplus/camera/doubleexposure/b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/doubleexposure/b;Lcom/oplus/camera/doubleexposure/g$a;)V

    .line 516
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->p()V

    .line 517
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->q()V

    return-void
.end method

.method public onVideoRecordingPause()Z
    .locals 2

    .line 963
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-ne v0, v1, :cond_0

    .line 964
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PAUSED:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    goto :goto_0

    .line 965
    :cond_0
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-ne v0, v1, :cond_1

    .line 966
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PAUSED:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    .line 969
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->onVideoRecordingPause()Z

    move-result p0

    return p0
.end method

.method public onVideoRecordingResume()Z
    .locals 2

    .line 974
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PAUSED:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-ne v0, v1, :cond_0

    .line 975
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    goto :goto_0

    .line 976
    :cond_0
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PAUSED:Lcom/oplus/camera/capmode/g$a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->g:Lcom/oplus/camera/capmode/g$a;

    if-ne v0, v1, :cond_1

    .line 977
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    .line 980
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->onVideoRecordingResume()Z

    move-result p0

    return p0
.end method

.method public onVideoShutterButtonClick()V
    .locals 3

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoShutterButtonClick, mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoubleExposureMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "onVideoShutterButtonClick, need wait hide blur"

    .line 677
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 682
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/g;->A:Z

    if-eqz v0, :cond_1

    const-string p0, "onVideoShutterButtonClick Cannot record while saving"

    .line 683
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 688
    :cond_1
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_REPLAY:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 689
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/g;->A:Z

    .line 690
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    .line 691
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->getRelativePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "relative_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/capmode/g;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/util/storage/a;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/g;->mCurrentVideoUri:Landroid/net/Uri;

    .line 695
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/capmode/-$$Lambda$g$MxAImdDgNZkqG68REGzO_fnvx2A;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/-$$Lambda$g$MxAImdDgNZkqG68REGzO_fnvx2A;-><init>(Lcom/oplus/camera/capmode/g;)V

    const-string v2, "save-video"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_3

    const-string v0, "pref_setting_key"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/g;->getSupportMenu(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 732
    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->e(Ljava/lang/String;)V

    .line 735
    :cond_3
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->onVideoShutterButtonClick()V

    .line 738
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/g;->mbLowBatteryDisabled:Z

    if-nez v0, :cond_4

    .line 739
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->p()V

    .line 740
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->q()V

    :cond_4
    const/4 v0, 0x0

    .line 743
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/g;->B:Z

    return-void
.end method

.method public restoreDefaultMode(Z)V
    .locals 2

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreDefaultMode, isNeedKeepCurrentMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoubleExposureMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->restoreDefaultMode(Z)V

    .line 1213
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aV()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/capmode/g;->w:Z

    .line 1214
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->x:Z

    .line 1215
    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    .line 1216
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    .line 1217
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/g;->x:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 1215
    :goto_1
    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->M(Z)V

    return-void
.end method

.method public revertOp()V
    .locals 3

    .line 809
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    const-string v2, "DoubleExposureMode"

    if-ne v0, v1, :cond_0

    const-string p0, "revertOp, not a valid state"

    .line 810
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 815
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "revertOp, need wait hide blur"

    .line 816
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "revertOp"

    .line 821
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->g()V

    return-void
.end method

.method public setDisplayOnLock(Z)V
    .locals 0

    .line 1041
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->setDisplayOnLock(Z)V

    .line 1043
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/g;->mbDisplayOnLock:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/g;->u:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1044
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/g;->startLoadVideo(Z)V

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 1297
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1298
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 1301
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/e;->setOrientation(I)V

    return-void
.end method

.method public shouldHideBlur()Z
    .locals 2

    .line 1544
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v0

    sget-object v1, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object p0

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_REPLAY:Lcom/oplus/camera/capmode/g$a;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1546
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldHideBlur, shouldHideBlur: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoubleExposureMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public startLoadVideo(Z)V
    .locals 6

    .line 1005
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/g;->mbDisplayOnLock:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1006
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/g;->u:Z

    .line 1007
    invoke-static {}, Lcom/oplus/camera/util/Util;->aO()Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1012
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->u:Z

    .line 1013
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/g;->j:Z

    .line 1015
    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->initVideoFileDescriptor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1016
    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->s:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const-wide/16 v4, 0xc8

    .line 1017
    invoke-static {v1, v2, v3, v4, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_1
    const-string v1, "68"

    .line 1021
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/g;->b(Ljava/lang/String;)V

    .line 1022
    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/capmode/g;->mVideoFilename:Ljava/lang/String;

    const-string v3, "PREF_VIDEO_CLIP_SAVE_PATH"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1023
    iget-object v1, p0, Lcom/oplus/camera/capmode/g;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_double_exposure_tips"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1024
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "image/*"

    .line 1025
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    invoke-static {}, Lcom/oplus/camera/util/Util;->aP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "from-Camera-For-Limit"

    .line 1027
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "limit_type"

    .line 1028
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "animation_type"

    .line 1031
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1032
    iget-object p1, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    const/16 v0, 0x2b67

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1033
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mActivity:Landroid/app/Activity;

    const p1, 0x7f010096

    const v0, 0x7f010044

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 1035
    :cond_2
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/g;->j:Z

    :goto_0
    return-void
.end method

.method protected stopShortVideoRecording()V
    .locals 2

    .line 1278
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->isVideoRecordStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->onVideoShutterButtonClick()V

    goto :goto_0

    .line 1281
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/g;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1282
    iget-object p0, p0, Lcom/oplus/camera/capmode/g;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method protected stopVideoRecordThread()V
    .locals 2

    .line 464
    invoke-super {p0}, Lcom/oplus/camera/capmode/e;->stopVideoRecordThread()V

    .line 466
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->isRecordFileValid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 467
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PAUSED:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_RECORDING:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PAUSED:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 470
    :cond_1
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_REPLAY:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    goto :goto_1

    .line 468
    :cond_2
    :goto_0
    sget-object v0, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g$a;)V

    .line 473
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->p()V

    .line 474
    invoke-direct {p0}, Lcom/oplus/camera/capmode/g;->q()V

    :cond_4
    return-void
.end method
