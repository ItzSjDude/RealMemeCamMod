.class public Lcom/sensetime/blur/STBlurPreview;
.super Ljava/lang/Object;
.source "STBlurPreview.java"

# interfaces
.implements Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensetime/blur/STBlurPreview$SegmentData;,
        Lcom/sensetime/blur/STBlurPreview$TextureInfo;,
        Lcom/sensetime/blur/STBlurPreview$SegmentThread;,
        Lcom/sensetime/blur/STBlurPreview$Callback;,
        Lcom/sensetime/blur/STBlurPreview$ProcessThread;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final RESIZE_RATIO:I = 0x4

.field private static final SEGMENT_LENGTH:I = 0xf0

.field public static final ST_BLUR_PARAM_TYPE_LEVEL:I = 0x1001

.field public static final ST_BLUR_PARAM_TYPE_MASK_EROSION_VALUE:I = 0x1005

.field public static final ST_BLUR_PARAM_TYPE_MASK_MIN_AREA_SIZE:I = 0x1004

.field public static final ST_BLUR_PARAM_TYPE_RECT_HEIGHT_SCALE:I = 0x1003

.field public static final ST_BLUR_PARAM_TYPE_RECT_WIDTH_SCALE:I = 0x1002

.field public static final ST_BUFFER_ERROR:I = -0x4

.field public static final ST_INTERNAL_ERROR:I = -0x6

.field public static final ST_OK:I = 0x0

.field public static final ST_PARAM_ERROR:I = -0x1

.field public static final ST_PROGRAM_ERROR:I = -0x3

.field public static final ST_SHADER_ERROR:I = -0x2

.field public static final ST_TEXTURE_ERROR:I = -0x5

.field private static final TAG:Ljava/lang/String; = "STBlurPreview"


# instance fields
.field private PROCESS_LIFE_CYCLE_TIME:J

.field private RESET_MASK_CYCLE_TIME:J

.field debugSegCount:J

.field debugSegSumTime:J

