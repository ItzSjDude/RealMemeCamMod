.class public Lcom/oplus/camera/e/a;
.super Ljava/lang/Object;
.source "CameraCharacteristicsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/e/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/camera/e/h;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/oplus/camera/e/a$a;

.field private static f:Lcom/oplus/camera/e/a$a;

.field private static final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/camera/e/a;->a:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/camera/e/a;->b:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/camera/e/a;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 77
    sput-object v0, Lcom/oplus/camera/e/a;->e:Lcom/oplus/camera/e/a$a;

    .line 78
    sput-object v0, Lcom/oplus/camera/e/a;->f:Lcom/oplus/camera/e/a$a;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/camera/e/a;->g:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/oplus/camera/e/h;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->b()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Lcom/oplus/camera/e/h;I)I
    .locals 1

    if-eqz p0, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->b()I

    move-result p0

    add-int/2addr p0, p1

    rem-int/lit16 p0, p0, 0x168

    rsub-int p0, p0, 0x168

    .line 333
    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->b()I

    move-result p0

    sub-int/2addr p0, p1

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .line 540
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    .line 542
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;
    .locals 5

    const-class v0, Lcom/oplus/camera/e/a;

    monitor-enter v0

    .line 293
    :try_start_0
    invoke-static {p1}, Lcom/oplus/camera/e/a;->b(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "rear_main_front_main"

    .line 295
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "rear_main_front_sub"

    .line 296
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v1, "CameraCharacteristicsUtil"

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCameraInfo, cameraType is null or cameraType equals REAR_MAIN_FRONT_MAIN, logicId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rear_main"

    .line 303
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "common"

    :cond_2
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 305
    sget-object v2, Lcom/oplus/camera/e/a;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/e/h;

    if-nez v2, :cond_4

    .line 308
    invoke-static {}, Lcom/oplus/camera/MyApplication;->f()Lcom/oplus/ocs/camera/CameraUnitClient;

    move-result-object v2

    if-nez v2, :cond_3

    const-string p0, "CameraCharacteristicsUtil"

    const-string p1, "getCameraInfo, cameraUnitClient is null!"

    .line 311
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 313
    monitor-exit v0

    return-object p0

    .line 316
    :cond_3
    :try_start_1
    invoke-virtual {v2, v1, p0}, Lcom/oplus/ocs/camera/CameraUnitClient;->getCameraDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/ocs/camera/CameraDeviceInfo;

    move-result-object p0

    .line 317
    new-instance v2, Lcom/oplus/camera/e/h;

    invoke-direct {v2, p0}, Lcom/oplus/camera/e/h;-><init>(Lcom/oplus/ocs/camera/CameraDeviceInfo;)V

    .line 318
    sget-object v1, Lcom/oplus/camera/e/a;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CameraCharacteristicsUtil"

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCameraInfo, key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cameraDeviceInfo: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :cond_4
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a()V
    .locals 10

    const-class v0, Lcom/oplus/camera/e/a;

    monitor-enter v0

    .line 124
    :try_start_0
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    .line 125
    monitor-exit v0

    return-void

    .line 128
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/oplus/camera/MyApplication;->f()Lcom/oplus/ocs/camera/CameraUnitClient;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "CameraCharacteristicsUtil"

    const-string v2, "initCameraInfo, cameraUnitClient is null!"

    .line 131
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    monitor-exit v0

    return-void

    .line 136
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lcom/oplus/ocs/camera/CameraUnitClient;->getAllSupportCameraType()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 138
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_3

    .line 144
    :cond_2
    invoke-virtual {v1}, Lcom/oplus/ocs/camera/CameraUnitClient;->getAllSupportCameraMode()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 146
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_2

    .line 152
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 153
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 154
    invoke-static {v4}, Lcom/oplus/camera/e/a;->b(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v7, v6, :cond_7

    if-eqz v5, :cond_7

    .line 156
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7

    const/4 v7, 0x0

    .line 157
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/oplus/ocs/camera/CameraUnitClient;->getCameraDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/ocs/camera/CameraDeviceInfo;

    move-result-object v5

    const/4 v8, 0x0

    if-eqz v5, :cond_4

    .line 161
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v8}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    :cond_4
    if-eqz v8, :cond_5

    .line 164
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_5

    const/4 v7, 0x1

    :cond_5
    const-string v5, "CameraCharacteristicsUtil"

    .line 166
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initCameraInfo, cameraType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", cameraId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", isFront: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_6

    .line 170
    sget-object v5, Lcom/oplus/camera/e/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :cond_6
    sget-object v5, Lcom/oplus/camera/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :goto_1
    sget-object v5, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_7
    const-string v5, "CameraCharacteristicsUtil"

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initCameraInfo, cameraType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", cameraId: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 180
    :cond_8
    monitor-exit v0

    return-void

    :cond_9
    :goto_2
    :try_start_3
    const-string v1, "CameraCharacteristicsUtil"

    const-string v2, "initCameraInfo, modeMap is null!"

    .line 147
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    monitor-exit v0

    return-void

    :cond_a
    :goto_3
    :try_start_4
    const-string v1, "CameraCharacteristicsUtil"

    const-string v2, "initCameraInfo, supportedList is null!"

    .line 139
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class p0, Lcom/oplus/camera/e/a;

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraCharacteristicsUtil"

    const-string v1, "initialize"

    .line 111
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "initializeBokehParamAndCameraInfo"

    .line 113
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/oplus/camera/e/a;->t()V

    .line 116
    invoke-static {}, Lcom/oplus/camera/e/a;->a()V

    const-string v0, "initializeBokehParamAndCameraInfo"

    .line 118
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    const-string v0, "CameraCharacteristicsUtil"

    const-string v1, "initialize, X"

    .line 120
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(I)Z
    .locals 1

    .line 372
    sget-object v0, Lcom/oplus/camera/e/a;->b:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/oplus/camera/e/a;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/oplus/camera/e/h;I)I
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 353
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->c()I

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    invoke-static {}, Lcom/oplus/camera/screen/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->b()I

    move-result v0

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 355
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->b()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->b()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 365
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJpegOrientation, orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", rotation: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", characteristics: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraCharacteristicsUtil"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 17

    move-object/from16 v0, p0

    .line 183
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xd

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/16 v6, 0x11

    const/16 v7, 0x10

    const/16 v8, 0xf

    const/16 v9, 0xc

    const/16 v10, 0xb

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x6

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "rear_microscope"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "rear_portrait_mono_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v12

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "rear_portrait_mono_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "rear_second_portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "front_wide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "front_main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "front_dual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "rear_main_front_sub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "rear_macro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v11

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "rear_wide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_a
    const-string v1, "rear_tele"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v14

    goto :goto_1

    :sswitch_b
    const-string v1, "rear_main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v15

    goto :goto_1

    :sswitch_c
    const-string v1, "rear_sat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v13

    goto :goto_1

    :sswitch_d
    const-string v1, "rear_portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_e
    const-string v1, "rear_main_front_main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_f
    const-string v1, "rear_tof_3d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_10
    const-string v1, "rear_mono_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_11
    const-string v1, "rear_mono_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :cond_0
    :goto_0
    move/from16 v0, v16

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v16

    :pswitch_0
    const/16 v0, 0xe

    return v0

    :pswitch_1
    return v2

    :pswitch_2
    const/16 v0, 0x65

    return v0

    :pswitch_3
    const/16 v0, 0x64

    return v0

    :pswitch_4
    return v3

    :pswitch_5
    return v4

    :pswitch_6
    return v5

    :pswitch_7
    const/16 v0, 0x13

    return v0

    :pswitch_8
    return v6

    :pswitch_9
    return v7

    :pswitch_a
    return v8

    :pswitch_b
    return v9

    :pswitch_c
    return v10

    :pswitch_d
    return v11

    :pswitch_e
    return v12

    :pswitch_f
    return v13

    :pswitch_10
    return v14

    :pswitch_11
    return v15

    :sswitch_data_0
    .sparse-switch
        -0x7f3aa330 -> :sswitch_11
        -0x7f3aa32f -> :sswitch_10
        -0x734c9b00 -> :sswitch_f
        -0x72961446 -> :sswitch_e
        -0x5c57d42a -> :sswitch_d
        -0x32eb2d35 -> :sswitch_c
        -0x2a7d348c -> :sswitch_b
        -0x2a79f69b -> :sswitch_a
        -0x2a788b72 -> :sswitch_9
        -0x2529728f -> :sswitch_8
        -0x24ba6be1 -> :sswitch_7
        -0x13577b2e -> :sswitch_6
        -0x1353adf1 -> :sswitch_5
        -0x134f04d7 -> :sswitch_4
        0xaec526b -> :sswitch_3
        0x79dd0e5e -> :sswitch_2
        0x79dd0e5f -> :sswitch_1
        0x7fb3e78b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Lcom/oplus/camera/e/a$a;
    .locals 1

    .line 285
    sget-object v0, Lcom/oplus/camera/e/a;->e:Lcom/oplus/camera/e/a$a;

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 3

    .line 546
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraType, cameraType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CameraCharacteristicsUtil"

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Lcom/oplus/camera/e/a$a;
    .locals 1

    .line 289
    sget-object v0, Lcom/oplus/camera/e/a;->f:Lcom/oplus/camera/e/a$a;

    return-object v0
