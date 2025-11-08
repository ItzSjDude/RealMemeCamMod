.class public Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;
.super Ljava/lang/Object;
.source "OplusFaceBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/facebeauty/OplusFaceBeauty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessParameter"
.end annotation


# instance fields
.field public mAppBeautyParam:[I

.field public mAppBeautyParamSize:I

.field public mAttrResult:[B

.field public mDeviceOrientation:I

.field public mFFDResult:[B

.field public mFaceBeautyLevel:I

.field public mFaceNum:I

.field public mISO:I

.field public mLanguage:Ljava/lang/String;

.field public mMasterFaceIndex:I

.field public mModelPath:Ljava/lang/String;

.field public mProjectName:Ljava/lang/String;

.field public mRegion:Ljava/lang/String;

.field public mSensorName:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;

.field public mVersionCode:I

.field public mbAiAdjustParam:Z

.field public mbFlashSnapshot:Z

.field public mbLowPerformance:Z

.field public mbVideoMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mDeviceOrientation:I

    .line 45
    iput v0, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mFaceBeautyLevel:I

    .line 46
    iput v0, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mISO:I

    .line 47
    iput-boolean v0, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mbVideoMode:Z

    .line 48
    iput-boolean v0, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mbFlashSnapshot:Z

    .line 49
    iput-boolean v0, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mbLowPerformance:Z

    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mbAiAdjustParam:Z

    .line 51
    iput v0, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mAppBeautyParamSize:I

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mAppBeautyParam:[I

    .line 53
    iput-object v1, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mModelPath:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mSensorName:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mLanguage:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mVersion:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mRegion:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mProjectName:Ljava/lang/String;

    .line 59
    iput v0, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mMasterFaceIndex:I

    .line 60
    iput v0, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mFaceNum:I

    .line 61
    iput-object v1, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mFFDResult:[B

    .line 62
    iput-object v1, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mAttrResult:[B

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ProcessParameter;->mVersionCode:I

    return-void
.end method
