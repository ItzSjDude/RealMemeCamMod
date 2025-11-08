.class public abstract Lcom/oplus/tblplayer/IRemoteObservable$Stub;
.super Landroid/os/Binder;
.source "IRemoteObservable.java"

# interfaces
.implements Lcom/oplus/tblplayer/IRemoteObservable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/IRemoteObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/IRemoteObservable$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oplus.tblplayer.IRemoteObservable"

.field static final TRANSACTION_notifyBufferingUpdate:I = 0x3

.field static final TRANSACTION_notifyCompletion:I = 0x2

.field static final TRANSACTION_notifyDownstreamSizeChanged:I = 0xc

.field static final TRANSACTION_notifyError:I = 0x6

.field static final TRANSACTION_notifyInfo:I = 0x7

.field static final TRANSACTION_notifyIsPlayingChanged:I = 0xb

.field static final TRANSACTION_notifyPlaybackResult:I = 0x9

.field static final TRANSACTION_notifyPlayerStateChanged:I = 0xa

.field static final TRANSACTION_notifyPrepared:I = 0x1

.field static final TRANSACTION_notifySeekComplete:I = 0x4

.field static final TRANSACTION_notifyTimedText:I = 0x8

.field static final TRANSACTION_notifyVideoSizeChanged:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oplus.tblplayer.IRemoteObservable"

    .line 80
    invoke-virtual {p0, p0, v0}, Lcom/oplus/tblplayer/IRemoteObservable$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oplus/tblplayer/IRemoteObservable;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oplus.tblplayer.IRemoteObservable"

    .line 91
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    instance-of v1, v0, Lcom/oplus/tblplayer/IRemoteObservable;

    if-eqz v1, :cond_1

    .line 93
    check-cast v0, Lcom/oplus/tblplayer/IRemoteObservable;

    return-object v0

    .line 95
    :cond_1
    new-instance v0, Lcom/oplus/tblplayer/IRemoteObservable$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oplus/tblplayer/IRemoteObservable$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/oplus/tblplayer/IRemoteObservable;
    .locals 1

    .line 556
    sget-object v0, Lcom/oplus/tblplayer/IRemoteObservable$Stub$Proxy;->sDefaultImpl:Lcom/oplus/tblplayer/IRemoteObservable;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/oplus/tblplayer/IRemoteObservable;)Z
    .locals 1

    .line 549
    sget-object v0, Lcom/oplus/tblplayer/IRemoteObservable$Stub$Proxy;->sDefaultImpl:Lcom/oplus/tblplayer/IRemoteObservable;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 550
    sput-object p0, Lcom/oplus/tblplayer/IRemoteObservable$Stub$Proxy;->sDefaultImpl:Lcom/oplus/tblplayer/IRemoteObservable;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.oplus.tblplayer.IRemoteObservable"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 245
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 230
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 239
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/oplus/tblplayer/IRemoteObservable$Stub;->notifyDownstreamSizeChanged(IIIF)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 221
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 224
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/IRemoteObservable$Stub;->notifyIsPlayingChanged(Z)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 212
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 215
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/IRemoteObservable$Stub;->notifyPlayerStateChanged(I)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 198
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 201
    sget-object p1, Lcom/oplus/tblplayer/monitor/Report;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oplus/tblplayer/monitor/Report;

    .line 206
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oplus/tblplayer/IRemoteObservable$Stub;->notifyPlaybackResult(Lcom/oplus/tblplayer/monitor/Report;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 184
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 187
    sget-object p1, Lcom/oplus/tblplayer/misc/TBLTimedText;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oplus/tblplayer/misc/TBLTimedText;

    .line 192
    :cond_2
    invoke-virtual {p0, v0}, Lcom/oplus/tblplayer/IRemoteObservable$Stub;->notifyTimedText(Lcom/oplus/tblplayer/misc/TBLTimedText;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 172
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/oplus/tblplayer/IRemoteObservable$Stub;->notifyInfo(II)Z

    move-result p0

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 158
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 165
    invoke-virtual {p0, p1, p4, p2}, Lcom/oplus/tblplayer/IRemoteObservable$Stub;->notifyError(IILjava/lang/String;)Z

    move-result p0

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 143
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 152
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/oplus/tblplayer/IRemoteObservable$Stub;->notifyVideoSizeChanged(IIIF)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 136
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/oplus/tblplayer/IRemoteObservable$Stub;->notifySeekComplete()V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 127
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 130
    invoke-virtual {p0, p1}, Lcom/oplus/tblplayer/IRemoteObservable$Stub;->notifyBufferingUpdate(I)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 120
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/oplus/tblplayer/IRemoteObservable$Stub;->notifyCompletion()V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 113
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/oplus/tblplayer/IRemoteObservable$Stub;->notifyPrepared()V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 108
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
