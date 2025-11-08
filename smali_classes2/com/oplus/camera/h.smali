.class public Lcom/oplus/camera/h;
.super Ljava/lang/Object;
.source "CameraPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/h$a;,
        Lcom/oplus/camera/h$b;,
        Lcom/oplus/camera/h$e;,
        Lcom/oplus/camera/h$c;,
        Lcom/oplus/camera/h$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/oplus/camera/ComboPreferences;

.field private d:Lcom/oplus/camera/i;

.field private e:Lcom/oplus/camera/h$c;

.field private f:Lcom/oplus/camera/h$b;

.field private g:Lcom/oplus/camera/h$a;

.field private h:Landroidx/appcompat/app/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 58
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/h;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    .line 67
    iput-object v0, p0, Lcom/oplus/camera/h;->d:Lcom/oplus/camera/i;

    .line 68
    iput-object v0, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    .line 69
    iput-object v0, p0, Lcom/oplus/camera/h;->f:Lcom/oplus/camera/h$b;

    .line 70
    iput-object v0, p0, Lcom/oplus/camera/h;->g:Lcom/oplus/camera/h$a;

    .line 71
    iput-object v0, p0, Lcom/oplus/camera/h;->h:Landroidx/appcompat/app/f;

    .line 74
    iput-object p1, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    .line 75
    iput-object p2, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/h;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/h;Landroidx/appcompat/app/f;)Landroidx/appcompat/app/f;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/oplus/camera/h;->h:Landroidx/appcompat/app/f;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/h;Lcom/oplus/camera/h$c;)Lcom/oplus/camera/h$c;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    return-object p1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    const-string p0, "start_oplus_camera"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    const-string p0, "video_record"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne v0, p0, :cond_2

    const-string p0, "setting_location"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne v0, p0, :cond_3

    const-string p0, "setting_location_slogan"

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "android.permission.CAMERA"

    .line 342
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1002a0

    .line 343
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 344
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 345
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "android.permission.READ_PHONE_STATE"

    .line 347
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f1002a3

    .line 348
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "android.permission.RECORD_AUDIO"

    .line 349
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f1002a2

    .line 350
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 351
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    .line 352
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, ""

    return-object p0

    :cond_5
    :goto_0
    const p0, 0x7f1002a1

    .line 353
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    const p0, 0x7f1002a4

    .line 346
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    const-string p0, "on"

    return-object p0

    .line 698
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "off"

    return-object p0

    :cond_1
    const-string p0, "disagree_stop_ask"

    return-object p0
.end method

