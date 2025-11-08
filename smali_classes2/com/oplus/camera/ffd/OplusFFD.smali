.class public Lcom/oplus/camera/ffd/OplusFFD;
.super Ljava/lang/Object;
.source "OplusFFD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;,
        Lcom/oplus/camera/ffd/OplusFFD$ImageInfo;
    }
.end annotation


# static fields
.field public static final FACE_INFO_ATTR:I = 0x2

.field public static final FACE_INFO_FD:I = 0x1

.field public static final FACE_INFO_MASTER:I = 0x8

.field public static final FACE_INFO_SKINSEG:I = 0x4

.field public static final IMAGE_FMT_NV12:I = 0x0

.field public static final IMAGE_FMT_NV21:I = 0x1

.field public static final IMAGE_FMT_RGB888:I = 0x3

.field public static final IMAGE_FMT_RGBA8888:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OplusFFD"


# instance fields
.field private mHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OplusFFDJni"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/oplus/camera/ffd/OplusFFD;->mHandle:J

    return-void
.end method

.method private native init(ILjava/lang/String;)I
.end method

.method private native process(J[BLcom/oplus/camera/ffd/OplusFFD$ImageInfo;Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;)I
.end method

.method private native processSplitYUV(J[B[BLcom/oplus/camera/ffd/OplusFFD$ImageInfo;Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;)I
.end method

.method private native release(J)I
.end method

.method private native setDebug(JZZZZ)I
.end method


# virtual methods
.method public initialize(ILjava/lang/String;)I
    .locals 4

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ffd/OplusFFD;->init(ILjava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize, faceInfoMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", modelPath: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OplusFFD"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-eqz p1, :cond_0

    .line 52
    iput-wide v0, p0, Lcom/oplus/camera/ffd/OplusFFD;->mHandle:J

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public process([BLcom/oplus/camera/ffd/OplusFFD$ImageInfo;Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;)I
    .locals 6

    .line 74
    iget-wide v1, p0, Lcom/oplus/camera/ffd/OplusFFD;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ffd/OplusFFD;->process(J[BLcom/oplus/camera/ffd/OplusFFD$ImageInfo;Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 78
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process, yuvBuffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", imageInfo: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", parameter: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OplusFFD"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public processSplitYUV([B[BLcom/oplus/camera/ffd/OplusFFD$ImageInfo;Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;)I
    .locals 7

    .line 61
    iget-wide v1, p0, Lcom/oplus/camera/ffd/OplusFFD;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 62
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ffd/OplusFFD;->processSplitYUV(J[B[BLcom/oplus/camera/ffd/OplusFFD$ImageInfo;Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 65
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process, mHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oplus/camera/ffd/OplusFFD;->mHandle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", yBuffer: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", uvBuffer: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", imageInfo: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", parameter: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", result: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusFFD"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public release()I
    .locals 4

    .line 87
    iget-wide v0, p0, Lcom/oplus/camera/ffd/OplusFFD;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 88
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ffd/OplusFFD;->release(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 91
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release, mHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oplus/camera/ffd/OplusFFD;->mHandle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", result: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OplusFFD"

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setDebug(ZZZZ)I
    .locals 7

    .line 99
    iget-wide v1, p0, Lcom/oplus/camera/ffd/OplusFFD;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 100
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ffd/OplusFFD;->setDebug(JZZZZ)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 103
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDebug, mHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oplus/camera/ffd/OplusFFD;->mHandle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", fbDump: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", drawMarks: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", printAttr: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", printFFD: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", result: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusFFD"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