.field private m2dTextureIds:[I

.field private mContext:Landroid/content/Context;

.field private mCur2dTextureIdx:I

.field private mFaceCount:I

.field private mFrameNum:I

.field private mFrontCamera:Z

.field private mInitialized:Z

.field private mLast2dTextureId:I

.field private mLastMaskTextureId:I

.field private mLastProcessTime:J

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

.field private mResetMask:Z

.field private mResetMaskTime:J

.field private mResizedTextureId:I

.field private mSegment:Lcom/sensetime/faceapi/FigureSegment;

.field private mSegmentBuffer:[B

.field private mSegmentBufferHeight:I

.field private mSegmentBufferWidth:I

.field private mSegmentModel:Ljava/lang/String;

.field private final mSegmentObject:Ljava/lang/Object;

.field private mSegmentOption:I

.field private mSegmentOutBuffer:Ljava/nio/ByteBuffer;

.field private mSegmentOutBufferInfo:[I

.field private mSegmentThread:Lcom/sensetime/blur/STBlurPreview$SegmentThread;

.field private final mSyncObject:Ljava/lang/Object;

.field private mTmpFaceRects:[Landroid/graphics/Rect;

.field private mTmpYaws:[F

.field private mTrack:Lcom/sensetime/faceapi/FaceTrack;

.field private mUseSegment:Z

.field private mbRetentionOpen:Z

.field private mbSetDefaultParam:Z

.field private needDestroySegTextures:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/sensetime/blur/STBlurPreview;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    .line 117
    sget-object v4, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    sget-object v5, Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;->TWO_THREAD:Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sensetime/blur/STBlurPreview;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6

    .line 121
    sget-object v4, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    sget-object v5, Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;->TWO_THREAD:Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sensetime/blur/STBlurPreview;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;)V
    .locals 9

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 61
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    const/16 v0, 0x1c

    .line 62
    iput v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    .line 72
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    .line 73
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentObject:Ljava/lang/Object;

    const-wide/16 v1, 0xbb8

    .line 82
    iput-wide v1, p0, Lcom/sensetime/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMask:Z

    const-wide/16 v2, 0x12c

    .line 86
    iput-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->RESET_MASK_CYCLE_TIME:J

    .line 89
    iput v1, p0, Lcom/sensetime/blur/STBlurPreview;->mFaceCount:I

    const/4 v2, 0x0

    .line 93
    iput-object v2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentThread:Lcom/sensetime/blur/STBlurPreview$SegmentThread;

    .line 94
    iput-boolean v1, p0, Lcom/sensetime/blur/STBlurPreview;->needDestroySegTextures:Z

    .line 95
    iput-boolean v1, p0, Lcom/sensetime/blur/STBlurPreview;->mbSetDefaultParam:Z

    .line 96
    iput v1, p0, Lcom/sensetime/blur/STBlurPreview;->mCur2dTextureIdx:I

    const/4 v3, 0x5

    .line 97
    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/sensetime/blur/STBlurPreview;->m2dTextureIds:[I

    const/4 v3, -0x1

    .line 98
    iput v3, p0, Lcom/sensetime/blur/STBlurPreview;->mLast2dTextureId:I

    .line 99
    iput v3, p0, Lcom/sensetime/blur/STBlurPreview;->mLastMaskTextureId:I

    .line 100
    iput v3, p0, Lcom/sensetime/blur/STBlurPreview;->mResizedTextureId:I

    .line 101
    iput-boolean v1, p0, Lcom/sensetime/blur/STBlurPreview;->mbRetentionOpen:Z

    const-wide/16 v3, 0x0

    .line 805
    iput-wide v3, p0, Lcom/sensetime/blur/STBlurPreview;->debugSegSumTime:J

    .line 806
    iput-wide v3, p0, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    .line 134
    iget-boolean v1, p0, Lcom/sensetime/blur/STBlurPreview;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/sensetime/blur/STBlurPreview;->destroy()I

    .line 138
    :cond_0
    iput-boolean p2, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    const-string v1, "com.oplus.feature.portrait.retention.support"

    .line 140
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    new-instance v1, Lcom/sensetime/blur/STBlurPreview$SegmentThread;

    invoke-direct {v1, p0, v2}, Lcom/sensetime/blur/STBlurPreview$SegmentThread;-><init>(Lcom/sensetime/blur/STBlurPreview;Lcom/sensetime/blur/STBlurPreview$1;)V

    iput-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentThread:Lcom/sensetime/blur/STBlurPreview$SegmentThread;

    .line 144
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v8, Lcom/sensetime/blur/STBlurPreview$1;

    move-object v2, v8

    move-object v3, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sensetime/blur/STBlurPreview$1;-><init>(Lcom/sensetime/blur/STBlurPreview;ZLjava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;)V

    invoke-direct {v1, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 157
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 159
    invoke-static {p1}, Lcom/sensetime/utils/ShakeDetectorUtils;->getInstance(Landroid/content/Context;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/sensetime/utils/ShakeDetectorUtils;->registerOnShakeListener(Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sensetime/utils/ShakeDetectorUtils;->start()V

    .line 160
    invoke-static {p1}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->start(Landroid/content/Context;)V

    .line 161
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mInitialized:Z

    .line 162
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mContext:Landroid/content/Context;

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$1002(Lcom/sensetime/blur/STBlurPreview;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sensetime/blur/STBlurPreview;Lcom/sensetime/faceapi/FigureSegment;)Lcom/sensetime/faceapi/FigureSegment;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/sensetime/blur/STBlurPreview;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewWidth:I

    return p1
.end method

.method static synthetic access$1202(Lcom/sensetime/blur/STBlurPreview;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewHeight:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sensetime/blur/STBlurPreview;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/sensetime/blur/STBlurPreview;)[I
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sensetime/blur/STBlurPreview;[BII[BZZ)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p6}, Lcom/sensetime/blur/STBlurPreview;->onSegmentRGBA([BII[BZZ)V

    return-void
.end method

.method static synthetic access$1602(Lcom/sensetime/blur/STBlurPreview;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/sensetime/blur/STBlurPreview;->needDestroySegTextures:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sensetime/blur/STBlurPreview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentModel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sensetime/blur/STBlurPreview;Lcom/sensetime/faceapi/FaceTrack;)Lcom/sensetime/faceapi/FaceTrack;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mTrack:Lcom/sensetime/faceapi/FaceTrack;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sensetime/blur/STBlurPreview;)Lcom/sensetime/blur/STBlurPreview$SegmentThread;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentThread:Lcom/sensetime/blur/STBlurPreview$SegmentThread;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sensetime/blur/STBlurPreview;[BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/sensetime/blur/STBlurPreview;->doOnPreviewCallback([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sensetime/blur/STBlurPreview;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/sensetime/blur/STBlurPreview;->setDefaultParamIfNeed(Z)V

    return-void
.end method

.method private destroySegmentTextures()V
    .locals 1

    .line 889
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->needDestroySegTextures:Z

    if-eqz v0, :cond_0

    .line 890
    invoke-direct {p0}, Lcom/sensetime/blur/STBlurPreview;->destroyTextures()V

    const/4 v0, 0x0

    .line 891
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->needDestroySegTextures:Z

    :cond_0
    return-void
.end method

.method private destroyTextures()V
    .locals 4

    const/4 v0, 0x0

    .line 999
    :goto_0
    iget-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->m2dTextureIds:[I

    array-length v2, v1

    const/4 v3, -0x1

    if-ge v0, v2, :cond_0

    .line 1000
    aget v1, v1, v0

    invoke-static {v1}, Lcom/sensetime/utils/OpenGLUtils;->destroyTexture(I)V

    .line 1001
    iget-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->m2dTextureIds:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1004
    :cond_0
    iget v0, p0, Lcom/sensetime/blur/STBlurPreview;->mResizedTextureId:I

    invoke-static {v0}, Lcom/sensetime/utils/OpenGLUtils;->destroyTexture(I)V

    .line 1005
    iput v3, p0, Lcom/sensetime/blur/STBlurPreview;->mResizedTextureId:I

    .line 1006
    iput v3, p0, Lcom/sensetime/blur/STBlurPreview;->mLast2dTextureId:I

    .line 1007
    iput v3, p0, Lcom/sensetime/blur/STBlurPreview;->mLastMaskTextureId:I

    return-void
.end method

.method private doOnPreviewCallback([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 2

    .line 786
    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doOnPreviewCallback data.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STBlurPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    iput-boolean p4, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    .line 791
    iput p2, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewWidth:I

    .line 792
    iput p3, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewHeight:I

    .line 794
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_1

    .line 795
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    if-eqz v0, :cond_2

    .line 796
    invoke-direct/range {p0 .. p5}, Lcom/sensetime/blur/STBlurPreview;->onSegment([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    goto :goto_0

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mTrack:Lcom/sensetime/faceapi/FaceTrack;

    if-eqz v0, :cond_2

    .line 800
    invoke-direct/range {p0 .. p5}, Lcom/sensetime/blur/STBlurPreview;->onTrack([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getMaskTextureByFace(Z)I
    .locals 11

    .line 583
    iget v0, p0, Lcom/sensetime/blur/STBlurPreview;->mFaceCount:I

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 592
    iget-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    array-length v1, v1

    .line 593
    new-array v3, v1, [Landroid/graphics/Rect;

    .line 594
    new-array v4, v1, [F

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    .line 597
    iget-object v6, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpYaws:[F

    aget v6, v6, v5

    aput v6, v4, v5

    .line 598
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v5

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v4

    goto :goto_1

    :cond_2
    move-object v3, v2

    move-object v6, v3

    .line 601
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    move-object v4, v2

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    const/4 v5, 0x0

    .line 607
    iget v7, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewWidth:I

    iget v8, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewHeight:I

    .line 608
    invoke-static {}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getDegree()I

    move-result p1

    add-int/lit16 p1, p1, 0x10e

    rem-int/lit16 v9, p1, 0x168

    iget-boolean v10, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    .line 607
    invoke-static/range {v4 .. v10}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->getMaskTextureByFace([Landroid/graphics/Rect;Z[FIIIZ)I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 601
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getMaskTextureBySegment(Z)I
    .locals 12

    .line 505
    iget v0, p0, Lcom/sensetime/blur/STBlurPreview;->mFaceCount:I

    const/4 v1, -0x1

    if-gtz v0, :cond_1

    .line 506
    sget-boolean p1, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 507
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMaskTextureBySegment: mFaceCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sensetime/blur/STBlurPreview;->mFaceCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "STBlurPreview"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-object v2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBuffer:[B

    .line 519
    iget v3, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferWidth:I

    .line 520
    iget v4, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferHeight:I

    .line 521
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMask:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    move v0, v5

    .line 524
    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_2

    .line 525
    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 528
    :cond_2
    iget-wide v6, p0, Lcom/sensetime/blur/STBlurPreview;->RESET_MASK_CYCLE_TIME:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMaskTime:J

    sub-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    .line 529
    iput-boolean v5, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMask:Z

    :cond_3
    if-nez p1, :cond_5

    if-eqz v2, :cond_5

    const/4 p0, 0x1

    .line 534
    new-array p1, p0, [I

    .line 535
    invoke-static {v2, v3, v4, p0, p1}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->processMaskBuffer([BIIZ[I)I

    .line 537
    sget-boolean p0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 538
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMaskTextureBySegment out after process outTexture : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v5

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "STBlurPreview"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_4
    aget v1, p1, v5

    :cond_5
    return v1

    :catchall_0
    move-exception p0

    .line 521
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 965
    invoke-static {}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onSegment([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v6, p2

    move/from16 v5, p3

    move-object/from16 v10, p5

    .line 809
    iget-object v1, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v2, v1, v12

    mul-int/2addr v2, v5

    aget v1, v1, v11

    mul-int/2addr v1, v6

    if-eq v2, v1, :cond_2

    .line 810
    :cond_0
    iget-object v1, v0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/16 v2, 0xf0

    .line 814
    iget-object v3, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    invoke-virtual {v1, v6, v5, v2, v3}, Lcom/sensetime/faceapi/FigureSegment;->createOutputBuffer(III[I)I

    .line 815
    iget-object v1, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v2, v1, v12

    aget v1, v1, v11

    mul-int/2addr v2, v1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    .line 818
    :cond_2
    iget v1, v0, Lcom/sensetime/blur/STBlurPreview;->mFaceCount:I

    if-gtz v1, :cond_4

    .line 819
    sget-boolean v1, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFaceCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/sensetime/blur/STBlurPreview;->mFaceCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " skip segment"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STBlurPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 826
    :cond_4
    iget-object v1, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 827
    invoke-static/range {p4 .. p4}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getFaceOrientation(Z)Lcom/sensetime/faceapi/model/FaceOrientation;

    move-result-object v7

    .line 828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 830
    iget-object v15, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentObject:Ljava/lang/Object;

    monitor-enter v15

    .line 831
    :try_start_0
    iget-object v1, v0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    if-eqz v1, :cond_5

    .line 832
    iget-object v1, v0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    sget-object v3, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    iget-object v2, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    iget v9, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sensetime/faceapi/FigureSegment;->segment([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;[BI)I

    .line 835
    :cond_5
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 837
    iget-wide v1, v0, Lcom/sensetime/blur/STBlurPreview;->debugSegSumTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v13

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/sensetime/blur/STBlurPreview;->debugSegSumTime:J

    .line 838
    iget-wide v1, v0, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    .line 840
    sget-boolean v1, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "segment time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/sensetime/blur/STBlurPreview;->debugSegSumTime:J

    iget-wide v4, v0, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "STBlurPreview"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_6
    iget-object v1, v0, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 845
    :try_start_1
    iget-object v2, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iput-object v2, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBuffer:[B

    .line 846
    iget-object v2, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v2, v2, v12

    iput v2, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferWidth:I

    .line 847
    iget-object v2, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v2, v2, v11

    iput v2, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferHeight:I

    .line 848
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_7

    .line 851
    iget-boolean v0, v0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    const/4 v1, 0x0

    invoke-interface {v10, v0, v1, v1}, Lcom/sensetime/blur/STBlurPreview$Callback;->onResult(Z[B[Lcom/sensetime/faceapi/model/FaceInfo;)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 848
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 835
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private onSegmentRGBA([BII[BZZ)V
    .locals 12

    move-object v0, p0

    .line 981
    sget-boolean v1, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "STBlurPreview"

    const-string v2, "in onSegmentRGBA"

    .line 982
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_0
    invoke-static/range {p5 .. p5}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getFaceOrientation(Z)Lcom/sensetime/faceapi/model/FaceOrientation;

    move-result-object v9

    .line 987
    iget-object v1, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentObject:Ljava/lang/Object;

    monitor-enter v1

    .line 988
    :try_start_0
    iget-object v2, v0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    if-eqz v2, :cond_1

    .line 989
    iget-object v3, v0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    sget-object v5, Lcom/sensetime/faceapi/model/CvPixelFormat;->RGBA8888:Lcom/sensetime/faceapi/model/CvPixelFormat;

    mul-int/lit8 v8, p2, 0x4

    iget v11, v0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    move-object v4, p1

    move v6, p2

    move v7, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v3 .. v11}, Lcom/sensetime/faceapi/FigureSegment;->segment([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;[BI)I

    .line 991
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "STBlurPreview"

    const-string v1, "onSegmentRGBA segment ret = segment"

    .line 994
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 991
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onTrack([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 7

    .line 863
    invoke-static {p4}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getFaceOrientation(Z)Lcom/sensetime/faceapi/model/FaceOrientation;

    move-result-object v6

    .line 864
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mTrack:Lcom/sensetime/faceapi/FaceTrack;

    sget-object v2, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sensetime/faceapi/FaceTrack;->track([BLcom/sensetime/faceapi/model/CvPixelFormat;IILcom/sensetime/faceapi/model/FaceOrientation;)[Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object p1

    .line 866
    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrack dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sensetime/faceapi/model/FaceOrientation;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", face: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 868
    :cond_0
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STBlurPreview"

    .line 867
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sensetime/blur/STBlurPreview;->onFaceUpdate([Lcom/sensetime/faceapi/model/FaceInfo;IIZ)V

    if-eqz p5, :cond_2

    const/16 v0, 0x5a

    .line 874
    invoke-static {p1, p2, p3, p4, v0}, Lcom/sensetime/faceapi/utils/FaceRotationUtil;->rotateFaceInfos([Lcom/sensetime/faceapi/model/FaceInfo;IIZI)V

    .line 875
    iget-boolean p0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    const/4 p1, 0x0

    invoke-interface {p5, p0, p1, p1}, Lcom/sensetime/blur/STBlurPreview$Callback;->onResult(Z[B[Lcom/sensetime/faceapi/model/FaceInfo;)V

    :cond_2
    return-void
.end method

.method public static setDebug(Z)I
    .locals 0

    .line 947
    sput-boolean p0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    .line 948
    invoke-static {p0}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->setDebug(Z)I

    move-result p0

    return p0
.end method

.method private setDefaultParamIfNeed(Z)V
    .locals 2

    .line 301
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mbSetDefaultParam:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    if-eq v0, p1, :cond_3

    .line 302
    :cond_0
    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultParamIfNeed mFrontCamera = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", frontCamera = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STBlurPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v0, 0x1004

    const/16 v1, 0x1005

    if-eqz p1, :cond_2

    const p1, 0x3e99999a    # 0.3f

    .line 307
    invoke-virtual {p0, v1, p1}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    const p1, 0x3e19999a    # 0.15f

    .line 308
    invoke-virtual {p0, v0, p1}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    const/16 p1, 0x1c

    .line 309
    iput p1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    goto :goto_0

    :cond_2
    const p1, 0x3ec7ae14    # 0.39f

    .line 313
    invoke-virtual {p0, v1, p1}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    const p1, 0x3de147ae    # 0.11f

    .line 314
    invoke-virtual {p0, v0, p1}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    const/16 p1, 0x18

    .line 315
    iput p1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    :goto_0
    const/4 p1, 0x1

    .line 318
    iput-boolean p1, p0, Lcom/sensetime/blur/STBlurPreview;->mbSetDefaultParam:Z

    :cond_3
    return-void
.end method


# virtual methods
.method public destroy()I
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sensetime/utils/ShakeDetectorUtils;->getInstance(Landroid/content/Context;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sensetime/utils/ShakeDetectorUtils;->unregisterOnShakeListener(Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensetime/utils/ShakeDetectorUtils;->stop()V

    .line 170
    invoke-static {}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->stop()V

    .line 172
    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    const-string v1, "STBlurPreview"

    if-eqz v0, :cond_0

    const-string v0, "destroy"

    .line 173
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {v0}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->release()V

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    invoke-virtual {v0}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 185
    :goto_0
    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "destroy process thread join"

    .line 186
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    iput-object v2, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentThread:Lcom/sensetime/blur/STBlurPreview$SegmentThread;

    if-eqz v0, :cond_4

    .line 193
    invoke-virtual {v0}, Lcom/sensetime/blur/STBlurPreview$SegmentThread;->release()V

    .line 196
    :try_start_1
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentThread:Lcom/sensetime/blur/STBlurPreview$SegmentThread;

    invoke-virtual {v0}, Lcom/sensetime/blur/STBlurPreview$SegmentThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 201
    :goto_1
    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "destroy segment thread join"

    .line 202
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_3
    iput-object v2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentThread:Lcom/sensetime/blur/STBlurPreview$SegmentThread;

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mTrack:Lcom/sensetime/faceapi/FaceTrack;

    if-eqz v0, :cond_5

    .line 209
    invoke-virtual {v0}, Lcom/sensetime/faceapi/FaceTrack;->release()V

    .line 210
    iput-object v2, p0, Lcom/sensetime/blur/STBlurPreview;->mTrack:Lcom/sensetime/faceapi/FaceTrack;

    .line 213
    :cond_5
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    if-eqz v0, :cond_6

    .line 214
    invoke-virtual {v0}, Lcom/sensetime/faceapi/FigureSegment;->release()V

    .line 215
    iput-object v2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    :cond_6
    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mInitialized:Z

    return v0
.end method

.method public destroyRender()I
    .locals 1

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->needDestroySegTextures:Z

    .line 267
    invoke-direct {p0}, Lcom/sensetime/blur/STBlurPreview;->destroyTextures()V

    .line 268
    invoke-static {}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->destroy()I

    move-result p0

    return p0
.end method

.method public doOnPreviewProcess(IIIIII[IZZ)I
    .locals 16

    move-object/from16 v12, p0

    move/from16 v0, p4

    move/from16 v5, p5

    .line 369
    iget-boolean v1, v12, Lcom/sensetime/blur/STBlurPreview;->needDestroySegTextures:Z

    if-eqz v1, :cond_0

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/4 v2, -0x1

    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, p8

    move-object/from16 p6, p7

    .line 370
    invoke-static/range {p1 .. p6}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->processTextureByMask(IIIIZ[I)I

    move-result v0

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/sensetime/blur/STBlurPreview;->destroySegmentTextures()V

    return v0

    .line 375
    :cond_0
    iget-object v1, v12, Lcom/sensetime/blur/STBlurPreview;->mSegmentThread:Lcom/sensetime/blur/STBlurPreview$SegmentThread;

    invoke-static {v1}, Lcom/sensetime/blur/STBlurPreview$SegmentThread;->access$500(Lcom/sensetime/blur/STBlurPreview$SegmentThread;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/4 v2, -0x1

    move/from16 p0, p1

    move/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, p8

    move-object/from16 p5, p7

    .line 376
    invoke-static/range {p0 .. p5}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->processTextureByMask(IIIIZ[I)I

    move-result v0

    return v0

    :cond_1
    const/4 v1, 0x1

    .line 379
    new-array v2, v1, [I

    iget-object v3, v12, Lcom/sensetime/blur/STBlurPreview;->m2dTextureIds:[I

    iget v4, v12, Lcom/sensetime/blur/STBlurPreview;->mCur2dTextureIdx:I

    aget v3, v3, v4

    const/4 v13, 0x0

    aput v3, v2, v13

    .line 381
    aget v3, v2, v13

    const/4 v4, 0x0

    const/4 v6, -0x1

    if-gtz v3, :cond_2

    .line 382
    invoke-static {v4, v0, v5, v6}, Lcom/sensetime/utils/OpenGLUtils;->loadTexture(Ljava/nio/Buffer;III)I

    move-result v3

    aput v3, v2, v13

    :cond_2
    move/from16 v14, p1

    .line 385
    invoke-static {v14, v2}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->copy2DTexture(I[I)I

    .line 386
    iget-object v3, v12, Lcom/sensetime/blur/STBlurPreview;->m2dTextureIds:[I

    iget v7, v12, Lcom/sensetime/blur/STBlurPreview;->mCur2dTextureIdx:I

    aget v8, v2, v13

    aput v8, v3, v7

    add-int/2addr v7, v1

    .line 387
    iput v7, v12, Lcom/sensetime/blur/STBlurPreview;->mCur2dTextureIdx:I

    array-length v3, v3

    rem-int/2addr v7, v3

    iput v7, v12, Lcom/sensetime/blur/STBlurPreview;->mCur2dTextureIdx:I

    .line 388
    div-int/lit8 v7, v0, 0x4

    .line 389
    div-int/lit8 v8, v5, 0x4

    .line 391
    iget-object v3, v12, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v9, v3, v13

    if-lez v9, :cond_3

    aget v9, v3, v1

    if-lez v9, :cond_3

    aget v9, v3, v13

    mul-int/2addr v9, v8

    aget v1, v3, v1

    mul-int/2addr v1, v7

    if-eq v9, v1, :cond_5

    .line 392
    :cond_3
    iget-object v1, v12, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    if-nez v1, :cond_4

    return v6

    :cond_4
    const/16 v3, 0xf0

    .line 396
    iget-object v9, v12, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    invoke-virtual {v1, v7, v8, v3, v9}, Lcom/sensetime/faceapi/FigureSegment;->createOutputBuffer(III[I)I

    :cond_5
    mul-int v1, v7, v8

    mul-int/lit8 v1, v1, 0x4

    .line 399
    new-array v9, v1, [B

    .line 401
    iget v1, v12, Lcom/sensetime/blur/STBlurPreview;->mResizedTextureId:I

    if-gtz v1, :cond_6

    .line 402
    invoke-static {v4, v7, v8, v6}, Lcom/sensetime/utils/OpenGLUtils;->loadTexture(Ljava/nio/Buffer;III)I

    move-result v1

    iput v1, v12, Lcom/sensetime/blur/STBlurPreview;->mResizedTextureId:I

    .line 405
    :cond_6
    aget v1, v2, v13

    iget v3, v12, Lcom/sensetime/blur/STBlurPreview;->mResizedTextureId:I

    invoke-static {v1, v3, v7, v8}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->ResizeTexture(IIII)I

    .line 406
    iget v1, v12, Lcom/sensetime/blur/STBlurPreview;->mResizedTextureId:I

    invoke-static {v1, v7, v8, v9}, Lcom/sensetime/utils/OpenGLUtils;->readPix(III[B)V

    .line 408
    iget-object v1, v12, Lcom/sensetime/blur/STBlurPreview;->mSegmentThread:Lcom/sensetime/blur/STBlurPreview$SegmentThread;

    invoke-static {v1}, Lcom/sensetime/blur/STBlurPreview$SegmentThread;->access$500(Lcom/sensetime/blur/STBlurPreview$SegmentThread;)Z

    move-result v1

    if-nez v1, :cond_7

    return v13

    .line 412
    :cond_7
    iget-object v1, v12, Lcom/sensetime/blur/STBlurPreview;->mSegmentThread:Lcom/sensetime/blur/STBlurPreview$SegmentThread;

    invoke-virtual {v1}, Lcom/sensetime/blur/STBlurPreview$SegmentThread;->getLatestTextureInfo()Lcom/sensetime/blur/STBlurPreview$TextureInfo;

    move-result-object v15

    .line 415
    :try_start_0
    iget-object v1, v12, Lcom/sensetime/blur/STBlurPreview;->mSegmentThread:Lcom/sensetime/blur/STBlurPreview$SegmentThread;

    invoke-static {v1}, Lcom/sensetime/blur/STBlurPreview$SegmentThread;->access$600(Lcom/sensetime/blur/STBlurPreview$SegmentThread;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v11

    new-instance v10, Lcom/sensetime/blur/STBlurPreview$SegmentData;

    aget v3, v2, v13

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v9

    move/from16 v9, p6

    move-object v0, v10

    move/from16 v10, p8

    move-object v13, v11

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/sensetime/blur/STBlurPreview$SegmentData;-><init>(Lcom/sensetime/blur/STBlurPreview;III[BIIIZZ)V

    invoke-interface {v13, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 418
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 421
    :goto_0
    iget-object v0, v12, Lcom/sensetime/blur/STBlurPreview;->mSegmentThread:Lcom/sensetime/blur/STBlurPreview$SegmentThread;

    invoke-static {v0}, Lcom/sensetime/blur/STBlurPreview$SegmentThread;->access$500(Lcom/sensetime/blur/STBlurPreview$SegmentThread;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    if-nez v15, :cond_a

    .line 426
    iget v2, v12, Lcom/sensetime/blur/STBlurPreview;->mLast2dTextureId:I

    if-gtz v2, :cond_9

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/4 v2, -0x1

    move/from16 p0, p1

    move/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, p8

    move-object/from16 p5, p7

    .line 427
    invoke-static/range {p0 .. p5}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->processTextureByMask(IIIIZ[I)I

    move-result v0

    return v0

    .line 429
    :cond_9
    iget v3, v12, Lcom/sensetime/blur/STBlurPreview;->mLastMaskTextureId:I

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p8

    move-object/from16 v7, p7

    invoke-static/range {v2 .. v7}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->processTextureByMask(IIIIZ[I)I

    move-result v0

    return v0

    .line 434
    :cond_a
    iget-object v0, v15, Lcom/sensetime/blur/STBlurPreview$TextureInfo;->maskData:[B

    iget v1, v15, Lcom/sensetime/blur/STBlurPreview$TextureInfo;->maskWidth:I

    iget v2, v15, Lcom/sensetime/blur/STBlurPreview$TextureInfo;->maskHeight:I

    move/from16 v3, p9

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureBySegment([BIIZ)I

    move-result v4

    .line 436
    iget v0, v15, Lcom/sensetime/blur/STBlurPreview$TextureInfo;->src2dTextureId:I

    iput v0, v12, Lcom/sensetime/blur/STBlurPreview;->mLast2dTextureId:I

    .line 437
    iput v4, v12, Lcom/sensetime/blur/STBlurPreview;->mLastMaskTextureId:I

    .line 438
    iget v3, v15, Lcom/sensetime/blur/STBlurPreview$TextureInfo;->src2dTextureId:I

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p8

    move-object/from16 v8, p7

    invoke-static/range {v3 .. v8}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->processTextureByMask(IIIIZ[I)I

    move-result v0

    return v0
.end method

.method public getMaskTextureBySegment([BIIZ)I
    .locals 9

    if-eqz p4, :cond_0

    const/4 p0, -0x2

    return p0

    .line 558
    :cond_0
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMask:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    move v0, v2

    .line 559
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 560
    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_1
    iget-wide v3, p0, Lcom/sensetime/blur/STBlurPreview;->RESET_MASK_CYCLE_TIME:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMaskTime:J

    sub-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 564
    iput-boolean v2, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMask:Z

    :cond_2
    if-nez p4, :cond_4

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    .line 569
    new-array p4, p0, [I

    .line 570
    invoke-static {p1, p2, p3, p0, p4}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->processMaskBuffer([BIIZ[I)I

    .line 572
    sget-boolean p0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 573
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getMaskTextureBySegment out after process outTexture : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p4, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "STBlurPreview"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_3
    aget v1, p4, v2

    :cond_4
    return v1
.end method

.method public getTimeLog()Ljava/lang/String;
    .locals 5

    .line 969
    iget-wide v0, p0, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 973
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "segment time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sensetime/blur/STBlurPreview;->debugSegSumTime:J

    iget-wide v3, p0, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initRender(IIZ)I
    .locals 4

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/sensetime/blur/STBlurPreview;->mFrameNum:I

    .line 231
    invoke-static {p1, p2}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->init(II)I

    move-result p1

    .line 233
    iget-object p2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentModel:Ljava/lang/String;

    const v0, 0x3e19999a    # 0.15f

    const v1, 0x3c23d70a    # 0.01f

    const/16 v2, 0x1005

    const/16 v3, 0x1004

    if-nez p2, :cond_1

    const p2, 0x3e99999a    # 0.3f

    .line 234
    invoke-virtual {p0, v2, p2}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    if-eqz p3, :cond_0

    .line 237
    invoke-virtual {p0, v3, v0}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p0, v3, v1}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    goto :goto_0

    :cond_1
    const p2, 0x3ec7ae14    # 0.39f

    .line 242
    invoke-virtual {p0, v2, p2}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    if-eqz p3, :cond_2

    .line 245
    invoke-virtual {p0, v3, v0}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    :goto_0
    if-eqz p3, :cond_3

    const/16 p2, 0x1c

    .line 252
    iput p2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    goto :goto_1

    :cond_3
    const/16 p2, 0x18

    .line 255
    iput p2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    :goto_1
    return p1
.end method

.method public onFaceUpdate([Lcom/sensetime/faceapi/model/FaceInfo;IIZ)V
    .locals 3

    const/4 v0, 0x0

    .line 741
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    .line 742
    iput-boolean p4, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    .line 743
    iput p2, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewWidth:I

    .line 744
    iput p3, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewHeight:I

    .line 746
    iget-object p2, p0, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter p2

    if-eqz p1, :cond_0

    .line 747
    :try_start_0
    array-length p3, p1

    if-lez p3, :cond_0

    .line 748
    array-length p3, p1

    .line 749
    new-array p4, p3, [Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    .line 750
    new-array p4, p3, [F

    iput-object p4, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpYaws:[F

    :goto_0
    if-ge v0, p3, :cond_1

    .line 753
    iget-object p4, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpYaws:[F

    aget-object v1, p1, v0

    iget v1, v1, Lcom/sensetime/faceapi/model/FaceInfo;->yaw:F

    aput v1, p4, v0

    .line 754
    iget-object p4, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 757
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    .line 758
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpYaws:[F

    .line 760
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    return-void

    :catchall_0
    move-exception p0

    .line 760
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPreviewCallback([BIIIZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 620
    invoke-virtual/range {v0 .. v6}, Lcom/sensetime/blur/STBlurPreview;->onPreviewCallback([BIIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    return-void
.end method

.method public onPreviewCallback([BIIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v8, p6

    .line 633
    invoke-virtual/range {v0 .. v8}, Lcom/sensetime/blur/STBlurPreview;->onPreviewCallback([BIIIZZILcom/sensetime/blur/STBlurPreview$Callback;)V

    return-void
.end method

.method public onPreviewCallback([BIIIZZILcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 6

    .line 649
    iput p4, p0, Lcom/sensetime/blur/STBlurPreview;->mFaceCount:I

    const-string p4, "STBlurPreview"

    const/4 v0, 0x1

    if-le p7, v0, :cond_1

    .line 651
    iget v0, p0, Lcom/sensetime/blur/STBlurPreview;->mFrameNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sensetime/blur/STBlurPreview;->mFrameNum:I

    rem-int/2addr v0, p7

    if-eqz v0, :cond_1

    .line 652
    sget-boolean p0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "onPreviewCallback drop this frame"

    .line 653
    invoke-static {p4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 659
    :cond_1
    sget-boolean p7, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p7, :cond_2

    const-string p7, "onPreviewCallback do"

    .line 660
    invoke-static {p4, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p6, :cond_4

    .line 664
    iget-object p4, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    if-nez p4, :cond_3

    .line 665
    new-instance p4, Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    invoke-direct {p4, p0}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;-><init>(Lcom/sensetime/blur/STBlurPreview;)V

    iput-object p4, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    .line 666
    iget-object p4, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    invoke-virtual {p4}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->start()V

    .line 669
    :cond_3
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->updateBuffer([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    goto :goto_0

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p8

    .line 671
    invoke-direct/range {v0 .. v5}, Lcom/sensetime/blur/STBlurPreview;->doOnPreviewCallback([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    .line 674
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    return-void
.end method

.method public onSegmentUpdate([BIIII)V
    .locals 1

    const/4 v0, 0x1

    .line 772
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    .line 774
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_0
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBuffer:[B

    .line 776
    iput p2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferWidth:I

    .line 777
    iput p3, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferHeight:I

    .line 778
    iput p4, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewWidth:I

    .line 779
    iput p5, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewHeight:I

    .line 780
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    return-void

    :catchall_0
    move-exception p0

    .line 780
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onShake(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/sensetime/blur/STBlurPreview;->resetMask()V

    :cond_0
    return-void
.end method

.method public processOESTexture(III[IZ)I
    .locals 6

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 336
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0, p5}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p5

    goto :goto_0

    .line 339
    :cond_0
    invoke-direct {p0, p5}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p5

    goto :goto_0

    .line 342
    :cond_1
    sget-boolean p5, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p5, :cond_2

    const-string p5, "STBlurPreview"

    const-string v0, "processOESTexture mask beyond the life cycle!"

    .line 343
    invoke-static {p5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p5, -0x1

    :goto_0
    move v1, p5

    .line 347
    iget-boolean v4, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    move v0, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->processOESTextureByMask(IIIIZ[I)I

    move-result p0

    return p0
.end method

.method public processOESTextureGradual(III[F[IZ)I
    .locals 8

    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 487
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_0

    .line 488
    invoke-direct {p0, p6}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p6

    goto :goto_0

    .line 490
    :cond_0
    invoke-direct {p0, p6}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p6

    goto :goto_0

    .line 493
    :cond_1
    sget-boolean p6, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p6, :cond_2

    const-string p6, "STBlurPreview"

    const-string v0, "processOESTexture mask beyond the life cycle!"

    .line 494
    invoke-static {p6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p6, -0x1

    :goto_0
    move v1, p6

    .line 498
    iget-boolean v4, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    .line 499
    invoke-static {}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getDegree()I

    move-result v5

    move v0, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    .line 498
    invoke-static/range {v0 .. v7}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->processOESTexureByMaskGradual(IIIIZI[F[I)I

    move-result p0

    return p0
.end method

.method public processTexture(III[IZ)I
    .locals 6

    .line 281
    invoke-direct {p0}, Lcom/sensetime/blur/STBlurPreview;->destroySegmentTextures()V

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 285
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0, p5}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p5

    goto :goto_0

    .line 288
    :cond_0
    invoke-direct {p0, p5}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p5

    goto :goto_0

    .line 291
    :cond_1
    sget-boolean p5, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p5, :cond_2

    const-string p5, "STBlurPreview"

    const-string v0, "processTexture mask beyond the life cycle!"

    .line 292
    invoke-static {p5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p5, -0x1

    :goto_0
    move v1, p5

    .line 296
    iget-boolean v4, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    move v0, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->processTextureByMask(IIIIZ[I)I

    move-result p0

    return p0
.end method

.method public processTextureGradual(III[F[IZ)I
    .locals 8

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 457
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0, p6}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p6

    goto :goto_0

    .line 460
    :cond_0
    invoke-direct {p0, p6}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p6

    goto :goto_0

    .line 463
    :cond_1
    sget-boolean p6, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p6, :cond_2

    const-string p6, "STBlurPreview"

    const-string v0, "processOESTexture mask beyond the life cycle!"

    .line 464
    invoke-static {p6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p6, -0x1

    :goto_0
    move v1, p6

    .line 468
    iget-boolean v4, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    .line 469
    invoke-static {}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getDegree()I

    move-result v5

    move v0, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    .line 468
    invoke-static/range {v0 .. v7}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->processTexureByMaskGradual(IIIIZI[F[I)I

    move-result p0

    return p0
.end method

.method public resetMask()V
    .locals 2

    .line 880
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mbRetentionOpen:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 884
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMask:Z

    .line 885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMaskTime:J

    return-void
.end method

.method public resetSegmentThread()V
    .locals 0

    .line 928
    iget-object p0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentThread:Lcom/sensetime/blur/STBlurPreview$SegmentThread;

    if-eqz p0, :cond_0

    .line 929
    invoke-virtual {p0}, Lcom/sensetime/blur/STBlurPreview$SegmentThread;->clear()V

    :cond_0
    return-void
.end method

.method public rotateGrdualTexture(IZZ)I
    .locals 0

    .line 914
    invoke-static {p1, p2, p3}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->rotateGradualTexture(IZZ)I

    move-result p0

    return p0
.end method

.method public rotateMaskTexture(IZZ)I
    .locals 0

    .line 903
    invoke-static {p1, p2, p3}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->rotateMaskTexture(IZZ)I

    move-result p0

    return p0
.end method

.method public setDebugMask(Z)I
    .locals 0

    .line 957
    invoke-static {p1}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->setDebugMask(Z)I

    move-result p0

    return p0
.end method

.method public setParam(IF)I
    .locals 0

    .line 924
    invoke-static {p1, p2}, Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;->setParam(IF)I

    move-result p0

    return p0
.end method

.method public setRetentionOpen(Z)V
    .locals 0

    .line 1011
    iput-boolean p1, p0, Lcom/sensetime/blur/STBlurPreview;->mbRetentionOpen:Z

    return-void
.end method

.method public setSegmentOption(I)V
    .locals 0

    .line 938
    iput p1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    return-void
.end method
