.class public final Lcom/oplus/tblplayer/monitor/Report;
.super Ljava/lang/Object;
.source "Report.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/oplus/tblplayer/monitor/ErrorCode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/monitor/Report$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/tblplayer/monitor/Report;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_VALUE:I = -0x1


# instance fields
.field public final aliveDuration:J

.field public final alreadyPreCacheBytes:J

.field public final audioFLR:F

.field public final audioMimeType:Ljava/lang/String;

.field public final audioSampleRate:I

.field public final errorCode:I

.field public final errorRenderer:Ljava/lang/String;

.field public final exception:Lcom/oplus/tblplayer/exception/IPCException;

.field public final height:I

.field public final mediaContentType:I

.field public final mediaUrl:Ljava/lang/String;

.field public final rebufferCount:J

.field public final rebufferTimeMs:J

.field public final renderedFirstFrameTime:J

.field public final rendererSupport:I

.field public final totalCacheBytes:J

.field public final totalNetworkReadBytes:J

.field public final videoFLR:F

.field public final videoFps:F

.field public final videoMimeType:Ljava/lang/String;

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 368
    new-instance v0, Lcom/oplus/tblplayer/monitor/Report$1;

    invoke-direct {v0}, Lcom/oplus/tblplayer/monitor/Report$1;-><init>()V

    sput-object v0, Lcom/oplus/tblplayer/monitor/Report;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;FIJJFFJJJJJLjava/lang/String;Lcom/oplus/tblplayer/exception/IPCException;)V
    .locals 3

    move-object v0, p0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 137
    iput v1, v0, Lcom/oplus/tblplayer/monitor/Report;->errorCode:I

    move-object v1, p2

    .line 138
    iput-object v1, v0, Lcom/oplus/tblplayer/monitor/Report;->mediaUrl:Ljava/lang/String;

    move v1, p3

    .line 139
    iput v1, v0, Lcom/oplus/tblplayer/monitor/Report;->mediaContentType:I

    move v1, p4

    .line 140
    iput v1, v0, Lcom/oplus/tblplayer/monitor/Report;->rendererSupport:I

    move v1, p5

    .line 141
    iput v1, v0, Lcom/oplus/tblplayer/monitor/Report;->width:I

    move v1, p6

    .line 142
    iput v1, v0, Lcom/oplus/tblplayer/monitor/Report;->height:I

    move-object v1, p7

    .line 143
    iput-object v1, v0, Lcom/oplus/tblplayer/monitor/Report;->videoMimeType:Ljava/lang/String;

    move-object v1, p8

    .line 144
    iput-object v1, v0, Lcom/oplus/tblplayer/monitor/Report;->audioMimeType:Ljava/lang/String;

    move v1, p9

    .line 145
    iput v1, v0, Lcom/oplus/tblplayer/monitor/Report;->videoFps:F

    move v1, p10

    .line 146
    iput v1, v0, Lcom/oplus/tblplayer/monitor/Report;->audioSampleRate:I

    move-wide v1, p11

    .line 147
    iput-wide v1, v0, Lcom/oplus/tblplayer/monitor/Report;->renderedFirstFrameTime:J

    move-wide/from16 v1, p13

    .line 148
    iput-wide v1, v0, Lcom/oplus/tblplayer/monitor/Report;->aliveDuration:J

    move/from16 v1, p15

    .line 149
    iput v1, v0, Lcom/oplus/tblplayer/monitor/Report;->videoFLR:F

    move/from16 v1, p16

    .line 150
    iput v1, v0, Lcom/oplus/tblplayer/monitor/Report;->audioFLR:F

    move-wide/from16 v1, p17

    .line 151
    iput-wide v1, v0, Lcom/oplus/tblplayer/monitor/Report;->rebufferCount:J

    move-wide/from16 v1, p19

    .line 152
    iput-wide v1, v0, Lcom/oplus/tblplayer/monitor/Report;->rebufferTimeMs:J

    move-wide/from16 v1, p21

    .line 153
    iput-wide v1, v0, Lcom/oplus/tblplayer/monitor/Report;->alreadyPreCacheBytes:J

    move-wide/from16 v1, p23

    .line 154
    iput-wide v1, v0, Lcom/oplus/tblplayer/monitor/Report;->totalCacheBytes:J

    move-wide/from16 v1, p25

    .line 155
    iput-wide v1, v0, Lcom/oplus/tblplayer/monitor/Report;->totalNetworkReadBytes:J

    move-object/from16 v1, p27

    .line 156
    iput-object v1, v0, Lcom/oplus/tblplayer/monitor/Report;->errorRenderer:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 157
    iput-object v1, v0, Lcom/oplus/tblplayer/monitor/Report;->exception:Lcom/oplus/tblplayer/exception/IPCException;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report;->errorCode:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/monitor/Report;->mediaUrl:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report;->mediaContentType:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report;->rendererSupport:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report;->width:I

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report;->height:I

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/monitor/Report;->videoMimeType:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/monitor/Report;->audioMimeType:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report;->videoFps:F

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report;->audioSampleRate:I

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/tblplayer/monitor/Report;->renderedFirstFrameTime:J

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/tblplayer/monitor/Report;->aliveDuration:J

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report;->videoFLR:F

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oplus/tblplayer/monitor/Report;->audioFLR:F

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/tblplayer/monitor/Report;->rebufferCount:J

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/tblplayer/monitor/Report;->rebufferTimeMs:J

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/tblplayer/monitor/Report;->alreadyPreCacheBytes:J

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/tblplayer/monitor/Report;->totalCacheBytes:J

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/tblplayer/monitor/Report;->totalNetworkReadBytes:J

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/monitor/Report;->errorRenderer:Ljava/lang/String;

    .line 335
    const-class v0, Lcom/oplus/tblplayer/exception/IPCException;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oplus/tblplayer/exception/IPCException;

    iput-object p1, p0, Lcom/oplus/tblplayer/monitor/Report;->exception:Lcom/oplus/tblplayer/exception/IPCException;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHitPreCache()Z
    .locals 4

    .line 164
    iget-wide v0, p0, Lcom/oplus/tblplayer/monitor/Report;->alreadyPreCacheBytes:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Report{errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/monitor/Report;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mediaUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/monitor/Report;->mediaUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/monitor/Report;->mediaContentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rendererSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/monitor/Report;->rendererSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/monitor/Report;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/monitor/Report;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoMimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/monitor/Report;->videoMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audioMimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/monitor/Report;->audioMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/monitor/Report;->videoFps:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", audioSampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/monitor/Report;->audioSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", renderedFirstFrameTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/tblplayer/monitor/Report;->renderedFirstFrameTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", aliveDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/tblplayer/monitor/Report;->aliveDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoFLR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/monitor/Report;->videoFLR:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", audioFLR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/tblplayer/monitor/Report;->audioFLR:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rebufferCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/tblplayer/monitor/Report;->rebufferCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rebufferTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/tblplayer/monitor/Report;->rebufferTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", alreadyPreCacheBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/tblplayer/monitor/Report;->alreadyPreCacheBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalCacheBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/tblplayer/monitor/Report;->totalCacheBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalNetworkReadBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/tblplayer/monitor/Report;->totalNetworkReadBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", errorRenderer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/tblplayer/monitor/Report;->errorRenderer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/tblplayer/monitor/Report;->exception:Lcom/oplus/tblplayer/exception/IPCException;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 340
    iget v0, p0, Lcom/oplus/tblplayer/monitor/Report;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-object v0, p0, Lcom/oplus/tblplayer/monitor/Report;->mediaUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget v0, p0, Lcom/oplus/tblplayer/monitor/Report;->mediaContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget v0, p0, Lcom/oplus/tblplayer/monitor/Report;->rendererSupport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget v0, p0, Lcom/oplus/tblplayer/monitor/Report;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget v0, p0, Lcom/oplus/tblplayer/monitor/Report;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget-object v0, p0, Lcom/oplus/tblplayer/monitor/Report;->videoMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/oplus/tblplayer/monitor/Report;->audioMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget v0, p0, Lcom/oplus/tblplayer/monitor/Report;->videoFps:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 349
    iget v0, p0, Lcom/oplus/tblplayer/monitor/Report;->audioSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget-wide v0, p0, Lcom/oplus/tblplayer/monitor/Report;->renderedFirstFrameTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 351
    iget-wide v0, p0, Lcom/oplus/tblplayer/monitor/Report;->aliveDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 352
    iget v0, p0, Lcom/oplus/tblplayer/monitor/Report;->videoFLR:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 353
    iget v0, p0, Lcom/oplus/tblplayer/monitor/Report;->audioFLR:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 354
    iget-wide v0, p0, Lcom/oplus/tblplayer/monitor/Report;->rebufferCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 355
    iget-wide v0, p0, Lcom/oplus/tblplayer/monitor/Report;->rebufferTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 356
    iget-wide v0, p0, Lcom/oplus/tblplayer/monitor/Report;->alreadyPreCacheBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 357
    iget-wide v0, p0, Lcom/oplus/tblplayer/monitor/Report;->totalCacheBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 358
    iget-wide v0, p0, Lcom/oplus/tblplayer/monitor/Report;->totalNetworkReadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 359
    iget-object v0, p0, Lcom/oplus/tblplayer/monitor/Report;->errorRenderer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget-object p0, p0, Lcom/oplus/tblplayer/monitor/Report;->exception:Lcom/oplus/tblplayer/exception/IPCException;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
