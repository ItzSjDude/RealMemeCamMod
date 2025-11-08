.class public Lcom/oplus/camera/CameraManager$a;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 20978
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$a;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIZI)V
    .locals 9

    const-string v0, "CameraManager"

    const-string v1, "onFinishAddFrame"

    .line 20980
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20982
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$a;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$a;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aZ(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 20984
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$a;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/capmode/ModeManager;->h(Z)V

    goto :goto_0

    .line 20985
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$a;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v2, "key_support_update_thumbnail_user_picture"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20986
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$a;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v6, 0x100

    move v4, p1

    move v5, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/oplus/camera/capmode/ModeManager;->a([BIIIZI)V

    .line 20990
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$a;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, v1}, Lcom/oplus/camera/CameraManager;->v(Lcom/oplus/camera/CameraManager;Z)Z

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 21019
    :cond_0
    check-cast p1, Lcom/oplus/camera/aps/service/ThumbnailCategory;

    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mCaptureMsgData:Lcom/oplus/camera/statistics/model/CaptureMsgData;

    .line 21020
    invoke-static {v0, p1}, Lcom/oplus/camera/a/a;->a(Lcom/oplus/camera/statistics/model/CaptureMsgData;Lcom/oplus/camera/aps/service/ThumbnailCategory;)Lcom/oplus/camera/statistics/model/CaptureMsgData;

    move-result-object p1

    .line 21021
    check-cast p2, Lcom/oplus/camera/Storage$CameraPicture;

    invoke-static {p1, p2}, Lcom/oplus/camera/a/a;->a(Lcom/oplus/camera/statistics/model/CaptureMsgData;Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/statistics/model/CaptureMsgData;

    move-result-object p1

    .line 21023
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$a;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21024
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$a;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/statistics/model/DcsMsgData;Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "process_duration"

    .line 21028
    invoke-static {p0}, Lcom/oplus/camera/statistics/model/PerformanceMsgData;->getPointTime(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProcessDuration:Ljava/lang/String;

    .line 21029
    invoke-virtual {p1}, Lcom/oplus/camera/statistics/model/CaptureMsgData;->report()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z
    .locals 6

    .line 20994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captureX consumeImage size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v5, "27ct_ImageReceived - consumeImage"

    invoke-static {v0, v5, v3, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 20996
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$a;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/t;->b(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z

    move-result p0

    .line 20998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public b(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V
    .locals 6

    .line 21003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captureX onRawImageReceived size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v5, "26ct_RawImageReceived"

    invoke-static {v0, v5, v3, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 21005
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$a;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/t;->a(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V

    .line 21007
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z
    .locals 0

    .line 21011
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$a;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/t;->c(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z

    move-result p0

    return p0
.end method
