.class public Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;
.super Ljava/lang/Object;
.source "OplusFFD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ffd/OplusFFD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessParameter"
.end annotation


# instance fields
.field public mAttrResult:Ljava/nio/ByteBuffer;

.field public mAttrResultSize:I

.field public mDeviceOrientation:I

.field public mExifResult:Ljava/nio/ByteBuffer;

.field public mExifSize:I

.field public mFFDResult:Ljava/nio/ByteBuffer;

.field public mFFDResultSize:I

.field public mFaceNum:I

.field public mFrontCamera:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;->mDeviceOrientation:I

    .line 36
    iput-boolean v0, p0, Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;->mFrontCamera:Z

    .line 37
    iput v0, p0, Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;->mFaceNum:I

    .line 38
    iput v0, p0, Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;->mFFDResultSize:I

    .line 39
    iput v0, p0, Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;->mAttrResultSize:I

    .line 40
    iput v0, p0, Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;->mExifSize:I

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;->mFFDResult:Ljava/nio/ByteBuffer;

    .line 42
    iput-object v0, p0, Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;->mAttrResult:Ljava/nio/ByteBuffer;

    .line 43
    iput-object v0, p0, Lcom/oplus/camera/ffd/OplusFFD$ProcessParameter;->mExifResult:Ljava/nio/ByteBuffer;

    return-void
.end method
