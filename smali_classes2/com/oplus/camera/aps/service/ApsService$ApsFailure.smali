.class public Lcom/oplus/camera/aps/service/ApsService$ApsFailure;
.super Ljava/lang/Object;
.source "ApsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/aps/service/ApsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApsFailure"
.end annotation


# static fields
.field public static final TYPE_CAPTURE_FAIL:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_PREVIEW_FAIL:I = 0x2


# instance fields
.field public mFrameNumber:J

.field public mImageNums:I

.field public mMergeNums:I

.field public mTimestamp:J

.field public mType:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 936
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;-><init>(IJJII)V

    return-void
.end method

.method public constructor <init>(IJJII)V
    .locals 3

    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 929
    iput v0, p0, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mType:I

    const-wide/16 v1, -0x1

    .line 930
    iput-wide v1, p0, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mFrameNumber:J

    const-wide/16 v1, 0x0

    .line 931
    iput-wide v1, p0, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mTimestamp:J

    .line 932
    iput v0, p0, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mImageNums:I

    .line 933
    iput v0, p0, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mMergeNums:I

    .line 940
    iput p1, p0, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mType:I

    .line 941
    iput-wide p2, p0, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mFrameNumber:J

    .line 942
    iput-wide p4, p0, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mTimestamp:J

    .line 943
    iput p6, p0, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mImageNums:I

    .line 944
    iput p7, p0, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mMergeNums:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 950
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mType: "

    .line 951
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFrameNumber: "

    .line 952
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mFrameNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTimestamp: "

    .line 953
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mImageNums: "

    .line 954
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mImageNums:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMergeNums: "

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mMergeNums:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 956
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
