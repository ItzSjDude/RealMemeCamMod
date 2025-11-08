.class public Lcom/oplus/camera/capmode/t;
.super Lcom/oplus/camera/capmode/w;
.source "StickerMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/capmode/t$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:J

.field private C:J

.field private D:Z

.field private E:Lcom/oplus/camera/Storage$CameraPicture;

.field private F:Z

.field private G:Z

.field private H:Lcom/oplus/camera/ui/preview/a/p;

.field private I:Lcom/oplus/camera/sticker/ui/i;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/lang/Runnable;

.field private i:Lcom/oplus/camera/sticker/ui/h;

.field private j:Lcom/oplus/camera/sticker/ui/l;

.field private k:Lcom/oplus/camera/ui/preview/a/v;

.field private l:Ljava/lang/Float;

.field private m:Ljava/lang/Float;

.field private n:Ljava/lang/Integer;

.field private o:Ljava/lang/Integer;

.field private p:Ljava/lang/Long;

.field private q:Landroid/media/ImageReader;

.field private r:Landroid/media/ImageReader;

.field private s:I

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/sticker/ui/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/oplus/camera/sticker/ui/c;

.field private z:Lcom/oplus/camera/aps/service/ThumbnailItem;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 370
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/w;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 126
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->g:Ljava/lang/Object;

    .line 127
    new-instance p1, Lcom/oplus/camera/capmode/-$$Lambda$Udg34mRWRHTn64j-v8WFCDjd4mQ;

    invoke-direct {p1, p0}, Lcom/oplus/camera/capmode/-$$Lambda$Udg34mRWRHTn64j-v8WFCDjd4mQ;-><init>(Lcom/oplus/camera/capmode/t;)V

    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->h:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    .line 129
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->j:Lcom/oplus/camera/sticker/ui/l;

    .line 130
    new-instance p2, Lcom/oplus/camera/capmode/t$a;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/capmode/t$a;-><init>(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/capmode/t$1;)V

    iput-object p2, p0, Lcom/oplus/camera/capmode/t;->k:Lcom/oplus/camera/ui/preview/a/v;

    .line 131
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->l:Ljava/lang/Float;

    .line 132
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->m:Ljava/lang/Float;

    .line 133
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->n:Ljava/lang/Integer;

    .line 134
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->o:Ljava/lang/Integer;

    .line 135
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->p:Ljava/lang/Long;

    .line 136
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->q:Landroid/media/ImageReader;

    .line 137
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->r:Landroid/media/ImageReader;

    const/4 p2, 0x0

    .line 138
    iput p2, p0, Lcom/oplus/camera/capmode/t;->s:I

    .line 139
    iput p2, p0, Lcom/oplus/camera/capmode/t;->t:I

    .line 140
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->u:Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->v:Ljava/util/HashMap;

    .line 142
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->w:Ljava/util/HashMap;

    .line 143
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->x:Ljava/util/ArrayList;

    .line 144
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->y:Lcom/oplus/camera/sticker/ui/c;

    .line 145
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    .line 147
    iput p2, p0, Lcom/oplus/camera/capmode/t;->A:I

    const-wide/16 p3, 0x0

    .line 148
    iput-wide p3, p0, Lcom/oplus/camera/capmode/t;->B:J

    .line 149
    iput-wide p3, p0, Lcom/oplus/camera/capmode/t;->C:J

    .line 150
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/t;->D:Z

    .line 151
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->E:Lcom/oplus/camera/Storage$CameraPicture;

    .line 152
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/t;->F:Z

    .line 153
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/t;->G:Z

    .line 155
    new-instance p1, Lcom/oplus/camera/capmode/t$1;

    invoke-direct {p1, p0}, Lcom/oplus/camera/capmode/t$1;-><init>(Lcom/oplus/camera/capmode/t;)V

    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->H:Lcom/oplus/camera/ui/preview/a/p;

    .line 197
    new-instance p1, Lcom/oplus/camera/capmode/t$12;

    invoke-direct {p1, p0}, Lcom/oplus/camera/capmode/t$12;-><init>(Lcom/oplus/camera/capmode/t;)V

    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->I:Lcom/oplus/camera/sticker/ui/i;

    .line 371
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->k:Lcom/oplus/camera/ui/preview/a/v;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/a/q;->a(Lcom/oplus/camera/ui/preview/a/v;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/t;J)J
    .locals 0

    .line 111
    iput-wide p1, p0, Lcom/oplus/camera/capmode/t;->C:J

    return-wide p1
.end method