.method private a([Ljava/lang/String;[I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 574
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 576
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 577
    aget v1, p2, v0

    if-eqz v1, :cond_0

    .line 578
    aget-object v1, p1, v0

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static a(Landroid/app/Activity;ILjava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 659
    new-instance v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;

    const-string v1, "agreement"

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 660
    invoke-static {p1}, Lcom/oplus/camera/h;->a(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mTiming:Ljava/lang/String;

    .line 661
    iput-object p3, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mResult:Ljava/lang/String;

    const/4 p0, 0x0

    .line 663
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_6

    .line 664
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "android.permission.CAMERA"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    .line 665
    iput-boolean p3, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mbCamera:Z

    goto :goto_2

    .line 666
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 667
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 669
    :cond_1
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 670
    iput-boolean p3, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mbImei:Z

    goto :goto_2

    .line 671
    :cond_2
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 672
    iput-boolean p3, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mbRecorder:Z

    goto :goto_2

    .line 673
    :cond_3
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 674
    iput-boolean p3, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mbLocation:Z

    goto :goto_2

    .line 668
    :cond_4
    :goto_1
    iput-boolean p3, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mbStorage:Z

    :cond_5
    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 678
    :cond_6
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->report()V

    return-void
.end method

.method public static a(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 3

    .line 637
    new-instance v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;

    const-string v1, "permission"

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 638
    invoke-static {p1}, Lcom/oplus/camera/h;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mTiming:Ljava/lang/String;

    const/4 p1, 0x0

    .line 640
    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_6

    .line 641
    aget-object v1, p2, p1

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    aget-object v1, p2, p1

    aget v2, p3, p1

    invoke-static {p0, v1, v2}, Lcom/oplus/camera/h;->a(Landroid/app/Activity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mCameraPermission:Ljava/lang/String;

    goto :goto_2

    .line 643
    :cond_0
    aget-object v1, p2, p1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    aget-object v1, p2, p1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 644
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 646
    :cond_1
    aget-object v1, p2, p1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 647
    aget-object v1, p2, p1

    aget v2, p3, p1

    invoke-static {p0, v1, v2}, Lcom/oplus/camera/h;->a(Landroid/app/Activity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mImeiPermission:Ljava/lang/String;

    goto :goto_2

    .line 648
    :cond_2
    aget-object v1, p2, p1

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 649
    aget-object v1, p2, p1

    aget v2, p3, p1

    invoke-static {p0, v1, v2}, Lcom/oplus/camera/h;->a(Landroid/app/Activity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mRecorderPermission:Ljava/lang/String;

    goto :goto_2

    .line 650
    :cond_3
    aget-object v1, p2, p1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 651
    aget-object v1, p2, p1

    aget v2, p3, p1

    invoke-static {p0, v1, v2}, Lcom/oplus/camera/h;->a(Landroid/app/Activity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mLocationPermission:Ljava/lang/String;

    goto :goto_2

    .line 645
    :cond_4
    :goto_1
    aget-object v1, p2, p1

    aget v2, p3, p1

    invoke-static {p0, v1, v2}, Lcom/oplus/camera/h;->a(Landroid/app/Activity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mStoragePermission:Ljava/lang/String;

    :cond_5
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 655
    :cond_6
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->report()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 706
    new-instance v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;

    const-string v1, "statement"

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 707
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mStatementType:Ljava/lang/String;

    .line 708
    iput-object p2, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mResult:Ljava/lang/String;

    .line 709
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->report()V

    return-void
.end method

.method private a(Ljava/util/List;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 243
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {v1}, Lcom/oplus/camera/h$c;->c()V

    :cond_1
    const v1, 0x7f1002aa

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v2, v0, :cond_2

    .line 257
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    iget-object v5, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v5, v0}, Lcom/oplus/camera/h;->b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-virtual {v5, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 259
    iget-object v2, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    invoke-direct {p0, v2, v0}, Lcom/oplus/camera/h;->a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-ne v5, v0, :cond_3

    .line 261
    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    new-array v2, v2, [Ljava/lang/Object;

    const v5, 0x7f1002af

    .line 264
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 265
    iget-object v0, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    const v2, 0x7f1002a4

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_3
    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    invoke-interface {p1, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 272
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 273
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 274
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 277
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    const v1, 0x7f1002a8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v3

    .line 280
    :goto_0
    new-instance v2, Lcom/coui/appcompat/dialog/app/b$a;

    iget-object v5, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    invoke-direct {v2, v5}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/oplus/camera/h$2;

    invoke-direct {v5, p0}, Lcom/oplus/camera/h$2;-><init>(Lcom/oplus/camera/h;)V

    .line 281
    invoke-virtual {v2, v5}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v2

    .line 291
    invoke-virtual {v2, v1}, Lcom/coui/appcompat/dialog/app/b$a;->a(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v1

    const v2, 0x7f1002a9

    .line 292
    invoke-virtual {v1, v2, p2}, Lcom/coui/appcompat/dialog/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v1

    .line 293
    invoke-virtual {v1, v4}, Lcom/coui/appcompat/dialog/app/b$a;->a(Z)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v1

    .line 295
    invoke-direct {p0, p1}, Lcom/oplus/camera/h;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f1002a6

    .line 296
    invoke-virtual {v1, v2, p2}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    goto :goto_1

    :cond_6
    const v2, 0x7f1002a5

    .line 298
    invoke-virtual {v1, v2, p2}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    :goto_1
    if-nez v0, :cond_8

    .line 302
    iget-object v0, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0130

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0902bc

    .line 303
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 306
    iget-object v6, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0c0131

    invoke-virtual {v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v7, 0x7f0902be

    .line 308
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0902c0

    .line 309
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 310
    iget-object v9, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    invoke-direct {p0, v9, v5}, Lcom/oplus/camera/h;->b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v7, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    invoke-direct {p0, v7, v5}, Lcom/oplus/camera/h;->c(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 315
    iget-object v7, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070948

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 316
    invoke-virtual {v2, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 319
    :cond_7
    invoke-virtual {v1, v0}, Lcom/coui/appcompat/dialog/app/b$a;->b(Landroid/view/View;)Lcom/coui/appcompat/dialog/app/b$a;

    goto :goto_3

    .line 321
    :cond_8
    invoke-virtual {v1, v0}, Lcom/coui/appcompat/dialog/app/b$a;->b(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/b$a;

    .line 324
    :goto_3
    new-instance v0, Lcom/oplus/camera/h$c;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/oplus/camera/h$c;-><init>(Lcom/oplus/camera/h;Lcom/coui/appcompat/dialog/app/b;Ljava/util/List;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    .line 326
    iget-object p1, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_9

    .line 327
    iget-object p0, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    invoke-virtual {p0}, Lcom/oplus/camera/h$c;->b()V

    :cond_9
    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 206
    :cond_0
    new-instance v0, Lcom/oplus/camera/h$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/h$1;-><init>(Lcom/oplus/camera/h;[Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/oplus/camera/h;->h:Landroidx/appcompat/app/f;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/app/f;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/oplus/camera/h;->h:Landroidx/appcompat/app/f;

    invoke-virtual {v1}, Landroidx/appcompat/app/f;->dismiss()V

    .line 238
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    invoke-static {p0, p1, v0}, Lcom/oplus/camera/util/g;->a(Landroid/app/Activity;[Ljava/lang/String;Lcom/oplus/camera/util/g$b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.CAMERA"

    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 332
    sget-object p0, Lcom/oplus/camera/h;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 333
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "android.permission.CAMERA"

    .line 360
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1002ab

    .line 361
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 362
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 363
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "android.permission.READ_PHONE_STATE"

    .line 365
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f1002ae

    .line 366
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "android.permission.RECORD_AUDIO"

    .line 367
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f1002ad

    .line 368
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 369
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    .line 370
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, ""

    return-object p0

    :cond_5
    :goto_0
    const p0, 0x7f1002ac

    .line 371
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    const p0, 0x7f1002af

    .line 364
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/h;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/oplus/camera/h;->m()V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/h;)Lcom/oplus/camera/h$a;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/h;->g:Lcom/oplus/camera/h$a;

    return-object p0
.end method

.method private c(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "android.permission.CAMERA"

    .line 378
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1002b0

    .line 379
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 380
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 381
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "android.permission.READ_PHONE_STATE"

    .line 383
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f1002b3

    .line 384
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "android.permission.RECORD_AUDIO"

    .line 385
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f1002b2

    .line 386
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 387
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    .line 388
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, ""

    return-object p0

    :cond_5
    :goto_0
    const p0, 0x7f1002b1

    .line 389
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    const p0, 0x7f1002b4

    .line 382
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/h;)Lcom/oplus/camera/ComboPreferences;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/h;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/oplus/camera/h;->j()V

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/h;)Lcom/oplus/camera/h$b;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/h;->f:Lcom/oplus/camera/h$b;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/h;)Lcom/oplus/camera/h$c;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    return-object p0
.end method

.method private i()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->x(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/h;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    sget-object v4, Lcom/oplus/camera/h;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_0
    sget-object v1, Lcom/oplus/camera/h;->a:Ljava/util/List;

    .line 150
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 151
    iget-object v5, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    .line 157
    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    .line 158
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private j()V
    .locals 6

    .line 165
    invoke-direct {p0}, Lcom/oplus/camera/h;->i()Ljava/util/List;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "pref_permission_denied"

    const-string v3, "key_permission_dialog_displayed"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    iget-object v0, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 171
    iget-object v0, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oplus/camera/h$c;->f()Z

    move-result v0

    if-nez v0, :cond_5

    .line 172
    iget-object p0, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    invoke-virtual {p0}, Lcom/oplus/camera/h$c;->c()V

    goto :goto_1

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 178
    iget-object v3, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v3, v2, v4}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    new-instance v1, Lcom/oplus/camera/h$d;

    .line 181
    invoke-direct {p0, v0}, Lcom/oplus/camera/h;->a(Ljava/util/List;)Z

    move-result v2

    invoke-direct {v1, p0, v2, v5, v0}, Lcom/oplus/camera/h$d;-><init>(Lcom/oplus/camera/h;ZILjava/util/List;)V

    .line 180
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/h;->a(Ljava/util/List;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 183
    :cond_1
    invoke-direct {p0, v1}, Lcom/oplus/camera/h;->a([Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/h;->g:Lcom/oplus/camera/h$a;

    if-eqz v0, :cond_3

    .line 187
    invoke-interface {v0, v5}, Lcom/oplus/camera/h$a;->b(Z)V

    .line 190
    :cond_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-nez v0, :cond_4

    .line 191
    iget-object p0, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    invoke-virtual {p0, v1, v5}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 193
    :cond_4
    invoke-direct {p0, v1}, Lcom/oplus/camera/h;->a([Ljava/lang/String;)V

    .line 196
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestPermissions, permissions: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraPermission"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private k()Z
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/oplus/camera/h;->d:Lcom/oplus/camera/i;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lcom/oplus/camera/i;

    iget-object v1, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/h$3;

    invoke-direct {v2, p0}, Lcom/oplus/camera/h$3;-><init>(Lcom/oplus/camera/h;)V

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/i;-><init>(Landroid/app/Activity;Lcom/oplus/camera/i$a;)V

    iput-object v0, p0, Lcom/oplus/camera/h;->d:Lcom/oplus/camera/i;

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/h;->d:Lcom/oplus/camera/i;

    iget-object v1, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/i;->a(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 470
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/b;->a()Lcom/oplus/camera/ui/modepanel/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/b;->b()V

    .line 472
    iget-object p0, p0, Lcom/oplus/camera/h;->g:Lcom/oplus/camera/h$a;

    invoke-interface {p0, v0}, Lcom/oplus/camera/h$a;->a(Z)V

    .line 474
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPrivacyPolicyAlertDialog, isShow: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CameraPermission"

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private l()Z
    .locals 4

    .line 549
    iget-object v0, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 553
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    const v3, 0x7f100221

    .line 554
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_recordlocation_key"

    .line 553
    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    iget-object p0, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    .line 555
    invoke-static {v0, p0}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private m()V
    .locals 4

    .line 559
    iget-object v0, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    if-nez v0, :cond_0

    return-void

    .line 563
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 565
    iget-object v1, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    iget-object v2, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    const v3, 0x7f100221

    .line 566
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_recordlocation_key"

    .line 565
    invoke-virtual {v1, v3, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "off"

    .line 567
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    iget-object p0, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    invoke-static {v0, p0}, Lcom/oplus/camera/c;->b(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/oplus/camera/h$c;->c()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    const-string v1, "pref_permission_denied"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ComboPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object p0, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public a(I[Ljava/lang/String;[ILcom/oplus/camera/h$e;)V
    .locals 5

    .line 481
    iget-object v0, p0, Lcom/oplus/camera/h;->g:Lcom/oplus/camera/h$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 482
    invoke-interface {v0, v1}, Lcom/oplus/camera/h$a;->b(Z)V

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 487
    array-length v2, p2

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    array-length v2, p3

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    const-string v2, "CameraPermission"

    const-string v3, "onRequestPermissionsResult, requestCancelled!"

    .line 490
    invoke-static {v2, v3}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 493
    :goto_1
    iget-object v3, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v3}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "key_permission_dialog_displayed"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eq p1, v0, :cond_6

    const/4 p4, 0x2

    if-eq p1, p4, :cond_3

    goto/16 :goto_5

    :cond_3
    if-eqz v2, :cond_4

    goto/16 :goto_5

    :cond_4
    move p1, v1

    .line 529
    :goto_2
    array-length v0, p2

    if-ge p1, v0, :cond_c

    .line 530
    aget-object v0, p2, p1

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 531
    aget p1, p3, p1

    if-eqz p1, :cond_c

    .line 532
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/oplus/camera/h$d;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p3

    .line 534
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p0, v1, p4, p3}, Lcom/oplus/camera/h$d;-><init>(Lcom/oplus/camera/h;ZILjava/util/List;)V

    .line 532
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/h;->a(Ljava/util/List;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_5

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 497
    :cond_6
    invoke-interface {p4}, Lcom/oplus/camera/h$e;->a()V

    if-nez v2, :cond_b

    .line 499
    invoke-direct {p0, p2, p3}, Lcom/oplus/camera/h;->a([Ljava/lang/String;[I)Ljava/util/List;

    move-result-object p1

    .line 500
    iget-object v2, p0, Lcom/oplus/camera/h;->c:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    move v3, v0

    goto :goto_3

    :cond_7
    move v3, v1

    :goto_3
    const-string v4, "pref_permission_denied"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 502
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 503
    new-instance v2, Lcom/oplus/camera/h$d;

    .line 504
    invoke-direct {p0, p1}, Lcom/oplus/camera/h;->a(Ljava/util/List;)Z

    move-result v3

    invoke-direct {v2, p0, v3, v0, p1}, Lcom/oplus/camera/h$d;-><init>(Lcom/oplus/camera/h;ZILjava/util/List;)V

    .line 503
    invoke-direct {p0, p1, v2}, Lcom/oplus/camera/h;->a(Ljava/util/List;Landroid/content/DialogInterface$OnClickListener;)V

    .line 507
    :cond_8
    :goto_4
    array-length p1, p2

    if-ge v1, p1, :cond_c

    .line 508
    aget-object p1, p2, v1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 509
    aget p1, p3, v1

    if-eqz p1, :cond_9

    .line 510
    invoke-direct {p0}, Lcom/oplus/camera/h;->m()V

    goto :goto_5

    .line 512
    :cond_9
    invoke-interface {p4}, Lcom/oplus/camera/h$e;->b()V

    goto :goto_5

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 519
    :cond_b
    invoke-direct {p0}, Lcom/oplus/camera/h;->m()V

    :cond_c
    :goto_5
    return-void
.end method

.method public a(Lcom/oplus/camera/h$a;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/oplus/camera/h;->g:Lcom/oplus/camera/h$a;

    return-void
.end method

.method public a(Lcom/oplus/camera/h$b;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/oplus/camera/h;->f:Lcom/oplus/camera/h$b;

    return-void
.end method

.method public b()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/h;->d:Lcom/oplus/camera/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/oplus/camera/i;->b()V

    .line 91
    iput-object v1, p0, Lcom/oplus/camera/h;->d:Lcom/oplus/camera/i;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/oplus/camera/h$c;->c()V

    .line 96
    iput-object v1, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/oplus/camera/h$c;->c()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/oplus/camera/h;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/h$c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/h;->j()V

    :cond_1
    return-void
.end method

.method public e()Z
    .locals 3

    .line 122
    sget-object v0, Lcom/oplus/camera/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public f()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/oplus/camera/h;->b:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/oplus/camera/h;->j()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/oplus/camera/h;->d:Lcom/oplus/camera/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/oplus/camera/h;->d:Lcom/oplus/camera/i;

    invoke-virtual {v0}, Lcom/oplus/camera/i;->b()V

    const/4 v0, 0x0

    .line 398
    iput-object v0, p0, Lcom/oplus/camera/h;->d:Lcom/oplus/camera/i;

    .line 399
    invoke-direct {p0}, Lcom/oplus/camera/h;->k()Z

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/h$c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    invoke-virtual {v0}, Lcom/oplus/camera/h$c;->d()Ljava/util/List;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    invoke-virtual {v1}, Lcom/oplus/camera/h$c;->e()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 407
    iget-object v2, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    invoke-virtual {v2}, Lcom/oplus/camera/h$c;->c()V

    const/4 v2, 0x0

    .line 408
    iput-object v2, p0, Lcom/oplus/camera/h;->e:Lcom/oplus/camera/h$c;

    .line 409
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/h;->a(Ljava/util/List;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/h;->h:Landroidx/appcompat/app/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    invoke-direct {p0}, Lcom/oplus/camera/h;->j()V

    :cond_1
    :goto_0
    return-void
.end method
