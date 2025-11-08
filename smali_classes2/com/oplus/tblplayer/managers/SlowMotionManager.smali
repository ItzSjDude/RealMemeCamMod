.class public Lcom/oplus/tblplayer/managers/SlowMotionManager;
.super Ljava/lang/Object;
.source "SlowMotionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;
    }
.end annotation


# static fields
.field public static INVALID_FPS:I = -0x1

.field private static SLOW_MOTION_INTERNAL_MS:I = 0xa

.field private static SLOW_MOTION_STATUS_NEED_STOP:I = 0x1

.field private static SLOW_MOTION_STATUS_RUNNING:I = 0x0

.field private static SLOW_MOTION_STATUS_STOPPED:I = 0x2

.field private static TAG:Ljava/lang/String; = "SlowMotionManager"


# instance fields
.field private handler:Landroid/os/Handler;

.field private isHsr:Z

.field private isSlow:Z

.field private player:Lcom/oplus/tblplayer/IMediaPlayer;

.field private realDuration:J

.field private realFps:F

.field private slowDuration:J

.field private slowFps:I

.field private slowIfs:[Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;

.field private slowInfoLen:I

.field private status:I

.field private timesOfSlows:F

.field private updatePlaybackRateAction:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/oplus/tblplayer/IMediaPlayer;IF)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 101
    new-array v0, v0, [Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;

    iput-object v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowIfs:[Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowInfoLen:I

    .line 103
    iput-boolean v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->isHsr:Z

    .line 104
    iput-boolean v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->isSlow:Z

    .line 105
    iput p2, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowFps:I

    .line 106
    iput p3, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->realFps:F

    .line 107
    iput-object p1, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->player:Lcom/oplus/tblplayer/IMediaPlayer;

    .line 108
    sget p1, Lcom/oplus/tblplayer/managers/SlowMotionManager;->SLOW_MOTION_STATUS_STOPPED:I

    iput p1, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->status:I

    .line 109
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/oplus/tblplayer/managers/SlowMotionManager;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->handler:Landroid/os/Handler;

    .line 110
    new-instance p1, Lcom/oplus/tblplayer/managers/-$$Lambda$SlowMotionManager$RmLAmIO488TjQvdrCKWrwWnRu7o;

    invoke-direct {p1, p0}, Lcom/oplus/tblplayer/managers/-$$Lambda$SlowMotionManager$RmLAmIO488TjQvdrCKWrwWnRu7o;-><init>(Lcom/oplus/tblplayer/managers/SlowMotionManager;)V

    iput-object p1, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->updatePlaybackRateAction:Ljava/lang/Runnable;

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/oplus/tblplayer/IMediaPlayer;Ljava/lang/String;FIJ)Lcom/oplus/tblplayer/managers/SlowMotionManager;
    .locals 3

    .line 120
    invoke-static {p2}, Lcom/oplus/tblplayer/utils/CommonUtil;->isSlowMotionHsr(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-lez p4, :cond_2

    const-wide/16 v1, 0x0

    cmp-long p0, p5, v1

    if-gtz p0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;

    invoke-direct {p0, p1, p4, p3}, Lcom/oplus/tblplayer/managers/SlowMotionManager;-><init>(Lcom/oplus/tblplayer/IMediaPlayer;IF)V

    .line 127
    invoke-virtual {p0, p2, p5, p6}, Lcom/oplus/tblplayer/managers/SlowMotionManager;->parseHsrInfo(Ljava/lang/String;J)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    return-object p0

    .line 121
    :cond_2
    :goto_0
    sget-object p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "title = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", realFps = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", duration = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$RmLAmIO488TjQvdrCKWrwWnRu7o(Lcom/oplus/tblplayer/managers/SlowMotionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/tblplayer/managers/SlowMotionManager;->updatePlaybackRateTask()V

    return-void
.end method

.method private needToSlow(JZ)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 240
    :goto_0
    iget v2, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowInfoLen:I

    if-ge v1, v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowIfs:[Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, p3}, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->isInside(JZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private updatePlaybackRateTask()V
    .locals 7

    .line 250
    iget v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->status:I

    sget v1, Lcom/oplus/tblplayer/managers/SlowMotionManager;->SLOW_MOTION_STATUS_NEED_STOP:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    .line 251
    iget-boolean v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->isSlow:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->player:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {v0, v2}, Lcom/oplus/tblplayer/IMediaPlayer;->setVolume(F)V

    .line 253
    iget-object v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->player:Lcom/oplus/tblplayer/IMediaPlayer;

    iget v1, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->timesOfSlows:F

    div-float/2addr v3, v1

    invoke-interface {v0, v3}, Lcom/oplus/tblplayer/IMediaPlayer;->setPlaybackRate(F)V

    .line 254
    iput-boolean v4, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->isSlow:Z

    .line 256
    :cond_0
    sget v0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->SLOW_MOTION_STATUS_STOPPED:I

    iput v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->status:I

    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->player:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {v0}, Lcom/oplus/tblplayer/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 260
    iget-boolean v5, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->isSlow:Z

    if-nez v5, :cond_2

    invoke-direct {p0, v0, v1, v4}, Lcom/oplus/tblplayer/managers/SlowMotionManager;->needToSlow(JZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 262
    sget-object v4, Lcom/oplus/tblplayer/managers/SlowMotionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "need to slow, pos: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->player:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {v0, v2}, Lcom/oplus/tblplayer/IMediaPlayer;->setVolume(F)V

    .line 264
    iget-object v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->player:Lcom/oplus/tblplayer/IMediaPlayer;

    iget v1, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->timesOfSlows:F

    div-float/2addr v3, v1

    invoke-interface {v0, v3}, Lcom/oplus/tblplayer/IMediaPlayer;->setPlaybackRate(F)V

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->isSlow:Z

    goto :goto_0

    .line 266
    :cond_2
    iget-boolean v2, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->isSlow:Z

    if-eqz v2, :cond_3

    invoke-direct {p0, v0, v1, v4}, Lcom/oplus/tblplayer/managers/SlowMotionManager;->needToSlow(JZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 268
    sget-object v2, Lcom/oplus/tblplayer/managers/SlowMotionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "need to real, pos: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->player:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {v0, v3}, Lcom/oplus/tblplayer/IMediaPlayer;->setVolume(F)V

    .line 270
    iget-object v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->player:Lcom/oplus/tblplayer/IMediaPlayer;

    invoke-interface {v0, v3}, Lcom/oplus/tblplayer/IMediaPlayer;->setPlaybackRate(F)V

    .line 271
    iput-boolean v4, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->isSlow:Z

    .line 274
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->updatePlaybackRateAction:Ljava/lang/Runnable;

    sget v1, Lcom/oplus/tblplayer/managers/SlowMotionManager;->SLOW_MOTION_INTERNAL_MS:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public adaptPosition(JZ)J
    .locals 5

    .line 202
    iget-boolean v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->isHsr:Z

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    if-eqz p3, :cond_1

    .line 205
    iget-wide v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowDuration:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 206
    iget-wide p0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->realDuration:J

    return-wide p0

    :cond_1
    if-nez p3, :cond_2

    .line 207
    iget-wide v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->realDuration:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 208
    iget-wide p0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowDuration:J

    return-wide p0

    :cond_2
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 212
    :goto_0
    iget v3, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowInfoLen:I

    if-ge v2, v3, :cond_3

    .line 213
    iget-object v3, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowIfs:[Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;

    aget-object v3, v3, v2

    xor-int/lit8 v4, p3, 0x1

    invoke-virtual {v3, p1, p2, v4}, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->getDiff(JZ)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p3, :cond_4

    long-to-float p1, p1

    long-to-float p2, v0

    .line 217
    iget p3, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->timesOfSlows:F

    div-float p3, v2, p3

    sub-float/2addr v2, p3

    mul-float/2addr p2, v2

    sub-float/2addr p1, p2

    float-to-long p1, p1

    .line 218
    iget-wide v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->realDuration:J

    cmp-long p0, p1, v0

    if-ltz p0, :cond_5

    goto :goto_1

    :cond_4
    long-to-float p1, p1

    long-to-float p2, v0

    .line 221
    iget p3, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->timesOfSlows:F

    sub-float/2addr p3, v2

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    float-to-long p1, p1

    .line 222
    iget-wide v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowDuration:J

    cmp-long p0, p1, v0

    if-ltz p0, :cond_5

    :goto_1
    move-wide p1, v0

    :cond_5
    return-wide p1
.end method

.method protected getLooper()Landroid/os/Looper;
    .locals 0

    .line 235
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public parseHsrInfo(Ljava/lang/String;J)Z
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-wide/from16 v10, p2

    .line 134
    iget v1, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->realFps:F

    sget v2, Lcom/oplus/tblplayer/managers/SlowMotionManager;->INVALID_FPS:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const-string v2, ":"

    if-nez v1, :cond_0

    .line 135
    sget-object v1, Lcom/oplus/tblplayer/Constants;->SLOW_MOTION_HSR_HEAD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 135
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 137
    sget-object v3, Lcom/oplus/tblplayer/managers/SlowMotionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseHsrInfo: hsrPrefixTitle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v3, Lcom/oplus/tblplayer/Constants;->SLOW_MOTION_HSR_HEAD:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iput v3, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->realFps:F

    .line 140
    sget-object v3, Lcom/oplus/tblplayer/managers/SlowMotionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse fps form title is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", realFps: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->realFps:F

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    iget v1, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->realFps:F

    iget v3, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowFps:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->timesOfSlows:F

    .line 144
    sget-object v1, Lcom/oplus/tblplayer/managers/SlowMotionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timesOfSlows: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->timesOfSlows:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v12, 0x1

    add-int/2addr v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 147
    new-array v13, v1, [J

    const/4 v14, 0x0

    move v2, v14

    .line 148
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    if-ge v2, v1, :cond_1

    .line 149
    sget-object v3, Lcom/oplus/tblplayer/managers/SlowMotionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sHsrInfo["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_1
    aget-wide v0, v13, v14

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    aget-wide v0, v13, v14

    cmp-long v0, v0, v10

    if-gez v0, :cond_3

    aget-wide v0, v13, v12

    aget-wide v2, v13, v14

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 155
    aget-wide v2, v13, v14

    .line 156
    aget-wide v0, v13, v12

    cmp-long v0, v0, v10

    if-lez v0, :cond_2

    move-wide v4, v10

    goto :goto_1

    :cond_2
    aget-wide v0, v13, v12

    move-wide v4, v0

    .line 157
    :goto_1
    iget-object v15, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowIfs:[Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;

    iget v8, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowInfoLen:I

    add-int/lit8 v0, v8, 0x1

    iput v0, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowInfoLen:I

    new-instance v16, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;

    const-wide/16 v6, 0x0

    iget v1, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->timesOfSlows:F

    move-object/from16 v0, v16

    move/from16 v17, v1

    move-object/from16 v1, p0

    move/from16 v18, v8

    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;-><init>(Lcom/oplus/tblplayer/managers/SlowMotionManager;JJJF)V

    aput-object v16, v15, v18

    :cond_3
    const/4 v0, 0x2

    .line 160
    aget-wide v1, v13, v0

    aget-wide v3, v13, v12

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5

    aget-wide v1, v13, v0

    cmp-long v1, v1, v10

    if-gez v1, :cond_5

    const/4 v1, 0x3

    aget-wide v2, v13, v1

    aget-wide v4, v13, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 162
    aget-wide v2, v13, v0

    .line 163
    aget-wide v4, v13, v1

    cmp-long v0, v4, v10

    if-lez v0, :cond_4

    move-wide v4, v10

    goto :goto_2

    :cond_4
    aget-wide v0, v13, v1

    move-wide v4, v0

    .line 164
    :goto_2
    iget-object v13, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowIfs:[Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;

    iget v15, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowInfoLen:I

    add-int/lit8 v0, v15, 0x1

    iput v0, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowInfoLen:I

    new-instance v16, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;

    aget-object v0, v13, v14

    .line 166
    invoke-virtual {v0}, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->getSlowEnd()J

    move-result-wide v0

    iget-object v6, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowIfs:[Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;

    aget-object v6, v6, v14

    invoke-virtual {v6}, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->getSlowStart()J

    move-result-wide v6

    sub-long/2addr v0, v6

    iget-object v6, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowIfs:[Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;

    aget-object v6, v6, v14

    .line 167
    invoke-virtual {v6}, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->getEnd()J

    move-result-wide v6

    sub-long/2addr v0, v6

    iget-object v6, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowIfs:[Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;

    aget-object v6, v6, v14

    invoke-virtual {v6}, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->getStart()J

    move-result-wide v6

    add-long/2addr v6, v0

    iget v8, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->timesOfSlows:F

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;-><init>(Lcom/oplus/tblplayer/managers/SlowMotionManager;JJJF)V

    aput-object v16, v13, v15

    .line 170
    :cond_5
    sget-object v0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slowInfoLen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowInfoLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iput-wide v10, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->realDuration:J

    .line 173
    iput-wide v10, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowDuration:J

    move v0, v14

    .line 174
    :goto_3
    iget v1, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowInfoLen:I

    if-ge v0, v1, :cond_6

    .line 175
    iget-wide v1, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowDuration:J

    iget-object v3, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowIfs:[Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->getSlowEnd()J

    move-result-wide v3

    iget-object v5, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowIfs:[Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->getSlowStart()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v5, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowIfs:[Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;

    aget-object v5, v5, v0

    .line 176
    invoke-virtual {v5}, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->getEnd()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v5, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowIfs:[Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->getStart()J

    move-result-wide v5

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowDuration:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 178
    :cond_6
    sget-object v0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->realDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", slowDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget v0, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->slowInfoLen:I

    if-lez v0, :cond_7

    goto :goto_4

    :cond_7
    move v12, v14

    :goto_4
    iput-boolean v12, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->isHsr:Z

    .line 181
    iget-boolean v0, v9, Lcom/oplus/tblplayer/managers/SlowMotionManager;->isHsr:Z

    return v0
.end method

.method public start()V
    .locals 3

    .line 185
    iget-boolean v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->isHsr:Z

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->status:I

    sget v1, Lcom/oplus/tblplayer/managers/SlowMotionManager;->SLOW_MOTION_STATUS_STOPPED:I

    if-eq v0, v1, :cond_1

    .line 188
    sget v0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->SLOW_MOTION_STATUS_RUNNING:I

    iput v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->status:I

    return-void

    .line 191
    :cond_1
    sget v0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->SLOW_MOTION_STATUS_RUNNING:I

    iput v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->status:I

    .line 192
    iget-object v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->updatePlaybackRateAction:Ljava/lang/Runnable;

    sget v1, Lcom/oplus/tblplayer/managers/SlowMotionManager;->SLOW_MOTION_INTERNAL_MS:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->isHsr:Z

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    sget v0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->SLOW_MOTION_STATUS_NEED_STOP:I

    iput v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager;->status:I

    return-void
.end method