.end method

.method public static c(I)Z
    .locals 1

    const/16 v0, 0x64

    if-eq v0, p0, :cond_1

    const/16 v0, 0x65

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

.method public static d()Z
    .locals 2

    .line 376
    sget-object v0, Lcom/oplus/camera/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e()Z
    .locals 1

    const-string v0, "com.oplus.feature.front.dual.camera.support"

    .line 380
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 2

    .line 384
    sget-object v0, Lcom/oplus/camera/e/a;->a:Ljava/util/ArrayList;

    const-string v1, "rear_sat"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 2

    .line 388
    sget-object v0, Lcom/oplus/camera/e/a;->a:Ljava/util/ArrayList;

    const-string v1, "rear_wide"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static h()I
    .locals 3

    .line 396
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    const-string v1, "rear_main"

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 399
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0

    .line 402
    :cond_0
    sget-object v0, Lcom/oplus/camera/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 403
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    sget-object v2, Lcom/oplus/camera/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 405
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    :cond_1
    return v1
.end method

.method public static i()I
    .locals 3

    .line 412
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CameraCharacteristicsUtil"

    const-string v1, "getFrontMainCameraId, id: 4"

    .line 413
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    return v0

    .line 418
    :cond_0
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    const-string v1, "front_main"

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 421
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0

    .line 424
    :cond_1
    sget-object v0, Lcom/oplus/camera/e/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 425
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    sget-object v2, Lcom/oplus/camera/e/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 427
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    :cond_2
    return v1