.method private a(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 5

    if-eqz p1, :cond_7

    .line 1314
    instance-of v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    if-eqz v0, :cond_7

    .line 1315
    check-cast p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    const-string v0, "sticker"

    .line 1320
    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mCaptureMode:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1321
    iput v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mCaptureType:I

    .line 1322
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->af()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mTouchXYValue:Ljava/lang/String;

    .line 1323
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->k(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mMemoryValue:Ljava/lang/String;

    const-string v0, "pref_filter_process_key"

    .line 1325
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1326
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getCurrFilterIndex()I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/capmode/t;->mCameraId:I

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/j;->b(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mFilterType:Ljava/lang/String;

    :cond_0
    const-string v0, "pref_sticker_process_key"

    .line 1329
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1330
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/t;->j()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1333
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mStickerName:Ljava/lang/String;

    .line 1334
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/data/StickerItem;->getMaterialType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mStickerType:Ljava/lang/String;

    .line 1335
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mStickerUuid:Ljava/lang/String;

    .line 1336
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/data/StickerItem;->getProtocolVersion()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProtocolVersion:Ljava/lang/String;

    .line 1340
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getCustomBeautyValues()[I

    move-result-object v0

    const-string v1, "func_face_beauty_custom"

    .line 1342
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x66

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 1343
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getCustomBeautyKeys()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    .line 1345
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isFaceBeautyOrMakeupOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iput v2, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mSmooth:I

    if-eqz v0, :cond_5

    .line 1347
    array-length v2, v0

    if-ne v1, v2, :cond_5

    .line 1348
    invoke-virtual {p1, v0}, Lcom/oplus/camera/statistics/model/CaptureMsgData;->parseFaceBeauty([I)V

    goto :goto_2

    :cond_3
    const-string v1, "func_face_beauty_common"

    .line 1350
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1351
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isFaceBeautyOrMakeupOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    iput v2, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mSmooth:I

    if-eqz v0, :cond_5

    .line 1354
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getCustomBeautyValues()[I

    move-result-object v0

    aget v0, v0, v3

    iput v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mSmoothDermabrasion:I

    .line 1358
    :cond_5
    :goto_2
    iget-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mPicSizeType:Ljava/lang/String;

    const-string v1, "full"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "16_9"

    .line 1359
    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mPicSizeType:Ljava/lang/String;

    .line 1362
    :cond_6
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/t;)Ljava/util/ArrayList;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->x:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/t;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->x:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .line 2798
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2799
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/4 v1, 0x4

    .line 2800
    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 2801
    iget v1, p0, Lcom/oplus/camera/capmode/t;->mCameraId:I

    invoke-static {p1, v1}, Lcom/oplus/camera/ui/preview/a/j;->b(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    .line 2803
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/t;->c(Lcom/oplus/camera/statistics/model/DcsMsgData;)V

    .line 2805
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method private a(IIZ)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 2782
    :cond_0
    new-instance p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-direct {p3, v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2783
    invoke-virtual {p3, v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/4 v0, 0x2

    .line 2784
    iput v0, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 2786
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/t;->mbFrontCamera:Z

    if-eqz v0, :cond_1

    .line 2787
    sget-object v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->KEY_COMMON_CUSTOM_BEAUTY:[Ljava/lang/String;

    aget-object p1, v0, p1

    iput-object p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    .line 2790
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    .line 2792
    invoke-direct {p0, p3}, Lcom/oplus/camera/capmode/t;->c(Lcom/oplus/camera/statistics/model/DcsMsgData;)V

    .line 2794
    invoke-virtual {p3}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method private a(IZLjava/lang/String;)V
    .locals 2

    .line 2861
    new-instance v0, Lcom/oplus/camera/statistics/model/StickerMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/StickerMsgData;-><init>(Landroid/content/Context;)V

    const-string v1, "sticker_delete"

    .line 2862
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/StickerMsgData;->buildEvent(Ljava/lang/String;)V

    .line 2864
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/t;->c(Lcom/oplus/camera/statistics/model/DcsMsgData;)V

    .line 2866
    iput p1, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mSelectCount:I

    if-eqz p2, :cond_0

    const-string p0, "true"

    .line 2869
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mSelectAll:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "false"

    .line 2871
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mSelectAll:Ljava/lang/String;

    :goto_0
    const-string p0, "delete"

    .line 2874
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2875
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mOperType:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p0, "cancel"

    .line 2876
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2877
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mOperType:Ljava/lang/String;

    .line 2880
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/StickerMsgData;->report()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/t;IZLjava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/t;->a(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/sticker/data/StickerItem;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct/range {p0 .. p5}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/sticker/data/StickerItem;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/t;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/t;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/t;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/capmode/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/t;Z)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/t;->a(Z)V

    return-void
.end method

.method private a(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v1, "pref_camera_assistant_line_key"

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->i(Z)V

    .line 724
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->q()V

    .line 725
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v1, "pref_filter_menu"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    .line 727
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/q;->b(Lcom/oplus/camera/sticker/data/StickerItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 728
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->m(ZZ)V

    :cond_0
    return-void
.end method

.method private a(Lcom/oplus/camera/sticker/data/StickerItem;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2835
    new-instance v0, Lcom/oplus/camera/statistics/model/StickerMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/StickerMsgData;-><init>(Landroid/content/Context;)V

    const-string v1, "sticker_download"

    .line 2836
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/StickerMsgData;->buildEvent(Ljava/lang/String;)V

    .line 2838
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/t;->c(Lcom/oplus/camera/statistics/model/DcsMsgData;)V

    .line 2840
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mStickerName:Ljava/lang/String;

    .line 2841
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getMaterialType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mStickerType:Ljava/lang/String;

    .line 2842
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mStickerUuid:Ljava/lang/String;

    .line 2843
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getProtocolVersion()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mProtocolVersion:Ljava/lang/String;

    .line 2844
    iput-wide p2, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mStickerDownloadCostTime:J

    .line 2845
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->ak()F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mZoomValue:Ljava/lang/String;

    const-string p0, "download"

    .line 2847
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2848
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mOperType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "cancel"

    .line 2849
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2850
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mOperType:Ljava/lang/String;

    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    .line 2854
    iput-object p5, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mDownloadResult:Ljava/lang/String;

    .line 2857
    :cond_2
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/StickerMsgData;->report()V

    return-void
.end method

.method private a(Lcom/oplus/camera/sticker/data/StickerItem;ZLjava/lang/String;)V
    .locals 2

    .line 2809
    new-instance v0, Lcom/oplus/camera/statistics/model/StickerMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/StickerMsgData;-><init>(Landroid/content/Context;)V

    const-string v1, "sticker_select"

    .line 2810
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/StickerMsgData;->buildEvent(Ljava/lang/String;)V

    .line 2812
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/t;->c(Lcom/oplus/camera/statistics/model/DcsMsgData;)V

    .line 2814
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mStickerName:Ljava/lang/String;

    .line 2815
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getMaterialType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mStickerType:Ljava/lang/String;

    .line 2816
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mStickerUuid:Ljava/lang/String;

    .line 2817
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getProtocolVersion()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mProtocolVersion:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string p0, "true"

    .line 2820
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mMyDownload:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "false"

    .line 2822
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mMyDownload:Ljava/lang/String;

    :goto_0
    const-string p0, "select"

    .line 2825
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2826
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mOperType:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p0, "cancel"

    .line 2827
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2828
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/StickerMsgData;->mOperType:Ljava/lang/String;

    .line 2831
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/StickerMsgData;->report()V

    return-void
.end method

.method private a(Lcom/oplus/exif/OplusExifInterface;J)V
    .locals 7

    if-nez p1, :cond_0

    const-string p0, "StickerMode"

    const-string p1, "buildExif, exifInterface is null"

    .line 1888
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1893
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 1894
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->l:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 1895
    sget v1, Lcom/oplus/exif/OplusExifInterface;->TAG_FOCAL_LENGTH:I

    new-instance v2, Lcom/oplus/exif/OplusRational;

    iget-object v3, p0, Lcom/oplus/camera/capmode/t;->l:Ljava/lang/Float;

    .line 1896
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-long v3, v3

    const-wide/16 v5, 0x64

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/oplus/exif/OplusRational;-><init>(JJ)V

    .line 1895
    invoke-virtual {p1, v1, v2}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v1

    .line 1897
    invoke-virtual {p1, v1}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 1900
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->m:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 1901
    sget v1, Lcom/oplus/exif/OplusExifInterface;->TAG_F_NUMBER:I

    new-instance v2, Lcom/oplus/exif/OplusRational;

    iget-object v3, p0, Lcom/oplus/camera/capmode/t;->m:Ljava/lang/Float;

    .line 1902
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    float-to-long v3, v3

    const-wide/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/oplus/exif/OplusRational;-><init>(JJ)V

    .line 1901
    invoke-virtual {p1, v1, v2}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v1

    .line 1903
    invoke-virtual {p1, v1}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 1906
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 1907
    sget v1, Lcom/oplus/exif/OplusExifInterface;->TAG_ISO_SPEED_RATINGS:I

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->n:Ljava/lang/Integer;

    .line 1908
    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    .line 1907
    invoke-virtual {p1, v1, v2}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v1

    .line 1909
    invoke-virtual {p1, v1}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 1914
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isOpenFlash()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_6

    .line 1915
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isOpenFrontTorch()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1916
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isAutoFlash()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isAutoFrontTorch()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/t;->mbAutoFlash:Z

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    :goto_0
    move v1, v3

    .line 1920
    :goto_1
    sget v4, Lcom/oplus/exif/OplusExifInterface;->TAG_FLASH:I

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v1

    .line 1921
    invoke-virtual {p1, v1}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 1923
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 1924
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->o:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    .line 1926
    :goto_2
    sget v1, Lcom/oplus/exif/OplusExifInterface;->TAG_WHITE_BALANCE:I

    .line 1927
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    .line 1926
    invoke-virtual {p1, v1, v2}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v1

    .line 1928
    invoke-virtual {p1, v1}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 1931
    :cond_8
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->p:Ljava/lang/Long;

    if-eqz v1, :cond_9

    .line 1932
    sget v1, Lcom/oplus/exif/OplusExifInterface;->TAG_EXPOSURE_TIME:I

    new-instance v2, Lcom/oplus/exif/OplusRational;

    iget-object v3, p0, Lcom/oplus/camera/capmode/t;->p:Ljava/lang/Long;

    .line 1933
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x3b9aca00

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/oplus/exif/OplusRational;-><init>(JJ)V

    .line 1932
    invoke-virtual {p1, v1, v2}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v1

    .line 1934
    invoke-virtual {p1, v1}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 1937
    :cond_9
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_a

    .line 1938
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->y()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1941
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/oplus/exif/OplusExifInterface;->addGpsTags(DD)Z

    .line 1945
    :cond_a
    sget v1, Lcom/oplus/exif/OplusExifInterface;->TAG_USER_COMMENT:I

    const-string v2, "Oplus_"

    const-string v3, "sticker"

    iget p0, p0, Lcom/oplus/camera/capmode/t;->mCameraId:I

    .line 1947
    invoke-static {v3, p0}, Lcom/oplus/camera/g/b;->a(Ljava/lang/String;I)I

    move-result p0

    .line 1946
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1945
    invoke-virtual {p1, v1, p0}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object p0

    .line 1948
    invoke-virtual {p1, p0}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 1950
    sget p0, Lcom/oplus/exif/OplusExifInterface;->TAG_MODEL:I

    invoke-static {}, Lcom/oplus/camera/util/Util;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object p0

    .line 1951
    invoke-virtual {p1, p0}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    const-wide/16 v1, 0x0

    cmp-long p0, v1, p2

    if-eqz p0, :cond_b

    .line 1954
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1955
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1956
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v2, "UTC"

    .line 1957
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1958
    sget v2, Lcom/oplus/exif/OplusExifInterface;->TAG_DATE_TIME:I

    .line 1959
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1958
    invoke-virtual {p1, v2, v3}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 1960
    sget v2, Lcom/oplus/exif/OplusExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    .line 1961
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1960
    invoke-virtual {p1, v2, p0}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 1962
    invoke-static {p2, p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {p0, v2}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    const-string v2, "SSS"

    .line 1963
    invoke-static {v2}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    .line 1964
    sget v3, Lcom/oplus/exif/OplusExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    invoke-virtual {p1, v3, v2}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    const-string v2, "XXX"

    .line 1965
    invoke-static {v2}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    .line 1966
    sget v2, Lcom/oplus/exif/OplusExifInterface;->TAG_OFFSET_TIME_ORIGINAL:I

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3, p0}, Lcom/oplus/exif/OplusExifInterface;->buildTag(IILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 1967
    invoke-virtual {p1, p2, p3}, Lcom/oplus/exif/OplusExifInterface;->addGpsDateTimeStampTag(J)Z

    .line 1968
    sget p0, Lcom/oplus/exif/OplusExifInterface;->TAG_GPS_DATE_STAMP:I

    .line 1969
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1968
    invoke-virtual {p1, p0, p2}, Lcom/oplus/exif/OplusExifInterface;->buildTag(ILjava/lang/Object;)Lcom/oplus/exif/OplusExifTag;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/exif/OplusExifInterface;->setTag(Lcom/oplus/exif/OplusExifTag;)Lcom/oplus/exif/OplusExifTag;

    .line 1971
    :cond_b
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 2767
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2768
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/16 v1, 0x22

    .line 2769
    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 2771
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/t;->c(Lcom/oplus/camera/statistics/model/DcsMsgData;)V

    .line 2773
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    .line 2774
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2162
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->w:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/t;->w:Ljava/util/HashMap;

    .line 2166
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2168
    iget-object p2, p0, Lcom/oplus/camera/capmode/t;->w:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 2169
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->w:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2171
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->w:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2177
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2178
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2179
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2183
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 2

    const-string v0, "StickerMode"

    const-string v1, "updateStickerImageResource"

    .line 2303
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/content/SharedPreferences;)Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    .line 2306
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->H:Lcom/oplus/camera/ui/preview/a/p;

    invoke-virtual {v1, p0, v0, p1}, Lcom/oplus/camera/ui/preview/a/q;->a(Lcom/oplus/camera/ui/preview/a/p;Lcom/oplus/camera/sticker/data/StickerItem;Z)V

    return-void
.end method

.method private a(ZZ)V
    .locals 2

    .line 2319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideStickerMenu, includePanle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Lcom/oplus/camera/sticker/ui/h;->a(IZZ)V

    .line 2322
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/sticker/ui/h;->a(Z)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/oplus/camera/sticker/data/StickerItem;I)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p2, :cond_0

    .line 2283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStickwerItemLongClick, item: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StickerMode"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/t;Landroid/view/View;Lcom/oplus/camera/sticker/data/StickerItem;I)Z
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/t;->a(Landroid/view/View;Lcom/oplus/camera/sticker/data/StickerItem;I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;I)Z
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/sticker/data/StickerItem;I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;Z)Z
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/sticker/data/StickerItem;Z)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/oplus/camera/sticker/data/StickerItem;I)Z
    .locals 3

    .line 2225
    iget-object p2, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const-string p2, "StickerMode"

    if-eqz p1, :cond_6

    .line 2229
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isAnyModeAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2236
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->isRecycleBin()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const-string p1, "onStickerItemClick, recycle_bin_sticker_id"

    .line 2237
    invoke-static {p2, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->j:Lcom/oplus/camera/sticker/ui/l;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/ui/l;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2240
    :cond_2
    iget p1, p0, Lcom/oplus/camera/capmode/t;->s:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/oplus/camera/capmode/t;->s:I

    .line 2241
    new-instance p1, Lcom/oplus/camera/sticker/ui/l;

    iget-object p2, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/oplus/camera/sticker/ui/l;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->j:Lcom/oplus/camera/sticker/ui/l;

    .line 2242
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->j:Lcom/oplus/camera/sticker/ui/l;

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/ui/l;->show()V

    .line 2243
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->j:Lcom/oplus/camera/sticker/ui/l;

    new-instance p2, Lcom/oplus/camera/capmode/t$10;

    invoke-direct {p2, p0}, Lcom/oplus/camera/capmode/t$10;-><init>(Lcom/oplus/camera/capmode/t;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/sticker/ui/l;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2252
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->j:Lcom/oplus/camera/sticker/ui/l;

    new-instance p2, Lcom/oplus/camera/capmode/t$11;

    invoke-direct {p2, p0}, Lcom/oplus/camera/capmode/t$11;-><init>(Lcom/oplus/camera/capmode/t;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/sticker/ui/l;->a(Lcom/oplus/camera/sticker/ui/l$a;)V

    :cond_3
    return v2

    .line 2273
    :cond_4
    iget-object p2, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object p2

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, v1, p1}, Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/app/Activity;Lcom/oplus/camera/sticker/data/StickerItem;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 2274
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/sticker/data/StickerItem;Z)Z

    return v0

    :cond_5
    return v2

    .line 2230
    :cond_6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStickerItemClick, item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", isBlurAnimRunning: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2231
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isAnyModeAnimationRunning: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isAnyModeAnimationRunning()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2230
    invoke-static {p2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private a(Lcom/oplus/camera/sticker/data/StickerItem;Z)Z
    .locals 6

    const-string v0, "onStickerItemChange, item: "

    const-string v1, "StickerMode"

    if-eqz p1, :cond_b

    .line 540
    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 547
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_sticker_process_key"

    .line 549
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 550
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    const-string v1, "my_category_e5a3fe9c"

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/a/t;->b(Lcom/oplus/camera/sticker/data/StickerItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_9

    .line 552
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p2}, Lcom/oplus/camera/ui/preview/a/t;->j()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 555
    invoke-virtual {p2}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sticker_menu_item_usetime"

    invoke-direct {p0, v2, v0}, Lcom/oplus/camera/capmode/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/sticker/data/StickerItem;)V

    .line 560
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/q;->b(Lcom/oplus/camera/sticker/data/StickerItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 561
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/capmode/t$13;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/t$13;-><init>(Lcom/oplus/camera/capmode/t;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 574
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/t;->mbCapModeInit:Z

    if-eqz v0, :cond_4

    .line 575
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->applyBeautyParam()V

    goto :goto_0

    .line 578
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/capmode/t$14;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/t$14;-><init>(Lcom/oplus/camera/capmode/t;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 588
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/t;->mbCapModeInit:Z

    if-eqz v0, :cond_4

    .line 589
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->applyBeautyParam()V

    .line 593
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 594
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_current_sticker_uuid"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 595
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 597
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    if-eqz v0, :cond_8

    if-eqz p2, :cond_5

    .line 599
    invoke-virtual {p2}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 600
    invoke-virtual {p2}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 601
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {p2}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/oplus/camera/sticker/ui/h;->a(Ljava/lang/String;)V

    .line 604
    :cond_5
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->hasMusic()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 605
    iget-object p2, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oplus/camera/sticker/ui/h;->d(Ljava/lang/String;)V

    .line 607
    iget-object p2, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz p2, :cond_7

    .line 608
    iget-object p2, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p2}, Lcom/oplus/camera/ui/preview/a/t;->d()V

    goto :goto_1

    .line 611
    :cond_6
    iget-object p2, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {p2}, Lcom/oplus/camera/sticker/ui/h;->h()V

    .line 612
    iget-object p2, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p2}, Lcom/oplus/camera/ui/preview/a/t;->c()V

    .line 615
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getDownloadTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-nez p2, :cond_8

    .line 616
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 617
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->isRecycleBin()Z

    move-result p2

    if-nez p2, :cond_8

    .line 618
    iget-object p2, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/oplus/camera/sticker/h;->a(Landroid/content/Context;)Lcom/oplus/camera/sticker/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oplus/camera/sticker/h;->a(Lcom/oplus/camera/sticker/data/StickerItem;)V

    .line 622
    :cond_8
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object p2

    const-string v0, "sticker_menu_item_selected"

    invoke-direct {p0, v0, p2}, Lcom/oplus/camera/capmode/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object p2, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a()Lcom/oplus/camera/gl/GLRootView;

    move-result-object p2

    new-instance v0, Lcom/oplus/camera/capmode/t$15;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/capmode/t$15;-><init>(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;)V

    invoke-virtual {p2, v0}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    .line 632
    iget-object p2, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/capmode/t$16;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/t$16;-><init>(Lcom/oplus/camera/capmode/t;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 643
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "select"

    .line 647
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/sticker/data/StickerItem;ZLjava/lang/String;)V

    goto :goto_2

    .line 649
    :cond_9
    iget-object p2, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/capmode/t$17;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/t$17;-><init>(Lcom/oplus/camera/capmode/t;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 658
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/sticker/data/StickerItem;)V

    .line 662
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "cancel"

    .line 666
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/sticker/data/StickerItem;ZLjava/lang/String;)V

    .line 669
    :goto_2
    iget-object p2, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/capmode/t$18;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/capmode/t$18;-><init>(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 699
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onStickerItemChange, failed index categoryId: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 p0, 0x1

    return p0

    .line 541
    :cond_b
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", isBlurAnimRunning: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 542
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mOneCamera: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 541
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private a(Lcom/oplus/camera/Storage$CameraPicture;Landroid/graphics/Bitmap;ZZIJ)[B
    .locals 7

    if-nez p4, :cond_0

    const/4 p3, 0x0

    .line 1807
    invoke-static {p2, p5, p3}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p3

    :goto_0
    move-object v1, p3

    goto :goto_2

    :cond_0
    const/16 p4, 0x5a

    if-eq p5, p4, :cond_1

    const/16 p4, 0x10e

    if-eq p5, p4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    add-int/lit16 p5, p5, 0xb4

    .line 1814
    rem-int/lit16 p5, p5, 0x168

    .line 1823
    :cond_2
    :goto_1
    invoke-static {p2, p5, p3}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    .line 1826
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_3

    .line 1827
    new-instance v4, Lcom/oplus/exif/OplusExifInterface;

    invoke-direct {v4}, Lcom/oplus/exif/OplusExifInterface;-><init>()V

    .line 1828
    iget-wide p2, p1, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    invoke-direct {p0, v4, p2, p3}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/exif/OplusExifInterface;J)V

    .line 1829
    new-instance p2, Lcom/oplus/camera/k/b;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object p0

    const-string p3, "heic_8bits"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-direct {p2, p0}, Lcom/oplus/camera/k/b;-><init>(Z)V

    const/4 v2, 0x0

    const/16 v3, 0x64

    .line 1830
    iget-object v5, p1, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    iget-object v6, p1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/k/b;->a(Landroid/graphics/Bitmap;IILcom/oplus/exif/OplusExifInterface;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1832
    invoke-virtual {p2}, Lcom/oplus/camera/k/b;->a()V

    return-object p4

    :cond_3
    const-string p3, "com.oplus.feature.DCIP3.support"

    .line 1838
    invoke-static {p3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p3

    const/16 p5, 0x64

    if-eqz p3, :cond_4

    .line 1839
    invoke-static {v1, p5}, Lcom/oplus/camera/jni/IccProfile;->compressBitmap(Landroid/graphics/Bitmap;I)[B

    move-result-object p2

    goto :goto_5

    .line 1841
    :cond_4
    :try_start_0
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1842
    :try_start_1
    sget-object p6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, p6, p5, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1843
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1844
    :try_start_2
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_0
    move-exception p5

    .line 1841
    :try_start_3
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_1
    move-exception p3

    :try_start_4
    invoke-virtual {p5, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p3

    .line 1845
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    .line 1848
    :goto_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_5

    .line 1849
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1852
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_6

    .line 1853
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    move-object p2, p4

    .line 1857
    :goto_5
    iget-wide p3, p1, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    invoke-virtual {p0, p2, p3, p4}, Lcom/oplus/camera/capmode/t;->a([BJ)[B

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1370
    instance-of v1, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    if-eqz v1, :cond_1

    .line 1371
    check-cast p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    .line 1376
    iget v1, p0, Lcom/oplus/camera/capmode/t;->mDcsLux:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mLux:Ljava/lang/String;

    .line 1377
    iget v1, p0, Lcom/oplus/camera/capmode/t;->mDcsCCT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mCct:Ljava/lang/String;

    .line 1378
    iget v1, p0, Lcom/oplus/camera/capmode/t;->mDcsIso:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIso:Ljava/lang/String;

    .line 1379
    iget-wide v1, p0, Lcom/oplus/camera/capmode/t;->mDcsExp:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mExp:Ljava/lang/String;

    .line 1380
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/a/t;->j()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 1386
    :cond_0
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mStickerName:Ljava/lang/String;

    .line 1387
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItem;->getMaterialType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mStickerType:Ljava/lang/String;

    .line 1388
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mStickerUuid:Ljava/lang/String;

    .line 1389
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItem;->getProtocolVersion()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mProtocolVersion:Ljava/lang/String;

    .line 1391
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    return-object p0

    :cond_1
    return-object v0
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/h;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 706
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/t;->mbCapModeInit:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isStickerMenuOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 707
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->j(I)V

    .line 709
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->j(ZZ)V

    .line 710
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    .line 711
    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/capmode/t;->b(ZZ)V

    goto :goto_0

    .line 713
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->supportBeautyButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->j(I)V

    goto :goto_0

    .line 716
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->j(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/t;->c(Lcom/oplus/camera/sticker/data/StickerItem;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/capmode/t;Z)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/t;->b(Z)V

    return-void
.end method

.method private b(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_current_sticker_uuid"

    const-string v2, "unselected_uuid"

    .line 754
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 755
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 757
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/t;->j()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sticker_menu_item_usetime"

    invoke-direct {p0, v2, v0}, Lcom/oplus/camera/capmode/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/sticker/data/StickerItem;)V

    .line 767
    :cond_1
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/q;->b(Lcom/oplus/camera/sticker/data/StickerItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 768
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->applyBeautyParam()V

    .line 769
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_2
    if-eqz p1, :cond_4

    .line 773
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->hasMusic()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 774
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/h;->h()V

    .line 776
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_3

    .line 777
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/t;->c()V

    .line 781
    :cond_3
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sticker_menu_item_unselected"

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/capmode/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a()Lcom/oplus/camera/gl/GLRootView;

    move-result-object p1

    new-instance v0, Lcom/oplus/camera/capmode/t$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/t$2;-><init>(Lcom/oplus/camera/capmode/t;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 2189
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->v:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/t;->v:Ljava/util/HashMap;

    .line 2193
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->u:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "\\."

    .line 2194
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2196
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 2197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v3, v0

    .line 2200
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->v:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2201
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->v:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2203
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->v:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2208
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->u:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/util/HashMap;Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2213
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2214
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2215
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2219
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 2750
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2751
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/16 v1, 0x22

    .line 2752
    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const/4 v1, 0x2

    .line 2753
    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    .line 2755
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/t;->c(Lcom/oplus/camera/statistics/model/DcsMsgData;)V

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 2758
    iput p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    goto :goto_0

    .line 2760
    :cond_0
    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    .line 2763
    :goto_0
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method private b(ZZ)V
    .locals 2

    .line 2326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showStickerMenu, needAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", includePanel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMoreModeShown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 2327
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMode"

    .line 2326
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2329
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2333
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2334
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/oplus/camera/sticker/ui/h;->a(IZZ)V

    .line 2335
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/sticker/ui/h;->a(Z)V

    :cond_1
    return-void
.end method

.method private c()V
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/t$19;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/t$19;-><init>(Lcom/oplus/camera/capmode/t;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/capmode/t;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/oplus/camera/capmode/t;->b()V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/sticker/data/StickerItem;)V

    return-void
.end method

.method private c(Lcom/oplus/camera/statistics/model/DcsMsgData;)V
    .locals 1

    .line 2884
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2885
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/DcsMsgData;->mCameraEnterType:Ljava/lang/String;

    goto :goto_0

    .line 2886
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 2887
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/DcsMsgData;->mCameraEnterType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 2889
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/DcsMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 2892
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/DcsMsgData;->mCaptureMode:Ljava/lang/String;

    .line 2893
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v0

    iput v0, p1, Lcom/oplus/camera/statistics/model/DcsMsgData;->mCameraId:I

    .line 2894
    iget v0, p0, Lcom/oplus/camera/capmode/t;->mOrientation:I

    iput v0, p1, Lcom/oplus/camera/statistics/model/DcsMsgData;->mOrientation:I

    .line 2895
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "front"

    goto :goto_1

    :cond_2
    const-string p0, "rear"

    .line 2896
    :goto_1
    iput-object p0, p1, Lcom/oplus/camera/statistics/model/DcsMsgData;->mRearOrFront:Ljava/lang/String;

    return-void
.end method

.method private c(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 2

    .line 2310
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    .line 2312
    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/q;->b()Lcom/oplus/camera/ui/preview/a/q$c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/q$c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    .line 2313
    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/a/t;->b(Lcom/oplus/camera/sticker/data/StickerItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2314
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/a/t;->e()Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/capmode/t;)I
    .locals 2

    .line 111
    iget v0, p0, Lcom/oplus/camera/capmode/t;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oplus/camera/capmode/t;->t:I

    return v0
.end method

.method private d()V
    .locals 4

    .line 849
    invoke-static {}, Lcom/oplus/camera/l/c;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_allow_network_access"

    .line 850
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    .line 852
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initStickerMediator, allowNetworkAccess: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StickerMode"

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/content/Context;)V

    .line 855
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ui/preview/a/q;->a(IZ)V

    .line 856
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->k:Lcom/oplus/camera/ui/preview/a/v;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/preview/a/q;->a(Lcom/oplus/camera/ui/preview/a/v;)V

    if-eqz v1, :cond_2

    .line 859
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/q;->f()V

    :cond_2
    return-void
.end method

.method private e()Landroid/media/CamcorderProfile;
    .locals 2

    .line 1090
    :try_start_0
    iget v0, p0, Lcom/oplus/camera/capmode/t;->mCameraId:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    iget p0, p0, Lcom/oplus/camera/capmode/t;->mCameraId:I

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    goto :goto_0

    .line 1093
    :cond_0
    iget p0, p0, Lcom/oplus/camera/capmode/t;->mCameraId:I

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1096
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "StickerMode"

    const-string v0, "getCamcorderProfile, get CamcorderProfile fail"

    .line 1098
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/l;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->j:Lcom/oplus/camera/sticker/ui/l;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/capmode/t;)J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/oplus/camera/capmode/t;->C:J

    return-wide v0
.end method

.method private f()V
    .locals 2

    .line 1660
    invoke-direct {p0}, Lcom/oplus/camera/capmode/t;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1666
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/t;->g()V

    .line 1668
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1669
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/t$7;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/t$7;-><init>(Lcom/oplus/camera/capmode/t;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    .line 1661
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePictureIfReady, mLastThumbnail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StickerMode"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 10

    const-string v0, "StickerMode"

    const-string v1, "savePictureUseThumb"

    .line 1681
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    new-instance v0, Lcom/oplus/camera/Storage$CameraPicture;

    invoke-direct {v0}, Lcom/oplus/camera/Storage$CameraPicture;-><init>()V

    .line 1684
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    iget-object v1, v1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    const/4 v1, 0x1

    .line 1685
    iput-boolean v1, v0, Lcom/oplus/camera/Storage$CameraPicture;->v:Z

    .line 1686
    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    iget-object v2, v2, Lcom/oplus/camera/aps/service/ThumbnailItem;->mJpegName:Ljava/lang/String;

    iput-object v2, v0, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    .line 1687
    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    iget-object v2, v2, Lcom/oplus/camera/aps/service/ThumbnailItem;->mResolver:Landroid/content/ContentResolver;

    iput-object v2, v0, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    .line 1688
    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    iget-wide v2, v2, Lcom/oplus/camera/aps/service/ThumbnailItem;->mDate:J

    iput-wide v2, v0, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    .line 1689
    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    iget-boolean v2, v2, Lcom/oplus/camera/aps/service/ThumbnailItem;->mbLockScreen:Z

    iput-boolean v2, v0, Lcom/oplus/camera/Storage$CameraPicture;->E:Z

    const-string v2, "sticker"

    .line 1690
    iput-object v2, v0, Lcom/oplus/camera/Storage$CameraPicture;->i:Ljava/lang/String;

    .line 1691
    iget v2, p0, Lcom/oplus/camera/capmode/t;->mCameraId:I

    iput v2, v0, Lcom/oplus/camera/Storage$CameraPicture;->s:I

    const/4 v2, 0x0

    .line 1692
    iput-boolean v2, v0, Lcom/oplus/camera/Storage$CameraPicture;->D:Z

    .line 1693
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "jpeg"

    :goto_0
    iput-object v2, v0, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 1694
    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    iget-object v4, v2, Lcom/oplus/camera/aps/service/ThumbnailItem;->mOriginBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    iget-boolean v2, v2, Lcom/oplus/camera/aps/service/ThumbnailItem;->mbMirror:Z

    xor-int/lit8 v5, v2, 0x1

    iget-boolean v6, p0, Lcom/oplus/camera/capmode/t;->mbFrontCamera:Z

    iget v7, p0, Lcom/oplus/camera/capmode/t;->mOrientation:I

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    iget-wide v8, v2, Lcom/oplus/camera/aps/service/ThumbnailItem;->mTimeStamp:J

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v9}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/Storage$CameraPicture;Landroid/graphics/Bitmap;ZZIJ)[B

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    .line 1697
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oplus/camera/m/b;->c(Lcom/oplus/camera/Storage$CameraPicture;)V

    .line 1698
    invoke-direct {p0}, Lcom/oplus/camera/capmode/t;->i()V

    .line 1699
    iput-object v0, p0, Lcom/oplus/camera/capmode/t;->E:Lcom/oplus/camera/Storage$CameraPicture;

    .line 1701
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/t;->mbPaused:Z

    if-nez v0, :cond_1

    .line 1702
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/capmode/t$8;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/t$8;-><init>(Lcom/oplus/camera/capmode/t;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1710
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/t;->G:Z

    .line 1711
    invoke-direct {p0}, Lcom/oplus/camera/capmode/t;->k()V

    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/capmode/t;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/oplus/camera/capmode/t;->c()V

    return-void
.end method

.method private h()Z
    .locals 1

    .line 1716
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->l:Ljava/lang/Float;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->m:Ljava/lang/Float;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->n:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->o:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->p:Ljava/lang/Long;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x0

    .line 1724
    iput-object v0, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    .line 1726
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 1727
    :try_start_0
    iput-object v0, p0, Lcom/oplus/camera/capmode/t;->l:Ljava/lang/Float;

    .line 1728
    iput-object v0, p0, Lcom/oplus/camera/capmode/t;->m:Ljava/lang/Float;

    .line 1729
    iput-object v0, p0, Lcom/oplus/camera/capmode/t;->n:Ljava/lang/Integer;

    .line 1730
    iput-object v0, p0, Lcom/oplus/camera/capmode/t;->o:Ljava/lang/Integer;

    .line 1731
    iput-object v0, p0, Lcom/oplus/camera/capmode/t;->p:Ljava/lang/Long;

    .line 1732
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private j()V
    .locals 1

    .line 2561
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 2562
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->w()V

    :cond_0
    const/4 p0, 0x0

    .line 2565
    invoke-static {p0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setLongPressState(Z)V

    .line 2566
    invoke-static {p0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setVolumeDownState(Z)V

    .line 2567
    invoke-static {p0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->setReachBorderState(Z)V

    return-void
.end method

.method private k()V
    .locals 2

    .line 2961
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/t;->G:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/t;->F:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2965
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    .line 2966
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->E:Lcom/oplus/camera/Storage$CameraPicture;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->a(Lcom/oplus/camera/Storage$CameraPicture;)V

    :cond_1
    const/4 v0, 0x0

    .line 2969
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/t;->G:Z

    .line 2970
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/t;->F:Z

    const/4 v0, 0x0

    .line 2971
    iput-object v0, p0, Lcom/oplus/camera/capmode/t;->E:Lcom/oplus/camera/Storage$CameraPicture;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 2453
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isVideoRecordStopped()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    .line 2454
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/h;->i()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 2455
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->B()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2456
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isStickerMenuOpen()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2457
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isPanelMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2458
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    const v4, 0x7f10026c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;)V

    .line 2459
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    goto :goto_0

    .line 2461
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 2464
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/sticker/ui/h;->e(Z)V

    .line 2466
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->supportBeautyButton()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2467
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->j(ZZ)V

    goto :goto_1

    .line 2469
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    :goto_1
    return v1

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public a([BJ)[B
    .locals 4

    const-string v0, "addExif, close exif stream, exception: "

    const-string v1, "StickerMode"

    .line 1862
    new-instance v2, Lcom/oplus/exif/OplusExifInterface;

    invoke-direct {v2}, Lcom/oplus/exif/OplusExifInterface;-><init>()V

    const/4 v3, 0x0

    .line 1867
    :try_start_0
    invoke-direct {p0, v2, p2, p3}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/exif/OplusExifInterface;J)V

    .line 1868
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1869
    :try_start_1
    invoke-virtual {v2, p1, p0}, Lcom/oplus/exif/OplusExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 1870
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1876
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1878
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p0, v3

    goto :goto_4

    :catch_2
    move-exception p2

    move-object p0, v3

    .line 1872
    :goto_0
    :try_start_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addExif, processExif failed, exception: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, p2}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_0

    .line 1876
    :try_start_4
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 1878
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    move-object p2, v3

    :goto_2
    if-nez p2, :cond_1

    goto :goto_3

    :cond_1
    move-object p1, p2

    :goto_3
    return-object p1

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz p0, :cond_2

    .line 1876
    :try_start_5
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    .line 1878
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    :cond_2
    :goto_5
    throw p1
.end method

.method public afterStopRecording()V
    .locals 2

    .line 1533
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/h;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1534
    invoke-direct {p0, v0, v0}, Lcom/oplus/camera/capmode/t;->b(ZZ)V

    .line 1535
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    goto :goto_0

    .line 1537
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 1538
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->afterStopRecording()V

    :goto_0
    return-void
.end method

.method public beforeStartRecording()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1510
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/capmode/t;->a(ZZ)V

    .line 1512
    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1513
    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v1, v1, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZZ)V

    .line 1516
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0, v1}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 1517
    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 1518
    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    const-string v2, "key_bubble_short_video"

    .line 1520
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/t;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1521
    iget-object v4, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4, v3, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 1524
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/t;->containsBubbleKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1525
    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/capmode/t;->updateBubbleValue(Ljava/lang/String;Z)V

    .line 1528
    :cond_2
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->beforeStartRecording()V

    return-void
.end method

.method public beforeSwitchToMode(Z)V
    .locals 0

    .line 833
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->beforeSwitchToMode(Z)V

    const/4 p1, 0x1

    .line 835
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/t;->enableVideoRecordingSound(Z)V

    return-void
.end method

.method public cameraIdChanged(I)V
    .locals 0

    .line 840
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->cameraIdChanged(I)V

    return-void
.end method

.method public changeModeAllViewWhenAnimation(IZ)V
    .locals 3

    .line 2341
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/w;->changeModeAllViewWhenAnimation(IZ)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 2367
    invoke-direct {p0, v2, v1}, Lcom/oplus/camera/capmode/t;->b(ZZ)V

    goto :goto_1

    .line 2369
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/oplus/camera/capmode/t;->a(ZZ)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 2347
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/t;->mbInCapturing:Z

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    move p1, p2

    .line 2351
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/sticker/ui/h;->a(Z)V

    if-eqz p2, :cond_4

    .line 2354
    invoke-direct {p0, v2, v2}, Lcom/oplus/camera/capmode/t;->b(ZZ)V

    goto :goto_1

    .line 2356
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/ui/h;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2357
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {p0, v2, v2, v1}, Lcom/oplus/camera/sticker/ui/h;->b(ZZZ)V

    goto :goto_1

    .line 2359
    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/capmode/t;->a(ZZ)V

    :goto_1
    return-void
.end method

.method protected checkPreviewResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public closeImageReader()V
    .locals 2

    const-string v0, "StickerMode"

    const-string v1, "closeImageReader"

    .line 469
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->q:Landroid/media/ImageReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 473
    iput-object v1, p0, Lcom/oplus/camera/capmode/t;->q:Landroid/media/ImageReader;

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->r:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 478
    iput-object v1, p0, Lcom/oplus/camera/capmode/t;->r:Landroid/media/ImageReader;

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1615
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1619
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1620
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 1622
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public forceStopVideoRecording(Z)V
    .locals 0

    .line 2492
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->forceStopVideoRecording(Z)V

    .line 2493
    invoke-direct {p0}, Lcom/oplus/camera/capmode/t;->j()V

    return-void
.end method

.method protected getBubbleOffsetY(I)I
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 438
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07011c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getCameraFeature()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "sticker"

    return-object p0
.end method

.method public getCanAddMenuOption(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_timer_shutter_key"

    .line 1467
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1471
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getCanAddMenuOption(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getCaptureRequestTag(Lcom/oplus/camera/aps/util/CameraApsDecision;Z)Lcom/oplus/camera/e/c;
    .locals 0

    .line 1591
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/w;->getCaptureRequestTag(Lcom/oplus/camera/aps/util/CameraApsDecision;Z)Lcom/oplus/camera/e/c;

    move-result-object p0

    .line 1592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/e/c;->ad:J

    return-object p0
.end method

.method public getCurrFilterIndex()I
    .locals 3

    .line 1011
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getFilterEffectMenuPreferenceKey()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1013
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isShowAnimojiMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    :cond_0
    const/4 v1, 0x0

    .line 1017
    iget v2, p0, Lcom/oplus/camera/capmode/t;->mCameraId:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/t;->getFilterTypeList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/util/Util;->a(III)I

    move-result p0

    return p0
.end method

.method protected getCustomBeautyKeys()[Ljava/lang/String;
    .locals 0

    .line 997
    sget-object p0, Lcom/oplus/camera/ui/CameraUIInterface;->KEY_STICKER_CUSTOM_FACEBEAUTY:[Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultCaptureNumber()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected getDefaultCustomBeautyValues()[I
    .locals 0

    .line 1002
    sget-object p0, Lcom/oplus/camera/capmode/t;->b:[I

    return-object p0
.end method

.method public getEffectMenuKeyByMode()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_filter_menu"

    return-object p0
.end method

.method protected getFaceBeautyKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_sticker_facebeauty_level_menu"

    return-object p0
.end method

.method protected getFaceBeautyModeIndex()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getFilterEffectMenuPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_sticker_filter_index"

    return-object p0
.end method

.method protected getFilterNameIdList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1022
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/i;->b(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getFilterTypeList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1027
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->m:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/i;->a(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFullPictureSizeType()Ljava/lang/String;
    .locals 0

    const-string p0, "16_9"

    return-object p0
.end method

.method protected getGuideLineKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_camera_line_photo"

    return-object p0
.end method

.method public getImageFormat()I
    .locals 0

    const/16 p0, 0x23

    return p0
.end method

.method public getNeedCheckTimeStamp()Z
    .locals 0

    .line 383
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isFlashState()Z

    move-result p0

    return p0
.end method

.method protected getNeedReduceBitRate()Z
    .locals 2

    .line 1036
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    const v1, 0x7f100495

    .line 1037
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_video_codec_key"

    .line 1036
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "H265"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getOperatingMode()I
    .locals 0

    const p0, 0x800e

    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 4

    .line 2010
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1002be

    .line 2011
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_photo_ratio_key"

    .line 2010
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2013
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getImageFormat()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v1

    const-string v2, "full"

    .line 2016
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "5000000"

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 2017
    invoke-static {v1, v3, v0}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    .line 2020
    :cond_0
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/String;)I

    move-result v0

    .line 2019
    invoke-static {v1, v3, v0}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 2027
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 5

    .line 2032
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/t;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    .line 2034
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->a()Ljava/util/List;

    move-result-object v1

    const-string v2, "com.oplus.sticker_target_preview_height"

    .line 2035
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v2

    .line 2037
    iget v3, p0, Lcom/oplus/camera/capmode/t;->mCameraId:I

    invoke-static {v0, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/util/Size;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "standard"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    .line 2038
    invoke-static {v2, v1, v3, v4}, Lcom/oplus/camera/util/Util;->a(ILjava/util/List;D)Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    .line 2039
    :cond_0
    iget v3, p0, Lcom/oplus/camera/capmode/t;->mCameraId:I

    invoke-static {v0, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/util/Size;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "16_9"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide v3, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 2040
    invoke-static {v2, v1, v3, v4}, Lcom/oplus/camera/util/Util;->a(ILjava/util/List;D)Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    .line 2041
    :cond_1
    iget v3, p0, Lcom/oplus/camera/capmode/t;->mCameraId:I

    invoke-static {v0, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/util/Size;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "square"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 2042
    invoke-static {v2, v1, v3, v4}, Lcom/oplus/camera/util/Util;->a(ILjava/util/List;D)Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    return-object v0

    .line 2049
    :cond_3
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 4

    .line 2083
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "button_shape_ring_none"

    if-eqz v0, :cond_1

    .line 2084
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1003ca

    .line 2085
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "pref_camera_timer_shutter_key"

    .line 2084
    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "10"

    .line 2087
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "button_shape_countdown_ten_seconds"

    goto :goto_0

    :cond_0
    const-string v0, "3"

    .line 2089
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v1, "button_shape_countdown_three_seconds"

    .line 2096
    :cond_1
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/oplus/camera/ui/control/b;

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/control/b;-><init>(I)V

    goto :goto_1

    .line 2097
    :cond_2
    new-instance p0, Lcom/oplus/camera/ui/control/b;

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v3, "button_color_inside_none"

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-object p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 10

    .line 1160
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const-string v2, "pref_filter_process_key"

    const-string v3, "pref_front_zoom_key"

    const-string v4, "pref_sticker_process_key"

    const-string v5, "func_torch_soft_light"

    const-string v6, "func_face_beauty_process"

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "pref_expand_popbar_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_support_thumbnail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "pref_support_capture_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_video_size_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "pref_auto_night_scence_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "func_face_slender_process"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "pref_time_lapse_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "pref_camera_line_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "key_support_share_edit_thumb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "func_sat_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "func_filter_vignette"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "pref_support_recording_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_11
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "pref_omoji_process_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "pref_camera_torch_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_17
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "pref_dual_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "func_face_beauty_custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "func_face_beauty_common"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "pref_video_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "key_support_show_no_face"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto :goto_1

    :sswitch_1e
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_1

    :sswitch_1f
    const-string v0, "pref_camera_vivid_effect_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_20
    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_1

    :sswitch_21
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_1

    :sswitch_22
    const-string v0, "pref_save_jpg_after_pause_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_23
    const-string v0, "pref_assist_gradienter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_1

    :sswitch_24
    const-string v0, "key_filter_index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_25
    const-string v0, "key_short_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_26
    const-string v0, "pref_camera_assistant_line_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v9, "com.oplus.feature.face.beauty.custom.menu.support"

    packed-switch v0, :pswitch_data_0

    .line 1290
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1284
    :pswitch_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isStickerMenuOpen()Z

    move-result p0

    xor-int/2addr p0, v8

    return p0

    .line 1281
    :pswitch_1
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/t;->mbCapModeInit:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isAnimojiOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isShowAnimojiMenu()Z

    move-result p0

    if-nez p0, :cond_1

    move v7, v8

    :cond_1
    return v7

    .line 1275
    :pswitch_2
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/t;->mbFrontCamera:Z

    if-nez p1, :cond_2

    const-string p1, "com.oplus.facebeauty.version"

    .line 1276
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p1

    if-lt p1, v1, :cond_3

    .line 1278
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isShowBeauty3D()Z

    move-result p0

    if-nez p0, :cond_3

    move v7, v8

    :cond_3
    return v7

    .line 1272
    :pswitch_3
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/t;->mbFrontCamera:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isShowAnimojiMenu()Z

    move-result p0

    if-nez p0, :cond_4

    move v7, v8

    :cond_4
    return v7

    .line 1269
    :pswitch_4
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isShowAnimojiMenu()Z

    move-result p0

    xor-int/2addr p0, v8

    return p0

    .line 1265
    :pswitch_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isShowAnimojiMenu()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isAnimojiOpen()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isMultiStickerOpen()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isVideoRecording()Z

    move-result p0

    if-nez p0, :cond_5

    move v7, v8

    :cond_5
    return v7

    .line 1259
    :pswitch_6
    invoke-virtual {p0, v6}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/t;->mbFrontCamera:Z

    if-eqz p0, :cond_6

    .line 1261
    invoke-static {v9}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    :cond_6
    move v7, v8

    :cond_7
    return v7

    .line 1254
    :pswitch_7
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/t;->mbFrontCamera:Z

    if-eqz p1, :cond_8

    .line 1255
    invoke-virtual {p0, v6}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 1256
    invoke-static {v9}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    move v7, v8

    :cond_8
    return v7

    :pswitch_8
    const-string p1, "com.oplus.feature.torch.softlight.support"

    .line 1250
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/t;->mbFrontCamera:Z

    if-eqz p0, :cond_9

    move v7, v8

    :cond_9
    return v7

    .line 1246
    :pswitch_9
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/capmode/t;->mCameraId:I

    const-string v1, "aps_algo_face_beauty"

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1247
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isAnimojiOpen()Z

    move-result p0

    if-nez p0, :cond_a

    move v7, v8

    :cond_a
    return v7

    .line 1243
    :pswitch_a
    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isShowAnimojiMenu()Z

    move-result p0

    if-nez p0, :cond_b

    move v7, v8

    :cond_b
    return v7

    .line 1236
    :pswitch_b
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-nez p0, :cond_c

    return v7

    :cond_c
    const-string p0, "com.oplus.feature.auto.night.scence.support"

    .line 1240
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1229
    :pswitch_c
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_d

    return v8

    :cond_d
    return v7

    .line 1226
    :pswitch_d
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1223
    :pswitch_e
    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_f
    const-string p0, "com.oplus.app.feature.sticker.support"

    .line 1220
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1217
    :pswitch_10
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/capmode/t;->mCameraId:I

    const-string v0, "aps_algo_filter"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 1214
    :pswitch_11
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isShowAnimojiMenu()Z

    move-result p0

    xor-int/2addr p0, v8

    return p0

    .line 1203
    :pswitch_12
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v8

    .line 1207
    :cond_e
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/t;->mbFrontCamera:Z

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isVideoRecording()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isShowAnimojiMenu()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_2

    :cond_f
    return v8

    :cond_10
    :goto_2
    return v7

    .line 1193
    :pswitch_13
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/t;->mbFrontCamera:Z

    if-eqz p1, :cond_11

    const-string p1, "com.oplus.feature.front.camera.auto.zoom.support"

    .line 1194
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1196
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_11

    return v8

    :cond_11
    return v7

    .line 1186
    :pswitch_14
    invoke-static {}, Lcom/oplus/camera/util/Util;->aQ()Z

    move-result p1

    if-eqz p1, :cond_12

    return v7

    .line 1190
    :cond_12
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/t;->mbFrontCamera:Z

    xor-int/2addr p0, v8

    return p0

    .line 1183
    :pswitch_15
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result p0

    return p0

    .line 1180
    :pswitch_16
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_17
    return v7

    :pswitch_18
    return v8

    :sswitch_data_0
    .sparse-switch
        -0x7b6c9fed -> :sswitch_26
        -0x704beae8 -> :sswitch_25
        -0x6cfbc4d5 -> :sswitch_24
        -0x6aa537a9 -> :sswitch_23
        -0x68904d91 -> :sswitch_22
        -0x61c4af01 -> :sswitch_21
        -0x5f048920 -> :sswitch_20
        -0x5d1e6b30 -> :sswitch_1f
        -0x500c4e2d -> :sswitch_1e
        -0x4c5708d7 -> :sswitch_1d
        -0x487d971a -> :sswitch_1c
        -0x423965f9 -> :sswitch_1b
        -0x41e20473 -> :sswitch_1a
        -0x3f608456 -> :sswitch_19
        -0x2d1ad7d4 -> :sswitch_18
        -0x192caf8f -> :sswitch_17
        -0x185952aa -> :sswitch_16
        -0xb0f5f67 -> :sswitch_15
        -0x953b61c -> :sswitch_14
        -0x70528fc -> :sswitch_13
        -0x5f8f68b -> :sswitch_12
        -0x861d1b -> :sswitch_11
        0x739636c -> :sswitch_10
        0xa9326a6 -> :sswitch_f
        0xb8585f9 -> :sswitch_e
        0x140b168f -> :sswitch_d
        0x260d3011 -> :sswitch_c
        0x315862ae -> :sswitch_b
        0x3f50f6f7 -> :sswitch_a
        0x4a67fef8 -> :sswitch_9
        0x5666c336 -> :sswitch_8
        0x5f579904 -> :sswitch_7
        0x62669e01 -> :sswitch_6
        0x65b53143 -> :sswitch_5
        0x74ed85e4 -> :sswitch_4
        0x7899fd60 -> :sswitch_3
        0x78e7e46b -> :sswitch_2
        0x7e1951aa -> :sswitch_1
        0x7e4b5cf3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportGestureCapture()Z
    .locals 1

    .line 2905
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->j:Lcom/oplus/camera/sticker/ui/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/l;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2906
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getSupportGestureCapture()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_camera_photo_ratio_key"

    .line 1434
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "pref_camera_timer_shutter_key"

    .line 1435
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "pref_setting_key"

    .line 1436
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1440
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "pref_video_size_key"

    .line 1444
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "pref_camera_hdr_mode_key"

    .line 1448
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "pref_camera_vivid_effect_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "pref_filter_menu"

    .line 1452
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1453
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isAnimojiOpen()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isShowAnimojiMenu()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    return v1

    :cond_5
    const-string v0, "pref_video_filter_menu"

    .line 1458
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 1462
    :cond_6
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1449
    :cond_7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_8
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public getSupportQuickJpeg(Lcom/oplus/camera/e/c;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoFpsRange()Landroid/util/Range;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1106
    iget v0, p0, Lcom/oplus/camera/capmode/t;->mCameraId:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/t;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->z()[Landroid/util/Range;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1108
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    const/16 v2, 0x12c

    const/4 v3, 0x0

    .line 1115
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 1116
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v2, v4, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_1

    .line 1117
    aget-object v1, v0, v3

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v1

    move v1, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-ltz v1, :cond_3

    .line 1123
    aget-object p0, v0, v1

    return-object p0

    .line 1125
    :cond_3
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getVideoFpsRange()Landroid/util/Range;

    move-result-object p0

    return-object p0

    .line 1109
    :cond_4
    :goto_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getVideoFpsRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getZSLMode()Z
    .locals 2

    .line 2068
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2072
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2075
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->getZSLMode()Z

    move-result p0

    return p0
.end method

.method protected hideViewWhileResume()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 413
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/capmode/t;->a(ZZ)V

    return-void
.end method

.method public isAllowSwitch(Lcom/oplus/camera/d$a;)Z
    .locals 1

    .line 2728
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isShowAnimojiMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2732
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->isAllowSwitch(Lcom/oplus/camera/d$a;)Z

    move-result p0

    return p0
.end method

.method public isAnimojiOpen()Z
    .locals 2

    .line 964
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/t;->j()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 968
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 969
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/content/SharedPreferences;)Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    :cond_1
    const-string v1, "pref_omoji_process_key"

    .line 972
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Lcom/oplus/camera/sticker/data/StickerItem;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isAnyModeAnimationRunning()Z
    .locals 0

    .line 988
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    if-eqz p0, :cond_0

    .line 989
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/h;->i()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCaptureModeType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isMultiStickerOpen()Z
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_0

    .line 980
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/a/t;->j()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 983
    :goto_0
    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/q;->c(Lcom/oplus/camera/sticker/data/StickerItem;)Z

    move-result p0

    return p0
.end method

.method public isNeedAPSProcess()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isNeedSetZslWhenCapture()Z
    .locals 0

    .line 2933
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p0

    return p0
.end method

.method public isNeedTransAnimWhenRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStickerMenuOpen()Z
    .locals 0

    .line 2445
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2448
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/h;->g()Z

    move-result p0

    return p0
.end method

.method public isSubMenuEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportShowFilterMenu()Z
    .locals 1

    .line 1155
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->isSupportShowFilterMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isAnimojiOpen()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isUseMediaCodec()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isVideoModeType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needPreviewMeta(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "type_video"

    .line 1573
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "type_preview_frame"

    .line 1575
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string p1, "pref_omoji_process_key"

    .line 1576
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "pref_camera_gesture_shutter_key"

    .line 1577
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/t;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    :cond_3
    const-string v0, "type_still_capture_yuv_main"

    .line 1578
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "type_still_capture_yuv_sub"

    .line 1579
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "type_still_capture_yuv_third"

    .line 1580
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "type_still_capture_jpeg"

    .line 1582
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1583
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportApsCapture()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 1586
    :cond_5
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_6
    :goto_0
    return v1
.end method

.method public needUploadOplusStatistics(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_face_detection_key"

    .line 2110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2114
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->needUploadOplusStatistics(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 2

    const-string p1, "StickerMode"

    const-string p2, "onAfterPictureTaken"

    .line 1982
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-nez p1, :cond_0

    return-void

    .line 1988
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 1989
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->n()V

    .line 1990
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 1993
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1994
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/sticker/ui/h;->a(Z)V

    .line 1995
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/sticker/ui/h;->b(Z)V

    :cond_2
    const-string p1, "key_bubble_short_video"

    .line 1998
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/t;->containsBubbleKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1999
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isShowAnimojiMenu()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    if-eqz v0, :cond_3

    .line 2000
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/h;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2001
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/t;->updateBubbleValue(Ljava/lang/String;Z)V

    const/4 p1, 0x4

    .line 2004
    iget-object p2, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/t;->getBubbleOffsetX(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/t;->getBubbleOffsetY(I)I

    move-result p0

    invoke-interface {p2, v0, p1, v1, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;III)V

    :cond_3
    return-void
.end method

.method public onAfterSnapping()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 2

    const-string v0, "StickerMode"

    const-string v1, "onAfterStartPreview"

    .line 821
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/h;->a(Z)V

    .line 825
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/h;->b(Z)V

    .line 828
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onAfterStartPreview(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    const-string v0, "StickerMode"

    const-string v1, "onBackPressed"

    .line 2498
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2501
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isVideoRecordStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2502
    invoke-direct {p0}, Lcom/oplus/camera/capmode/t;->j()V

    .line 2504
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onBackPressed()Z

    move-result p0

    return p0

    .line 2505
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isVideoRecordStarting()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2506
    invoke-direct {p0}, Lcom/oplus/camera/capmode/t;->j()V

    .line 2507
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->stopShortVideoRecording()V

    :cond_1
    return v1

    .line 2515
    :cond_2
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforePictureTaken([BZ)V
    .locals 0

    const-string p0, "StickerMode"

    const-string p1, "onBeforePictureTaken"

    .line 1976
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onBeforePreview()V
    .locals 4

    .line 931
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onBeforePreview()V

    const-string v0, "StickerMode.onBeforePreview"

    .line 933
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 935
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/content/SharedPreferences;)Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 938
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sticker_menu_item_usetime"

    invoke-direct {p0, v3, v2}, Lcom/oplus/camera/capmode/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v2, :cond_1

    .line 942
    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v2, v1}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/sticker/data/StickerItem;)V

    goto :goto_0

    .line 944
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStickerIndex, mPreferences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StickerMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oplus/camera/capmode/t$5;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/t$5;-><init>(Lcom/oplus/camera/capmode/t;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 955
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->applyBeautyParam()V

    .line 957
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 1

    const-string p1, "StickerMode"

    const-string v0, "onBeforeSnapping"

    .line 1476
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isAnimojiOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1479
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/preview/a/t;->j(I)Lcom/oplus/camera/ui/preview/a/y;

    move-result-object p1

    .line 1481
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1486
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/capmode/t$6;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/t$6;-><init>(Lcom/oplus/camera/capmode/t;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onCameraIdChangedAnimationEnd()V
    .locals 1

    .line 845
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v0, "pref_video_size_key"

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V
    .locals 7

    .line 1761
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/w;->onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V

    .line 1763
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 1764
    :try_start_0
    invoke-virtual {p1}, Lcom/oplus/camera/aps/service/CameraCaptureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    .line 1765
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, p0, Lcom/oplus/camera/capmode/t;->l:Ljava/lang/Float;

    .line 1766
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, p0, Lcom/oplus/camera/capmode/t;->m:Ljava/lang/Float;

    .line 1767
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/oplus/camera/capmode/t;->n:Ljava/lang/Integer;

    .line 1768
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/oplus/camera/capmode/t;->o:Ljava/lang/Integer;

    .line 1769
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->p:Ljava/lang/Long;

    const-string p1, "StickerMode"

    .line 1771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureCompleted, mCurrentFocalLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->l:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentAperture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->m:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentISO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->n:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentWhiteBalanceMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->o:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentExposureTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->p:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    iget-wide v1, p2, Lcom/oplus/camera/e/c;->ad:J

    .line 1778
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    iget-wide v3, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mRequestHash:J

    .line 1779
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    iget-wide v3, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mStickerCaptureTime:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    .line 1781
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/t;->g()V

    :cond_1
    const-string p1, "StickerMode"

    .line 1784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureCompleted, captureTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mStickerCaptureTime: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    iget-wide v4, v1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mStickerCaptureTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestHash: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    iget-wide v1, v1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mRequestHash:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestHashCode: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1784
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1790
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_4

    .line 1791
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    new-instance p2, Lcom/oplus/camera/capmode/t$9;

    invoke-direct {p2, p0}, Lcom/oplus/camera/capmode/t$9;-><init>(Lcom/oplus/camera/capmode/t;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 1788
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onCaptureFirstFrameArrived(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/aps/service/CameraCaptureResult;)V
    .locals 1

    .line 2948
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/w;->onCaptureFirstFrameArrived(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/aps/service/CameraCaptureResult;)V

    .line 2950
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 2951
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, p1, p2}, Lcom/oplus/camera/capmode/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/aps/service/CameraCaptureResult;)V

    .line 2954
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/t;->mbPaused:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2955
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/t;->F:Z

    .line 2956
    invoke-direct {p0}, Lcom/oplus/camera/capmode/t;->k()V

    :cond_1
    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 6

    const-string v0, "StickerMode"

    const-string v1, "onDeinitCameraMode"

    .line 904
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onDeInitCameraMode(Ljava/lang/String;)V

    .line 908
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->E()V

    .line 909
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    sget-object p1, Lcom/oplus/camera/ui/preview/h;->a:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IJJ)V

    .line 911
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/ui/h;->g()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 912
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0, v1}, Lcom/oplus/camera/sticker/ui/h;->b(ZZZ)V

    .line 915
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/ui/h;->f()V

    .line 916
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->C()V

    .line 917
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v1, "full"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_photo_ratio_key"

    invoke-interface {p1, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 918
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/capmode/t;->updateFaceBeautyLevel(IZ)V

    .line 920
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz p1, :cond_1

    .line 921
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/preview/a/t;->g(I)V

    :cond_1
    const-string p1, "key_bubble_short_video"

    .line 924
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/t;->isBubbleOpen(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 925
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x4

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "key_bubble_short_video"

    .line 504
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/t;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->y:Lcom/oplus/camera/sticker/ui/c;

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/c;->a()V

    .line 510
    invoke-static {}, Lcom/oplus/camera/sticker/ui/c;->b()V

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 514
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/h;->c()V

    .line 515
    iput-object v1, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    .line 518
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->j:Lcom/oplus/camera/sticker/ui/l;

    if-eqz v0, :cond_3

    .line 519
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/l;->c()V

    .line 520
    iput-object v1, p0, Lcom/oplus/camera/capmode/t;->j:Lcom/oplus/camera/sticker/ui/l;

    .line 523
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/q;->e()V

    .line 525
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onDestroy()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2538
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onEffectMenuPopDown(Z)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 2435
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/capmode/t;->b(ZZ)V

    return-void
.end method

.method public onEffectMenuPopUp()V
    .locals 5

    .line 2410
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object v0

    .line 2412
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isStickerMenuOpen()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2413
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isPanelMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2414
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    const v4, 0x7f10026c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;)V

    .line 2417
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/sticker/ui/h;->e(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2419
    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/capmode/t;->a(ZZ)V

    :goto_0
    const-string v1, "beauty"

    .line 2422
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "1"

    const-string v3, "menuClick"

    if-eqz v1, :cond_2

    .line 2423
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    const-string v1, "sticker_mode_click_smooth_menu"

    .line 2424
    invoke-static {v1, v2}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2423
    invoke-static {v0, v3, v1}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "filter"

    .line 2425
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2426
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    const-string v1, "sticker_mode_click_filter_menu"

    .line 2427
    invoke-static {v1, v2}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2426
    invoke-static {v0, v3, v1}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->aB()V

    return-void
.end method

.method public onFaceBeautyItemValueChange(IIZ)V
    .locals 0

    .line 2744
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/w;->onFaceBeautyItemValueChange(IIZ)V

    .line 2746
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/t;->a(IIZ)V

    return-void
.end method

.method public onFilterItemChange(I)V
    .locals 0

    .line 1598
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onFilterItemChange(I)V

    .line 1600
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/t;->a(I)V

    return-void
.end method

.method public onGetAfterCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 2

    if-eqz p1, :cond_2

    .line 1400
    instance-of v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    if-eqz v0, :cond_2

    .line 1401
    check-cast p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    .line 1403
    iget-object v0, p2, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a([B)Landroid/media/ExifInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/Storage;->a(Landroid/media/ExifInterface;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1406
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mWidth:Ljava/lang/String;

    .line 1407
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mHeight:Ljava/lang/String;

    .line 1410
    :cond_0
    iget-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mFlashMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "off"

    .line 1411
    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mFlashMode:Ljava/lang/String;

    .line 1414
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mFlashTrigger:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1417
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/w;->onGetAfterCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    return-object p0
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1299
    :cond_0
    instance-of v1, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    if-eqz v1, :cond_1

    .line 1300
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    move-result-object p0

    return-object p0

    .line 1301
    :cond_1
    instance-of v1, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    if-eqz v1, :cond_2

    .line 1302
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public onGetNearMeOnClickData()V
    .locals 5

    .line 2119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2121
    iget v1, p0, Lcom/oplus/camera/capmode/t;->A:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 2123
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "human_generate_gif"

    .line 2122
    invoke-static {v3, v1}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2124
    iput v2, p0, Lcom/oplus/camera/capmode/t;->A:I

    .line 2125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2128
    :cond_0
    iget v1, p0, Lcom/oplus/camera/capmode/t;->s:I

    if-lez v1, :cond_1

    .line 2130
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sticker_recyclebin_click"

    .line 2129
    invoke-static {v3, v1}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2131
    iput v2, p0, Lcom/oplus/camera/capmode/t;->s:I

    .line 2132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2135
    :cond_1
    iget v1, p0, Lcom/oplus/camera/capmode/t;->t:I

    if-lez v1, :cond_2

    .line 2137
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sticker_recyclebin_deleteall"

    .line 2136
    invoke-static {v3, v1}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2138
    iput v2, p0, Lcom/oplus/camera/capmode/t;->t:I

    .line 2139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2142
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->w:Ljava/util/HashMap;

    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/capmode/t;->a(Ljava/util/HashMap;Ljava/lang/StringBuilder;)V

    .line 2143
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->v:Ljava/util/HashMap;

    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/capmode/t;->b(Ljava/util/HashMap;Ljava/lang/StringBuilder;)V

    const/4 v1, 0x0

    .line 2144
    iput-object v1, p0, Lcom/oplus/camera/capmode/t;->u:Ljava/lang/String;

    .line 2146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 2147
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "menuClick"

    invoke-static {v1, v2, v0}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/capmode/t;->B:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/camera/capmode/t;->B:J

    .line 2152
    iget-wide v0, p0, Lcom/oplus/camera/capmode/t;->B:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    .line 2154
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sticker_mode_use_time"

    .line 2153
    invoke-static {v1, v0}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2155
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    const-string v4, "enterSticker"

    invoke-static {v1, v4, v0}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    :cond_4
    iput-wide v2, p0, Lcom/oplus/camera/capmode/t;->B:J

    return-void
.end method

.method protected onInitCameraMode()V
    .locals 4

    const-string v0, "StickerMode"

    const-string v1, "onInitCameraMode"

    .line 865
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/capmode/t;->B:J

    .line 869
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/content/Context;)V

    .line 870
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "pref_allow_network_access"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/q;->f()V

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/t;->g()V

    .line 878
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    if-nez v0, :cond_2

    .line 879
    new-instance v0, Lcom/oplus/camera/sticker/ui/c;

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    const v3, 0x7f08060e

    invoke-direct {v0, v2, v3}, Lcom/oplus/camera/sticker/ui/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/t;->y:Lcom/oplus/camera/sticker/ui/c;

    .line 880
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/content/SharedPreferences;)Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 881
    :cond_1
    new-instance v0, Lcom/oplus/camera/sticker/ui/h;

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/oplus/camera/capmode/t;->mOrientation:I

    invoke-direct {v0, v2, v3, v1}, Lcom/oplus/camera/sticker/ui/h;-><init>(Landroid/app/Activity;IZ)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    .line 882
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->I:Lcom/oplus/camera/sticker/ui/i;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/h;->a(Lcom/oplus/camera/sticker/ui/i;)V

    .line 883
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->y:Lcom/oplus/camera/sticker/ui/c;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/h;->a(Lcom/oplus/camera/sticker/ui/c;)V

    .line 886
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/h;->a()V

    .line 887
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/h;->e()V

    .line 888
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    iget v1, p0, Lcom/oplus/camera/capmode/t;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/h;->b(I)V

    .line 890
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1000fd

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->c(Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v1, "full"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_photo_ratio_key"

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/capmode/t$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/t$4;-><init>(Lcom/oplus/camera/capmode/t;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 1

    .line 2924
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onMoreModeHidden(I)V

    .line 2926
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 2927
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/capmode/t;->b(ZZ)V

    :cond_0
    return-void
.end method

.method public onMoreModeShown()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2915
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/capmode/t;->a(ZZ)V

    const-string v1, "key_bubble_short_video"

    .line 2917
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/t;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2918
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x4

    invoke-interface {p0, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "StickerMode"

    const-string v1, "onPause"

    .line 484
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->j:Lcom/oplus/camera/sticker/ui/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/l;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->j:Lcom/oplus/camera/sticker/ui/l;

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/l;->dismiss()V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/h;->b()V

    .line 491
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->C()V

    const-string v0, "key_bubble_short_video"

    .line 493
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/t;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 497
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/capmode/t;->j()V

    .line 499
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onPause()V

    return-void
.end method

.method public onReceivePreviewCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1737
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onReceivePreviewCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 1739
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/t;->D:Z

    if-eqz v0, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 1741
    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, p0, Lcom/oplus/camera/capmode/t;->l:Ljava/lang/Float;

    .line 1742
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, p0, Lcom/oplus/camera/capmode/t;->m:Ljava/lang/Float;

    .line 1743
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/oplus/camera/capmode/t;->n:Ljava/lang/Integer;

    .line 1744
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/oplus/camera/capmode/t;->o:Ljava/lang/Integer;

    .line 1745
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->p:Ljava/lang/Long;

    .line 1747
    invoke-direct {p0}, Lcom/oplus/camera/capmode/t;->f()V

    .line 1748
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 1750
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/t;->D:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1748
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method protected onResume(Z)V
    .locals 2

    const-string v0, "StickerMode"

    const-string v1, "onResume"

    .line 418
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/w;->onResume(Z)V

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/capmode/t;->B:J

    .line 423
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/t;->g()V

    .line 425
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isShowAnimojiMenu()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/sticker/ui/h;->a(ZZ)V

    const-string p1, "com.oplus.app.feature.sticker.support"

    .line 427
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/oplus/camera/capmode/t;->d()V

    :cond_0
    return-void
.end method

.method public onSessionConfigured()V
    .locals 1

    .line 450
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onSessionConfigured()V

    .line 452
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->J()V

    :cond_0
    return-void
.end method

.method public onShutterButtonLongClick()V
    .locals 5

    .line 1627
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onShutterButtonLongClick()V

    .line 1629
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v1, 0x1

    const-string v2, "button_color_inside_none"

    const-string v3, "button_shape_ring_none"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1632
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 1634
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mWaitRecordStarted:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->close()V

    return-void
.end method

.method protected onShutterCallback(ZZ)V
    .locals 0

    .line 1639
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/w;->onShutterCallback(ZZ)V

    if-eqz p2, :cond_0

    .line 1642
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 1643
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->h()V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "StickerMode"

    const-string v1, "onSingleTapUp"

    .line 2520
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2523
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 2525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2526
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2530
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isShowAnimojiMenu()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onStartCapturePreviewData()V
    .locals 1

    const/4 v0, 0x1

    .line 1756
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/t;->D:Z

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 0

    .line 1564
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isVideoRecordStopped()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onSwitchCameraButtonClick()V
    .locals 2

    .line 2548
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onSwitchCameraButtonClick()V

    .line 2550
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    const-string v0, "sticker_mode_switch_camera"

    const-string v1, "1"

    .line 2551
    invoke-static {v0, v1}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "menuClick"

    .line 2550
    invoke-static {p0, v1, v0}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onThumbnailUpdated(Lcom/oplus/camera/aps/service/ThumbnailItem;)V
    .locals 4

    .line 1649
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 1650
    :try_start_0
    iput-object p1, p0, Lcom/oplus/camera/capmode/t;->z:Lcom/oplus/camera/aps/service/ThumbnailItem;

    .line 1652
    invoke-direct {p0}, Lcom/oplus/camera/capmode/t;->f()V

    const-string p0, "StickerMode"

    .line 1654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThumbnailUpdated, mRequestHash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mRequestHash:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mStickerCaptureTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mStickerCaptureTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onTimeSnapShotEnd(Z)V
    .locals 1

    .line 2103
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p1

    const/4 v0, 0x0

    .line 2104
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/b;->b(I)V

    .line 2105
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 1

    .line 2293
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->onUiModeChanged()V

    .line 2295
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->j:Lcom/oplus/camera/sticker/ui/l;

    if-eqz v0, :cond_0

    .line 2296
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/l;->b()V

    .line 2299
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onZoomMenuCollapsed()V
    .locals 2

    .line 2386
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2387
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2388
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/capmode/t;->b(ZZ)V

    :cond_0
    return-void
.end method

.method public onZoomMenuExpand()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2381
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/capmode/t;->a(ZZ)V

    return-void
.end method

.method public performSlide(ILandroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setOrientation(I)V
    .locals 0

    .line 530
    iput p1, p0, Lcom/oplus/camera/capmode/t;->mOrientation:I

    .line 531
    iget-object p1, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    iget p0, p0, Lcom/oplus/camera/capmode/t;->mOrientation:I

    invoke-virtual {p1, p0}, Lcom/oplus/camera/sticker/ui/h;->b(I)V

    return-void
.end method

.method public showEffectMenu()Z
    .locals 0

    .line 2440
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/h;->g()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected showRecordingTimeUI()V
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getRealVideoTimeRatio()Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->mActivity:Landroid/app/Activity;

    .line 377
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070a1e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 378
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->needShowVideoTime()Z

    move-result p0

    const/4 v3, 0x1

    .line 376
    invoke-interface {v0, v1, v2, p0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/Float;IZZ)V

    return-void
.end method

.method public startScreenTorch()V
    .locals 2

    const-string v0, "key_bubble_short_video"

    .line 2395
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/t;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2396
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    :cond_0
    return-void
.end method

.method protected startShortVideoRecording()V
    .locals 4

    const-string v0, "StickerMode"

    const-string v1, "startShortVideoRecording"

    .line 1042
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->C()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1045
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isVideoRecordStopped()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    if-eqz v1, :cond_4

    .line 1047
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/ui/h;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 1056
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1059
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/t;->e()Landroid/media/CamcorderProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/capmode/t;->mProfile:Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 1061
    iput-object v2, p0, Lcom/oplus/camera/capmode/t;->mProfile:Landroid/media/CamcorderProfile;

    const-string v2, "startShortVideoRecording, CamcorderProfile.get fail! "

    .line 1063
    invoke-static {v0, v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1066
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v1, :cond_3

    .line 1067
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/t;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    .line 1069
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startShortVideoRecording, preview width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", preview heigth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1069
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1073
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/16 v2, 0x780

    if-gt v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v3, 0x440

    if-le v0, v3, :cond_2

    .line 1074
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mProfile:Landroid/media/CamcorderProfile;

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1075
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mProfile:Landroid/media/CamcorderProfile;

    const/16 v1, 0x390

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto :goto_1

    .line 1077
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1078
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1082
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1083
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1048
    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startShortVideoRecording, isDoubleFinger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->C()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isVideoRecordStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isVideoRecordStopped()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    iget-object v2, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    const-string v3, "null"

    if-nez v2, :cond_5

    move-object v2, v3

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/oplus/camera/sticker/ui/h;->i()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", MenuOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/h;->g()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1048
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected startShutterButtonProgress()V
    .locals 0

    .line 1552
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->startShutterButtonProgress()V

    return-void
.end method

.method public stopScreenTorch()V
    .locals 4

    const-string v0, "key_bubble_short_video"

    .line 2402
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/t;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 2404
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/t;->getBubbleOffsetX(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/t;->getBubbleOffsetY(I)I

    move-result p0

    invoke-interface {v1, v2, v0, v3, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;III)V

    :cond_0
    return-void
.end method

.method protected stopShortVideoRecording()V
    .locals 2

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopShortVideoRecording, isVideoRecordStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isVideoRecordStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isVideoRecordStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 1139
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isVideoRecordStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1140
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mWaitRecordStarted:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 1143
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->isVideoRecordStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1144
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->onVideoShutterButtonClick()V

    :cond_2
    return-void
.end method

.method protected stopShutterButtonProgress()V
    .locals 2

    .line 1557
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/t;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 1558
    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 1559
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->stopShutterButtonProgress()V

    return-void
.end method

.method public stopVideoRestoreUIWithControlUI()V
    .locals 2

    .line 1544
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/h;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1545
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/capmode/t;->b(ZZ)V

    .line 1546
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v1, v0}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public supportBeautyButton()Z
    .locals 1

    .line 2483
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/t;->j()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Lcom/oplus/camera/sticker/data/StickerItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2487
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/w;->supportBeautyButton()Z

    move-result p0

    return p0
.end method

.method public updateRatioType()V
    .locals 2

    .line 2737
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 2738
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v0, "full"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_photo_ratio_key"

    invoke-interface {p0, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateViewByEnterCameraType()Z
    .locals 2

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateViewByEnterCameraType, mStickerMenu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 801
    invoke-static {}, Lcom/oplus/camera/filmvideomode/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->i:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/sticker/ui/h;->d(Z)V

    goto :goto_0

    .line 804
    :cond_0
    new-instance v0, Lcom/oplus/camera/capmode/t$3;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/t$3;-><init>(Lcom/oplus/camera/capmode/t;)V

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method
