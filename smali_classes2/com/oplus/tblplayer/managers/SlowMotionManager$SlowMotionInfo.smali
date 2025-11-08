.class Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;
.super Ljava/lang/Object;
.source "SlowMotionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/managers/SlowMotionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlowMotionInfo"
.end annotation


# instance fields
.field private end:J

.field private slowEnd:J

.field private slowStart:J

.field private start:J

.field final synthetic this$0:Lcom/oplus/tblplayer/managers/SlowMotionManager;


# direct methods
.method public constructor <init>(Lcom/oplus/tblplayer/managers/SlowMotionManager;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->this$0:Lcom/oplus/tblplayer/managers/SlowMotionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/tblplayer/managers/SlowMotionManager;JJJF)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->this$0:Lcom/oplus/tblplayer/managers/SlowMotionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p2, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->start:J

    .line 26
    iput-wide p4, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->end:J

    add-long/2addr p6, p2

    .line 27
    iput-wide p6, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->slowStart:J

    .line 28
    iget-wide p6, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->slowStart:J

    long-to-float p1, p6

    sub-long/2addr p4, p2

    long-to-float p2, p4

    mul-float/2addr p2, p8

    add-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->slowEnd:J

    return-void
.end method


# virtual methods
.method public getDiff(JZ)J
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_2

    .line 49
    iget-wide v2, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->start:J

    cmp-long p3, p1, v2

    if-gtz p3, :cond_0

    return-wide v0

    :cond_0
    cmp-long p3, p1, v2

    if-lez p3, :cond_1

    .line 51
    iget-wide v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->end:J

    cmp-long p3, p1, v0

    if-gtz p3, :cond_1

    sub-long/2addr p1, v2

    return-wide p1

    .line 54
    :cond_1
    iget-wide p1, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->end:J

    iget-wide v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->start:J

    :goto_0
    sub-long/2addr p1, v0

    return-wide p1

    .line 57
    :cond_2
    iget-wide v2, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->slowStart:J

    cmp-long p3, p1, v2

    if-gez p3, :cond_3

    return-wide v0

    :cond_3
    cmp-long p3, p1, v2

    if-lez p3, :cond_4

    .line 59
    iget-wide v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->slowEnd:J

    cmp-long p3, p1, v0

    if-gtz p3, :cond_4

    sub-long/2addr p1, v2

    return-wide p1

    .line 62
    :cond_4
    iget-wide p1, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->slowEnd:J

    iget-wide v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->slowStart:J

    goto :goto_0
.end method

.method public getEnd()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->end:J

    return-wide v0
.end method

.method public getSlowEnd()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->slowEnd:J

    return-wide v0
.end method

.method public getSlowStart()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->slowStart:J

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->start:J

    return-wide v0
.end method

.method public isInside(JZ)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 69
    iget-wide v2, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->start:J

    cmp-long p3, p1, v2

    if-ltz p3, :cond_0

    iget-wide v2, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->end:J

    cmp-long p0, p1, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 71
    :cond_1
    iget-wide v2, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->slowStart:J

    cmp-long p3, p1, v2

    if-ltz p3, :cond_2

    iget-wide v2, p0, Lcom/oplus/tblplayer/managers/SlowMotionManager$SlowMotionInfo;->slowEnd:J

    cmp-long p0, p1, v2

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method