.end method

.method public static j()I
    .locals 5

    .line 434
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    const-string v1, "rear_wide"

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 437
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0

    .line 440
    :cond_0
    sget-object v0, Lcom/oplus/camera/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    .line 441
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    sget-object v3, Lcom/oplus/camera/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 443
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    :cond_1
    return v1
.end method

.method public static k()I
    .locals 4

    .line 450
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    const-string v1, "front_wide"

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 453
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrontSubCameraId, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraCharacteristicsUtil"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 460
    :cond_0
    sget-object v0, Lcom/oplus/camera/e/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 461
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    sget-object v2, Lcom/oplus/camera/e/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 463
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oplus/camera/e/a;->i()I

    move-result v0

    :goto_0
    return v0

    .line 466
    :cond_2
    invoke-static {}, Lcom/oplus/camera/e/a;->i()I

    move-result v0

    return v0
.end method

.method public static l()I
    .locals 5

    .line 470
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    const-string v1, "rear_portrait"

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 473
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0

    .line 476
    :cond_0
    sget-object v0, Lcom/oplus/camera/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 477
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    sget-object v3, Lcom/oplus/camera/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 479
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    :cond_1
    return v1
.end method

.method public static m()I
    .locals 2

    .line 486
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    const-string v1, "rear_second_portrait"

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 489
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static n()I
    .locals 4

    .line 496
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    const-string v1, "front_dual"

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 499
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0

    .line 502
    :cond_0
    sget-object v0, Lcom/oplus/camera/e/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 503
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    sget-object v2, Lcom/oplus/camera/e/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 505
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oplus/camera/e/a;->i()I

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static o()I
    .locals 2

    .line 512
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    const-string v1, "rear_tele"

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 515
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static p()I
    .locals 2

    .line 522
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    const-string v1, "rear_sat"

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 524
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static q()I
    .locals 2

    .line 528
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    const-string v1, "rear_microscope"

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 530
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static r()I
    .locals 2

    .line 534
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    const-string v1, "rear_macro"

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 536
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static s()I
    .locals 2

    .line 554
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    const-string v1, "rear_main_front_main"

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 556
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v1

    if-nez v1, :cond_0

    .line 557
    sget-object v0, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    const-string v1, "rear_main_front_sub"

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    if-ltz v0, :cond_1

    .line 560
    sget-object v1, Lcom/oplus/camera/e/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static t()V
    .locals 5

    .line 244
    sget-object v0, Lcom/oplus/camera/e/a;->e:Lcom/oplus/camera/e/a$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/camera/e/a;->f:Lcom/oplus/camera/e/a$a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "fillBokehParam"

    .line 248
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 250
    new-instance v1, Ljava/io/File;

    const-string v2, "/persist/camera/stereoParams.bin"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Ljava/io/File;)[B

    move-result-object v1

    .line 252
    sget-object v2, Lcom/oplus/camera/e/a;->e:Lcom/oplus/camera/e/a$a;

    if-nez v2, :cond_1

    .line 253
    new-instance v2, Lcom/oplus/camera/e/a$a;

    invoke-direct {v2}, Lcom/oplus/camera/e/a$a;-><init>()V

    sput-object v2, Lcom/oplus/camera/e/a;->e:Lcom/oplus/camera/e/a$a;

    .line 256
    :cond_1
    sget-object v2, Lcom/oplus/camera/e/a;->e:Lcom/oplus/camera/e/a$a;

    const/16 v3, 0x1022

    const/16 v4, 0x1025

    invoke-static {v1, v3, v4}, Lcom/oplus/camera/util/Util;->f([BII)I

    move-result v3

    iput v3, v2, Lcom/oplus/camera/e/a$a;->b:I

    .line 258
    sget-object v2, Lcom/oplus/camera/e/a;->e:Lcom/oplus/camera/e/a$a;

    const/16 v3, 0x1026

    const/16 v4, 0x1029

    invoke-static {v1, v3, v4}, Lcom/oplus/camera/util/Util;->f([BII)I

    move-result v3

    iput v3, v2, Lcom/oplus/camera/e/a$a;->a:I

    .line 260
    sget-object v2, Lcom/oplus/camera/e/a;->e:Lcom/oplus/camera/e/a$a;

    const/16 v3, 0x102a

    invoke-static {v1, v3}, Lcom/oplus/camera/util/Util;->b([BI)F

    move-result v3

    iput v3, v2, Lcom/oplus/camera/e/a$a;->c:F

    .line 261
    sget-object v2, Lcom/oplus/camera/e/a;->e:Lcom/oplus/camera/e/a$a;

    const/16 v3, 0x102e

    invoke-static {v1, v3}, Lcom/oplus/camera/util/Util;->b([BI)F

    move-result v3

    iput v3, v2, Lcom/oplus/camera/e/a$a;->d:F

    .line 262
    sget-object v2, Lcom/oplus/camera/e/a;->e:Lcom/oplus/camera/e/a$a;

    const/16 v3, 0x1032

    invoke-static {v1, v3}, Lcom/oplus/camera/util/Util;->b([BI)F

    move-result v3

    iput v3, v2, Lcom/oplus/camera/e/a$a;->e:F

    .line 263
    sget-object v2, Lcom/oplus/camera/e/a;->e:Lcom/oplus/camera/e/a$a;

    const/16 v3, 0x1036

    invoke-static {v1, v3}, Lcom/oplus/camera/util/Util;->b([BI)F

    move-result v3

    iput v3, v2, Lcom/oplus/camera/e/a$a;->f:F

    .line 265
    sget-object v2, Lcom/oplus/camera/e/a;->f:Lcom/oplus/camera/e/a$a;

    if-nez v2, :cond_2

    .line 266
    new-instance v2, Lcom/oplus/camera/e/a$a;

    invoke-direct {v2}, Lcom/oplus/camera/e/a$a;-><init>()V

    sput-object v2, Lcom/oplus/camera/e/a;->f:Lcom/oplus/camera/e/a$a;

    .line 269
    :cond_2
    sget-object v2, Lcom/oplus/camera/e/a;->f:Lcom/oplus/camera/e/a$a;

    const/16 v3, 0x11

    const/16 v4, 0x14

    invoke-static {v1, v3, v4}, Lcom/oplus/camera/util/Util;->f([BII)I

    move-result v3

    iput v3, v2, Lcom/oplus/camera/e/a$a;->b:I

    .line 271
    sget-object v2, Lcom/oplus/camera/e/a;->f:Lcom/oplus/camera/e/a$a;

    const/16 v3, 0x15

    const/16 v4, 0x18

    invoke-static {v1, v3, v4}, Lcom/oplus/camera/util/Util;->f([BII)I

    move-result v3

    iput v3, v2, Lcom/oplus/camera/e/a$a;->a:I

    .line 273
    sget-object v2, Lcom/oplus/camera/e/a;->f:Lcom/oplus/camera/e/a$a;

    const/16 v3, 0x19

    invoke-static {v1, v3}, Lcom/oplus/camera/util/Util;->b([BI)F

    move-result v3

    iput v3, v2, Lcom/oplus/camera/e/a$a;->c:F

    .line 274
    sget-object v2, Lcom/oplus/camera/e/a;->f:Lcom/oplus/camera/e/a$a;

    const/16 v3, 0x1d

    invoke-static {v1, v3}, Lcom/oplus/camera/util/Util;->b([BI)F

    move-result v3

    iput v3, v2, Lcom/oplus/camera/e/a$a;->d:F

    .line 275
    sget-object v2, Lcom/oplus/camera/e/a;->f:Lcom/oplus/camera/e/a$a;

    const/16 v3, 0x21

    invoke-static {v1, v3}, Lcom/oplus/camera/util/Util;->b([BI)F

    move-result v3

    iput v3, v2, Lcom/oplus/camera/e/a$a;->e:F

    .line 276
    sget-object v2, Lcom/oplus/camera/e/a;->f:Lcom/oplus/camera/e/a$a;

    const/16 v3, 0x25

    invoke-static {v1, v3}, Lcom/oplus/camera/util/Util;->b([BI)F

    move-result v1

    iput v1, v2, Lcom/oplus/camera/e/a$a;->f:F

    .line 278
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillBokehParam, sMasterCalibParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/e/a;->e:Lcom/oplus/camera/e/a$a;

    invoke-virtual {v1}, Lcom/oplus/camera/e/a$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sDepthCalibParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/e/a;->f:Lcom/oplus/camera/e/a$a;

    .line 281
    invoke-virtual {v1}, Lcom/oplus/camera/e/a$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCharacteristicsUtil"

    .line 280
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
