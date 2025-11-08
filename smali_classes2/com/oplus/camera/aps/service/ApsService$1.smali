.class Lcom/oplus/camera/aps/service/ApsService$1;
.super Lcom/oplus/ocs/camera/CameraPictureCallback;
.source "ApsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/aps/service/ApsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/camera/aps/service/ApsService;


# direct methods
.method constructor <init>(Lcom/oplus/camera/aps/service/ApsService;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-direct {p0}, Lcom/oplus/ocs/camera/CameraPictureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public afterProcessImage(ILcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 7

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afterProcessImage, processResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pictureResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", identity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_MERGE_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 312
    invoke-virtual {p2, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", captureForVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->RESULT_CAPTURE_FOR_VIDEO:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 313
    invoke-virtual {p2, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApsService"

    .line 311
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RESULT_CAPTURE_FOR_VIDEO:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p2, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 319
    :cond_0
    sget-object v0, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "captureX afterProcessImage"

    const-string v3, "15ct_afterProcessImage"

    invoke-static {v2, v3, v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 321
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_MERGE_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p2, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/aps/service/ApsService;->access$1202(Lcom/oplus/camera/aps/service/ApsService;J)J

    .line 322
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v0}, Lcom/oplus/camera/aps/service/ApsService;->access$1200(Lcom/oplus/camera/aps/service/ApsService;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/ComprehensivePerformance;->a(J)V

    .line 324
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v0}, Lcom/oplus/camera/aps/service/ApsService;->access$600(Lcom/oplus/camera/aps/service/ApsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 326
    :try_start_0
    iget-object p1, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p1}, Lcom/oplus/camera/aps/service/ApsService;->access$700(Lcom/oplus/camera/aps/service/ApsService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_MERGE_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p2, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    const-wide/16 p1, 0x0

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/aps/service/ApsService;->access$1302(Lcom/oplus/camera/aps/service/ApsService;J)J

    const-string p0, "captureX afterProcessImage"

    const-string p1, "15ct_afterProcessImage"

    .line 329
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    monitor-exit v0

    return-void

    .line 333
    :cond_1
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_BURST_SHOT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p2, p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 334
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_MERGE_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p2, p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 335
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_BURST_SHOT_FLAG_ID:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p2, p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 336
    iget-object p1, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p1}, Lcom/oplus/camera/aps/service/ApsService;->access$300(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object p1

    iget-object v1, p1, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mBurstShotThumbnailCallBack:Lcom/oplus/camera/ui/control/e$a;

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/control/e$a;->a(JJ[B)V

    .line 339
    :cond_2
    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_END_OF_CAPTURE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p2, p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 342
    iget-object p1, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p1}, Lcom/oplus/camera/aps/service/ApsService;->access$700(Lcom/oplus/camera/aps/service/ApsService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 343
    iget-object p1, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p1}, Lcom/oplus/camera/aps/service/ApsService;->access$700(Lcom/oplus/camera/aps/service/ApsService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_MERGE_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p2, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 344
    iget-object p1, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p1}, Lcom/oplus/camera/aps/service/ApsService;->access$700(Lcom/oplus/camera/aps/service/ApsService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_MERGE_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p2, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/aps/service/ThumbnailCategory;

    .line 345
    iput-object p2, p1, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    .line 346
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p0}, Lcom/oplus/camera/aps/service/ApsService;->access$1400(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/statistics/model/CaptureMsgData;

    move-result-object p0

    iput-object p0, p1, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mCaptureMsgData:Lcom/oplus/camera/statistics/model/CaptureMsgData;

    goto :goto_0

    .line 348
    :cond_3
    new-instance p1, Lcom/oplus/camera/aps/service/ThumbnailCategory;

    invoke-direct {p1}, Lcom/oplus/camera/aps/service/ThumbnailCategory;-><init>()V

    .line 349
    new-instance v1, Lcom/oplus/camera/aps/service/ThumbnailItem;

    invoke-direct {v1}, Lcom/oplus/camera/aps/service/ThumbnailItem;-><init>()V

    iput-object v1, p1, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mThumbnailItem:Lcom/oplus/camera/aps/service/ThumbnailItem;

    .line 350
    iput-object p2, p1, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    .line 351
    iget-object v1, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v1}, Lcom/oplus/camera/aps/service/ApsService;->access$1400(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/statistics/model/CaptureMsgData;

    move-result-object v1

    iput-object v1, p1, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mCaptureMsgData:Lcom/oplus/camera/statistics/model/CaptureMsgData;

    .line 353
    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_BURST_SHOT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p2, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 354
    iget-object v1, p1, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mThumbnailItem:Lcom/oplus/camera/aps/service/ThumbnailItem;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mbBurstShot:Z

    .line 357
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p0}, Lcom/oplus/camera/aps/service/ApsService;->access$700(Lcom/oplus/camera/aps/service/ApsService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_MERGE_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p2, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_5
    :goto_0
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/m/b;->h()V

    .line 363
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "captureX afterProcessImage"

    const-string p1, "15ct_afterProcessImage"

    .line 365
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 363
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public fillApsParameters(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "process_duration"

    .line 377
    invoke-static {v0}, Lcom/oplus/camera/statistics/model/PerformanceMsgData;->startPointTime(Ljava/lang/String;)V

    .line 378
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/aps/service/ApsService;->access$1500(Lcom/oplus/camera/aps/service/ApsService;ILjava/util/Map;)V

    .line 380
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fillApsParameters, type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", parameters: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApsService"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBurstShotEnd(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 3

    const-string v0, "captureX onBurstShotEnd"

    .line 302
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 304
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_BURST_SHOT_FLAG_ID:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/oplus/camera/aps/service/ApsService;->access$1100(Lcom/oplus/camera/aps/service/ApsService;J)Z

    .line 306
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onBurstShotStart(J)V
    .locals 2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captureX onBurstShotStart burstShotFlagId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 295
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/aps/service/ApsService;->access$1000(Lcom/oplus/camera/aps/service/ApsService;J)Z

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureFailed(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 7

    .line 132
    invoke-super {p0, p1}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onCaptureFailed(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    const-string v0, "ApsService"

    const-string v1, "onCaptureFailed"

    .line 134
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_0

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_FAIL_CODE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 142
    :goto_1
    iget-object v2, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v2, v0}, Lcom/oplus/camera/aps/service/ApsService;->access$102(Lcom/oplus/camera/aps/service/ApsService;Z)Z

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureX onCaptureFailed failCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "22ct_CaptureFailed"

    invoke-static {v2, v6, v4, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 146
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->getCaptureFailure()Landroid/hardware/camera2/CaptureFailure;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 147
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v0}, Lcom/oplus/camera/aps/service/ApsService;->access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 149
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RESULT_REQUEST_TAG:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/e/c;

    .line 150
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p0}, Lcom/oplus/camera/aps/service/ApsService;->access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->getCaptureFailure()Landroid/hardware/camera2/CaptureFailure;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/e/d$a;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/e/c;)V

    goto :goto_2

    .line 154
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v2}, Lcom/oplus/camera/aps/service/ApsService;->access$200(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/ocs/camera/CameraPictureCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 155
    iget-object v2, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v2}, Lcom/oplus/camera/aps/service/ApsService;->access$200(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/ocs/camera/CameraPictureCallback;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onCaptureFailed(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    .line 157
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p0}, Lcom/oplus/camera/aps/service/ApsService;->access$300(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mApsServiceListener:Lcom/oplus/camera/CameraManager$a;

    const/16 p1, 0x100

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/oplus/camera/CameraManager$a;->a(IIZI)V

    .line 161
    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureFirstFrameArrived(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 5

    .line 166
    invoke-super {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onCaptureFirstFrameArrived(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    .line 168
    new-instance v0, Lcom/oplus/camera/aps/service/CameraCaptureResult;

    invoke-virtual {p2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/aps/service/CameraCaptureResult;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    .line 169
    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_RESULT_NIGHT_TOTAL_EXPTIME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p2, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 170
    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_RESULT_FIRST_EXPOSURE_TIME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p2, v2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 171
    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->RESULT_REQUEST_TAG:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p2, v3}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p2

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureFirstFrameArrived, nightTotalTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", firstExposureTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ApsService"

    invoke-static {v4, v3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mNightCaptureTotaltime:J

    :cond_0
    if-eqz v2, :cond_1

    .line 181
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mFirstExposureTime:J

    :cond_1
    if-eqz p2, :cond_2

    .line 185
    check-cast p2, Lcom/oplus/camera/e/c;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/aps/service/CameraCaptureResult;->setRequestTag(Lcom/oplus/camera/e/c;)V

    .line 188
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p2}, Lcom/oplus/camera/aps/service/ApsService;->access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 189
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p0}, Lcom/oplus/camera/aps/service/ApsService;->access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/e/d$a;->onCaptureFirstFrameArrived(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/aps/service/CameraCaptureResult;)V

    :cond_3
    return-void
.end method

.method public onCaptureMetaReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 9

    .line 195
    invoke-super {p0, p1}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onCaptureMetaReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    .line 197
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v0, p1}, Lcom/oplus/camera/aps/service/ApsService;->access$402(Lcom/oplus/camera/aps/service/ApsService;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    .line 198
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v0}, Lcom/oplus/camera/aps/service/ApsService;->access$400(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    move-result-object v0

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->RESULT_REQUEST_TAG:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {v0, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    check-cast v0, Lcom/oplus/camera/e/c;

    .line 200
    new-instance v1, Lcom/oplus/camera/aps/service/CameraCaptureResult;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oplus/camera/aps/service/CameraCaptureResult;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    .line 201
    iget-object v2, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v2}, Lcom/oplus/camera/aps/service/ApsService;->access$400(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    move-result-object v2

    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->PICTURE_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {v2, v3}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureMetaReceived, pictureIdentity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ApsService"

    invoke-static {v4, v3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v3, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v5, "24ct_CaptureMetaReceived"

    const-string v6, "captureX onCaptureMetaReceived"

    invoke-static {v6, v5, v3, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mIdentity:J

    .line 211
    :cond_0
    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->APS_PROC_TIMER:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v3}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v3, v7, v8, v2}, Lcom/oplus/camera/perf/ComprehensivePerformance;->a(Ljava/util/HashMap;JLjava/lang/Long;)V

    .line 214
    iget-object v2, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v2}, Lcom/oplus/camera/aps/service/ApsService;->access$400(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    move-result-object v2

    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->MESH_PTR:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {v2, v3}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 215
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mMeshPtr:J

    .line 217
    iget-object v2, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v2}, Lcom/oplus/camera/aps/service/ApsService;->access$500(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$e;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v2}, Lcom/oplus/camera/aps/service/ApsService;->access$500(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$e;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Lcom/oplus/camera/e/d$e;->a(Landroid/hardware/camera2/CaptureResult;Lcom/oplus/camera/e/c;)V

    .line 221
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p1}, Lcom/oplus/camera/aps/service/ApsService;->access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 222
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p0}, Lcom/oplus/camera/aps/service/ApsService;->access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Lcom/oplus/camera/e/d$a;->onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V

    .line 225
    :cond_2
    invoke-static {v6, v5}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCapturePrepared()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v0}, Lcom/oplus/camera/aps/service/ApsService;->access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p0}, Lcom/oplus/camera/aps/service/ApsService;->access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/e/d$a;->onCapturePrepared()V

    const-string p0, "ApsService"

    const-string v0, "onCapturePrepared"

    .line 114
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCaptureShutter(J)V
    .locals 7

    .line 100
    invoke-super {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onCaptureShutter(J)V

    .line 102
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v0}, Lcom/oplus/camera/aps/service/ApsService;->access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p0}, Lcom/oplus/camera/aps/service/ApsService;->access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-wide v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/e/d$a;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    const-string p0, "ApsService"

    const-string p1, "onCaptureShutter"

    .line 105
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFinishAddFrame(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 6

    .line 385
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p0}, Lcom/oplus/camera/aps/service/ApsService;->access$300(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mApsServiceListener:Lcom/oplus/camera/CameraManager$a;

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_WIDTH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 386
    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_HEIGHT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 387
    invoke-virtual {p1, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_BURST_SHOT_FLAG_ID:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 388
    invoke-virtual {p1, v2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_FORMAT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 389
    invoke-virtual {p1, v3}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 385
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/oplus/camera/CameraManager$a;->a(IIZI)V

    return-void
.end method

.method public onFirstCaptureFrameAdd()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v0}, Lcom/oplus/camera/aps/service/ApsService;->access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p0}, Lcom/oplus/camera/aps/service/ApsService;->access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/e/d$a;->onFirstCaptureFrameAdd()V

    :cond_0
    return-void
.end method

.method public onImageReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V
    .locals 7

    .line 230
    invoke-super {p0, p1}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onImageReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V

    .line 231
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/aps/service/ApsService;->access$102(Lcom/oplus/camera/aps/service/ApsService;Z)Z

    if-nez p1, :cond_0

    const-string p0, "ApsService"

    const-string p1, "onImageReceived, image is null, return"

    .line 234
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x20

    .line 239
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getFormat()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 240
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p0}, Lcom/oplus/camera/aps/service/ApsService;->access$300(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mApsServiceListener:Lcom/oplus/camera/CameraManager$a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager$a;->b(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V

    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v0}, Lcom/oplus/camera/aps/service/ApsService;->access$300(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mApsServiceListener:Lcom/oplus/camera/CameraManager$a;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/CameraManager$a;->a(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 249
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captureX onImageReceived size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "28ct_ImageReceived"

    invoke-static {v0, v3, v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 251
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v0}, Lcom/oplus/camera/aps/service/ApsService;->access$300(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mApsServiceListener:Lcom/oplus/camera/CameraManager$a;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/CameraManager$a;->c(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "captureX onImageReceived size: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "28ct_ImageReceived"

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captureX onImageReceived size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "28ct_ImageReceived"

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getTimestamp()J

    move-result-wide v0

    .line 261
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/m/b;->i()V

    .line 263
    iget-object v2, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v2}, Lcom/oplus/camera/aps/service/ApsService;->access$600(Lcom/oplus/camera/aps/service/ApsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 264
    :try_start_0
    iget-object v3, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v3}, Lcom/oplus/camera/aps/service/ApsService;->access$700(Lcom/oplus/camera/aps/service/ApsService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/aps/service/ThumbnailCategory;

    const-string v4, "ApsService"

    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onImageReceived, identity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v6}, Lcom/oplus/camera/aps/service/ApsService;->access$700(Lcom/oplus/camera/aps/service/ApsService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_4

    .line 269
    monitor-exit v2

    return-void

    .line 272
    :cond_4
    invoke-virtual {v3}, Lcom/oplus/camera/aps/service/ThumbnailCategory;->isValid()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 273
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p0, v3, p1}, Lcom/oplus/camera/aps/service/ApsService;->access$800(Lcom/oplus/camera/aps/service/ApsService;Lcom/oplus/camera/aps/service/ThumbnailCategory;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V

    goto :goto_0

    .line 275
    :cond_5
    iget-object v4, v3, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    if-eqz v4, :cond_6

    .line 279
    sget-object v5, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_REC_BURST_NUMBER:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {v4, v5}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_6

    const-string p1, "ApsService"

    const-string v4, "onImageReceived, the burst capture is already stopped, complete directly"

    .line 280
    invoke-static {p1, v4}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    iget-object p1, v3, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    invoke-static {p0, v0, v1, p1}, Lcom/oplus/camera/aps/service/ApsService;->access$900(Lcom/oplus/camera/aps/service/ApsService;JLcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    .line 283
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/m/b;->k()V

    goto :goto_0

    .line 285
    :cond_6
    iput-object p1, v3, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mCameraPictureImage:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    .line 288
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPictureCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 2

    .line 120
    invoke-super {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onPictureCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    .line 122
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v0}, Lcom/oplus/camera/aps/service/ApsService;->access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RESULT_REQUEST_TAG:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p2, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/e/c;

    .line 124
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p0}, Lcom/oplus/camera/aps/service/ApsService;->access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;

    move-result-object p0

    new-instance v1, Lcom/oplus/camera/aps/service/CameraCaptureResult;

    invoke-virtual {p2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/oplus/camera/aps/service/CameraCaptureResult;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {p0, p1, v1, v0}, Lcom/oplus/camera/e/d$a;->onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V

    const-string p0, "ApsService"

    const-string p1, "onPictureCaptureProgressed"

    .line 126
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPictureCaptureSequenceCompleted(IJ)V
    .locals 0

    .line 370
    iget-object p1, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p1}, Lcom/oplus/camera/aps/service/ApsService;->access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 371
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$1;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {p0}, Lcom/oplus/camera/aps/service/ApsService;->access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/e/d$a;->onCaptureSequenceCompleted()V

    :cond_0
    return-void
.end method
