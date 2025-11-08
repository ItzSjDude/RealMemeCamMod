.class public Lcom/oplus/camera/AndroidTestAdapter;
.super Ljava/lang/Object;
.source "AndroidTestAdapter.java"


# static fields
.field private static final EXTEND_EXPOSURE_COMPENSATION_STEPS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "AndroidTestAdapter"


# instance fields
.field private SUFFIX_3D:Ljava/lang/String;

.field private SUFFIX_MAKEUP:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mCameraManager:Lcom/oplus/camera/CameraManager;

.field protected mCameraUIListener:Lcom/oplus/camera/ui/CameraUIListener;

.field private volatile mCameraUIManager:Lcom/oplus/camera/ui/d;

.field private mModeManager:Lcom/oplus/camera/capmode/ModeManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/CameraManager;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mActivity:Landroid/app/Activity;

    .line 40
    iput-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mModeManager:Lcom/oplus/camera/capmode/ModeManager;

    .line 42
    iput-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraUIManager:Lcom/oplus/camera/ui/d;

    .line 43
    iput-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraUIListener:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v0, "makeup"

    .line 44
    iput-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->SUFFIX_MAKEUP:Ljava/lang/String;

    const-string v0, "3d"

    .line 45
    iput-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->SUFFIX_3D:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/oplus/camera/AndroidTestAdapter;->mActivity:Landroid/app/Activity;

    .line 49
    iput-object p2, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    .line 50
    invoke-direct {p0}, Lcom/oplus/camera/AndroidTestAdapter;->getCameraUIManager()V

    .line 51
    invoke-direct {p0}, Lcom/oplus/camera/AndroidTestAdapter;->getCameraUIListener()V

    .line 52
    invoke-direct {p0}, Lcom/oplus/camera/AndroidTestAdapter;->getModeManager()V

    return-void
.end method

.method static synthetic access$000(Lcom/oplus/camera/AndroidTestAdapter;)Landroid/app/Activity;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oplus/camera/AndroidTestAdapter;)Lcom/oplus/camera/CameraManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oplus/camera/AndroidTestAdapter;)Lcom/oplus/camera/ui/d;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraUIManager:Lcom/oplus/camera/ui/d;

    return-object p0
.end method

