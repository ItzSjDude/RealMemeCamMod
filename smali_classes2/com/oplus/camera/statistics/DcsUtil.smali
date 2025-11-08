.class public Lcom/oplus/camera/statistics/DcsUtil;
.super Ljava/lang/Object;
.source "DcsUtil.java"


# static fields
.field public static sEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sFoldType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    .line 25
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "201enter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "201exit"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "200portrait"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "200ai_effect_click"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "200switch_cameraId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "200reminder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "200funcKey_click"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "200funcValue_select"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "200funcMenu_select"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "200zoom_adjust"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "200focus_aim"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "200static_info"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "202pause"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "202video_playback"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "202guide_page"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "202video_clip"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "202switch_cameraId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "202reminder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "202funcKey_click"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "202funcValue_select"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "202funcMenu_select"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "202zoom_adjust"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "202focus_aim"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "202static_info"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    const-string v1, "202videoRecord"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillScreenStatus(Lcom/oplus/camera/statistics/model/DcsMsgData;)V
    .locals 3

    .line 55
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/oplus/camera/statistics/DcsUtil;->sEventList:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/camera/statistics/model/DcsMsgData;->mLogTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/statistics/model/DcsMsgData;->mEventId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    sget v0, Lcom/oplus/camera/statistics/DcsUtil;->sFoldType:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 57
    iput v0, p0, Lcom/oplus/camera/statistics/model/DcsMsgData;->mFoldType:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 59
    iput v0, p0, Lcom/oplus/camera/statistics/model/DcsMsgData;->mFoldType:I

    goto :goto_0

    .line 61
    :cond_1
    iput v0, p0, Lcom/oplus/camera/statistics/model/DcsMsgData;->mFoldType:I

    .line 64
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "inner"

    goto :goto_1

    :cond_2
    const-string v0, "outer"

    :goto_1
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/DcsMsgData;->mScreenType:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/DcsMsgData;->mRearOrFront:Ljava/lang/String;

    const-string v1, "front"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "front_inner"

    :cond_3
    iput-object v1, p0, Lcom/oplus/camera/statistics/model/DcsMsgData;->mRearOrFront:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public static fillSecondScreenStatus(Lcom/oplus/camera/statistics/model/DcsMsgData;ZZ)V
    .locals 1

    .line 73
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 76
    :goto_0
    iput p1, p0, Lcom/oplus/camera/statistics/model/DcsMsgData;->mSecondScreenStatus:I

    const/4 p1, 0x3

    .line 78
    sget p2, Lcom/oplus/camera/statistics/DcsUtil;->sFoldType:I

    if-eq p1, p2, :cond_4

    const/16 p1, 0x1f

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    if-eq v0, p2, :cond_3

    const/16 p1, 0x15

    if-ne p1, p2, :cond_5

    :cond_3
    const-string p1, "split"

    .line 81
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/DcsMsgData;->mScreenPattern:Ljava/lang/String;

    goto :goto_2

    :cond_4
    :goto_1
    const-string p1, "full"

    .line 79
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/DcsMsgData;->mScreenPattern:Ljava/lang/String;

    :cond_5
    :goto_2
    return-void
.end method