.method private getCameraUIListener()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "mCameraUIListener"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 79
    iget-object v1, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/CameraUIListener;

    iput-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraUIListener:Lcom/oplus/camera/ui/CameraUIListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getCameraUIManager()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "mCameraUIManager"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 66
    iget-object v1, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/d;

    iput-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraUIManager:Lcom/oplus/camera/ui/d;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getCurrentModeInstance()Lcom/oplus/camera/capmode/BaseMode;
    .locals 2

    .line 99
    const-class v0, Lcom/oplus/camera/capmode/ModeManager;

    :try_start_0
    const-string v1, "mCurrentMode"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 106
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mModeManager:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/capmode/BaseMode;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getModeManager()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "mModeManager"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 92
    iget-object v1, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/capmode/ModeManager;

    iput-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mModeManager:Lcom/oplus/camera/capmode/ModeManager;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public blurModeChanged()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/AndroidTestAdapter$6;

    invoke-direct {v1, p0}, Lcom/oplus/camera/AndroidTestAdapter$6;-><init>(Lcom/oplus/camera/AndroidTestAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getCurrentFilter()Ljava/lang/String;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mModeManager:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentMakeupIndex()I
    .locals 5

    .line 518
    invoke-direct {p0}, Lcom/oplus/camera/AndroidTestAdapter;->getCurrentModeInstance()Lcom/oplus/camera/capmode/BaseMode;

    move-result-object v0

    .line 519
    const-class v1, Lcom/oplus/camera/capmode/BaseMode;

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "getCurrMakeupIndex"

    .line 523
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    .line 524
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 525
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    const-string v3, "key_support_makeup"

    invoke-virtual {p0, v3}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 526
    new-array p0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 529
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_0
    :goto_0
    return v2
.end method

.method public getCurrentZoom()F
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aO()F

    move-result p0

    return p0
.end method

.method protected getSupportCustomFaceBeautyKeys()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    invoke-direct {p0}, Lcom/oplus/camera/AndroidTestAdapter;->getCurrentModeInstance()Lcom/oplus/camera/capmode/BaseMode;

    move-result-object v1

    .line 460
    const-class v2, Lcom/oplus/camera/capmode/BaseMode;

    :try_start_0
    const-string v3, "getCustomBeautyKeys"

    const/4 v4, 0x0

    .line 464
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    .line 465
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 467
    iget-object v3, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    const-string v5, "func_face_beauty_custom"

    invoke-virtual {v3, v5}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 468
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 471
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 472
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 474
    iget-object v2, p0, Lcom/oplus/camera/AndroidTestAdapter;->mModeManager:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->bL()Z

    move-result v2

    if-nez v2, :cond_2

    .line 475
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 476
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 478
    iget-object v3, p0, Lcom/oplus/camera/AndroidTestAdapter;->SUFFIX_MAKEUP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oplus/camera/AndroidTestAdapter;->SUFFIX_3D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 486
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method protected getSupportFilterList(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    invoke-direct {p0}, Lcom/oplus/camera/AndroidTestAdapter;->getCurrentModeInstance()Lcom/oplus/camera/capmode/BaseMode;

    move-result-object v1

    .line 413
    const-class v2, Lcom/oplus/camera/capmode/BaseMode;

    :try_start_0
    const-string v3, "getFilterTypeList"

    const/4 v4, 0x1

    .line 417
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 418
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 419
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    const-string v3, "pref_filter_process_key"

    invoke-virtual {p0, v3}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 420
    new-array p0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v7

    invoke-virtual {v2, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    .line 422
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 426
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected getSupportMakeupKeys()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 495
    invoke-direct {p0}, Lcom/oplus/camera/AndroidTestAdapter;->getCurrentModeInstance()Lcom/oplus/camera/capmode/BaseMode;

    move-result-object v1

    .line 496
    const-class v2, Lcom/oplus/camera/capmode/BaseMode;

    :try_start_0
    const-string v3, "getMakeupKeys"

    const/4 v4, 0x0

    .line 500
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    .line 501
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 502
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    const-string v3, "key_support_makeup"

    invoke-virtual {p0, v3}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 503
    new-array p0, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 505
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 509
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getVideoFps()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09029a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    const-string v2, "mSubSettingView"

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 197
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getMenuList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 201
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_video_fps_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->Y()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/menu/e;

    .line 203
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 209
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public getZoomRange()[F
    .locals 5

    const-string v0, "pref_zoom_key"

    .line 395
    invoke-virtual {p0, v0}, Lcom/oplus/camera/AndroidTestAdapter;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 396
    new-array p0, v2, [F

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p0, v1

    return-object p0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->getMinZoomValue()F

    move-result v0

    .line 400
    iget-object v3, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v3}, Lcom/oplus/camera/CameraManager;->aS()F

    move-result v3

    .line 402
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    const-string v4, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {p0, v4}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "0.6"

    .line 403
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    :cond_1
    const/4 p0, 0x2

    .line 406
    new-array p0, p0, [F

    aput v0, p0, v1

    aput v3, p0, v2

    return-object p0
.end method

.method protected isFaceBeautyOpen()Z
    .locals 4

    .line 442
    invoke-direct {p0}, Lcom/oplus/camera/AndroidTestAdapter;->getCurrentModeInstance()Lcom/oplus/camera/capmode/BaseMode;

    move-result-object p0

    const/4 v0, 0x0

    .line 446
    :try_start_0
    const-class v1, Lcom/oplus/camera/capmode/BaseMode;

    const-string v2, "isFaceBeautyOpen"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 447
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 448
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 450
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method protected isSupportCommonFaceBeauty()Z
    .locals 1

    .line 437
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    const-string v0, "func_face_beauty_common"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onClickThumbnail()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/AndroidTestAdapter$5;

    invoke-direct {v1, p0}, Lcom/oplus/camera/AndroidTestAdapter$5;-><init>(Lcom/oplus/camera/AndroidTestAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSwitchCameraButtonClick()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 127
    new-instance v1, Lcom/oplus/camera/AndroidTestAdapter$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/AndroidTestAdapter$4;-><init>(Lcom/oplus/camera/AndroidTestAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onVideoPauseResumeClick()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 116
    new-instance v1, Lcom/oplus/camera/AndroidTestAdapter$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/AndroidTestAdapter$1;-><init>(Lcom/oplus/camera/AndroidTestAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public processSlowVideoResolutionChange(Lcom/oplus/camera/ComboPreferences;Ljava/lang/String;)V
    .locals 1

    .line 137
    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_slow_video_size_key"

    .line 138
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "video_size_1080p"

    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "pref_slow_video_rear_fps_key"

    if-eqz p1, :cond_0

    const-string p1, "com.oplus.slow.video.1080p.default.value"

    .line 142
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p1

    .line 141
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    const-string p1, "video_size_720p"

    .line 143
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.oplus.slow.video.720p.default.value"

    .line 145
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p1

    .line 144
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 148
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public reloadSingleCameraSettingMenu(Ljava/lang/String;)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/AndroidTestAdapter$7;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/AndroidTestAdapter$7;-><init>(Lcom/oplus/camera/AndroidTestAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetMovieParameter()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/AndroidTestAdapter$9;

    invoke-direct {v1, p0}, Lcom/oplus/camera/AndroidTestAdapter$9;-><init>(Lcom/oplus/camera/AndroidTestAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetProfessionalParameter()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/AndroidTestAdapter$11;

    invoke-direct {v1, p0}, Lcom/oplus/camera/AndroidTestAdapter$11;-><init>(Lcom/oplus/camera/AndroidTestAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHEVCVideoFormat(Lcom/oplus/camera/ComboPreferences;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const-string p0, "H265"

    goto :goto_0

    :cond_0
    const-string p0, "H264"

    .line 351
    :goto_0
    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "off"

    if-eqz p2, :cond_1

    const-string v1, "on"

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    const-string v2, "pref_hevc_video_key"

    .line 352
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_video_codec_key"

    .line 353
    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p0, "com.oplus.feature.video.3hdr.support"

    .line 355
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez p2, :cond_2

    const-string p0, "key_video_hdr"

    .line 356
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 359
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMovieParameter(ILjava/lang/String;I)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/AndroidTestAdapter$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oplus/camera/AndroidTestAdapter$8;-><init>(Lcom/oplus/camera/AndroidTestAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setProfessionalParameter(ILjava/lang/String;I)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/AndroidTestAdapter$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oplus/camera/AndroidTestAdapter$10;-><init>(Lcom/oplus/camera/AndroidTestAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setXpanEvWheelValue(I)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/AndroidTestAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/AndroidTestAdapter$2;-><init>(Lcom/oplus/camera/AndroidTestAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setXpanZoom(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/AndroidTestAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/AndroidTestAdapter$3;-><init>(Lcom/oplus/camera/AndroidTestAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public settingHeifFormat(Lcom/oplus/camera/ComboPreferences;Z)V
    .locals 6

    .line 152
    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "on"

    const-string v1, "off"

    if-eqz p2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string v3, "pref_heif_format_key"

    .line 153
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_10bits_heic_encode_key"

    .line 155
    invoke-virtual {p1, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "HEIF"

    const-string v3, "pref_photo_codec_click_key"

    const-string v4, "JPEG"

    const-string v5, "pref_photo_codec_key"

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v4

    .line 159
    :goto_1
    invoke-interface {p0, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 163
    invoke-interface {p0, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 166
    :cond_3
    invoke-interface {p0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    :goto_2
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public settingNightStarBurst(Lcom/oplus/camera/ComboPreferences;Z)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    const-string v1, "pref_night_starburst_mode"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string p2, "on"

    goto :goto_0

    :cond_0
    const-string p2, "off"

    :goto_0
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 289
    invoke-virtual {p0, v1}, Lcom/oplus/camera/AndroidTestAdapter;->reloadSingleCameraSettingMenu(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public settingNightTripod(Lcom/oplus/camera/ComboPreferences;Z)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mCameraManager:Lcom/oplus/camera/CameraManager;

    const-string v1, "pref_night_tripod_mode_key"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string p2, "on"

    goto :goto_0

    :cond_0
    const-string p2, "off"

    :goto_0
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 282
    invoke-virtual {p0, v1}, Lcom/oplus/camera/AndroidTestAdapter;->reloadSingleCameraSettingMenu(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public settingSelfieMirror(Lcom/oplus/camera/ComboPreferences;Z)V
    .locals 4

    .line 248
    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "on"

    const-string v1, "pref_mirror_key"

    const-string v2, "off"

    const-string v3, "pref_mirror_setting_key"

    if-eqz p2, :cond_0

    .line 251
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 254
    :cond_0
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    invoke-virtual {p0}, Lcom/oplus/camera/AndroidTestAdapter;->blurModeChanged()V

    return-void
.end method

.method protected settingVideoFps(Lcom/oplus/camera/ComboPreferences;I)Z
    .locals 4

    const/4 p0, 0x0

    const-string v0, "settingVideoSize, not support fps: "

    const-string v1, "AndroidTestAdapter"

    const/16 v2, 0x78

    if-ne v2, p2, :cond_0

    const-string v2, "com.oplus.feature.video.4k.120fps.support"

    .line 217
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_0
    const/16 v2, 0x3c

    if-ne v2, p2, :cond_1

    const-string v2, "pref_video_size_key"

    const-string v3, "video_size_1080p"

    .line 224
    invoke-virtual {p1, v2, v3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video_size_4kuhd"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.oplus.feature.video.4k.60fps.support"

    .line 225
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 231
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pref_video_fps_key"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method public settingVideoSize(Lcom/oplus/camera/ComboPreferences;Ljava/lang/String;I)Z
    .locals 1

    .line 176
    invoke-static {p2, p3}, Lcom/oplus/camera/util/Util;->b(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "settingVideoSize, not support size: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AndroidTestAdapter"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 182
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/AndroidTestAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0, p3}, Lcom/oplus/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 183
    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_video_size_key"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method
