.class public final Lcom/oplus/tblplayer/utils/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# static fields
.field private static final ARRAY_MASK:I = 0x40000000

.field private static final ARRAY_SHIFT:I = 0x1e

.field private static final EX_IPC:I = -0x1450e

.field private static final FLAG_ARRAY:I = 0x40000000

.field private static final TYPE_BINDER:I = 0x9

.field private static final TYPE_BOOLEAN:I = 0x2

.field private static final TYPE_BYTE:I = 0x3

.field private static final TYPE_DOUBLE:I = 0x7

.field private static final TYPE_FLOAT:I = 0x6

.field private static final TYPE_INT:I = 0x4

.field private static final TYPE_IO_EXCEPTION:I = 0xf

.field private static final TYPE_LIST:I = 0x10

.field private static final TYPE_LONG:I = 0x5

.field private static final TYPE_NULL:I = 0x1

.field private static final TYPE_OBJECTS:I = 0xe

.field private static final TYPE_PARCEL:I = 0xa

.field private static final TYPE_SERIAL:I = 0xd

.field private static final TYPE_STRING:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs invokeRemoteMethod(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 66
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 69
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 72
    invoke-static {v0, p3}, Lcom/oplus/tblplayer/utils/ParcelUtils;->writeInParcel(Landroid/os/Parcel;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 75
    :try_start_0
    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 76
    invoke-static {v1}, Lcom/oplus/tblplayer/utils/ParcelUtils;->readException(Landroid/os/Parcel;)V

    .line 77
    invoke-static {v1}, Lcom/oplus/tblplayer/utils/ParcelUtils;->readParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 80
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 79
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 80
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static invokeVoidRemoteMethod(Landroid/os/IBinder;I[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 98
    invoke-static {v0, p2}, Lcom/oplus/tblplayer/utils/ParcelUtils;->writeInParcel(Landroid/os/Parcel;[Ljava/lang/Object;)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 101
    :try_start_0
    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static readException(Landroid/os/Parcel;)V
    .locals 2

    .line 238
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, -0x1450e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 242
    invoke-virtual {p0}, Landroid/os/Parcel;->readException()V

    return-void

    .line 240
    :cond_1
    new-instance v0, Lcom/oplus/tblplayer/exception/IPCException;

    invoke-direct {v0, p0}, Lcom/oplus/tblplayer/exception/IPCException;-><init>(Landroid/os/Parcel;)V

    throw v0
.end method

.method public static readParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 273
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v0, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 343
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 344
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v4, v0, :cond_e

    .line 346
    invoke-static {p0}, Lcom/oplus/tblplayer/utils/ParcelUtils;->readParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 348
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 334
    :pswitch_2
    new-instance v0, Lcom/oplus/tblplayer/exception/IPCException;

    invoke-direct {v0, p0}, Lcom/oplus/tblplayer/exception/IPCException;-><init>(Landroid/os/Parcel;)V

    .line 335
    invoke-virtual {v0}, Lcom/oplus/tblplayer/exception/IPCException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/oplus/tblplayer/exception/IPCException;

    if-eqz p0, :cond_2

    .line 337
    invoke-virtual {p0}, Lcom/oplus/tblplayer/exception/IPCException;->toIOException()Ljava/io/IOException;

    move-result-object v2

    goto/16 :goto_4

    .line 339
    :cond_2
    invoke-virtual {v0}, Lcom/oplus/tblplayer/exception/IPCException;->toIOException()Ljava/io/IOException;

    move-result-object v2

    goto/16 :goto_4

    .line 331
    :pswitch_3
    invoke-static {p0}, Lcom/oplus/tblplayer/utils/ParcelUtils;->readParcels(Landroid/os/Parcel;)[Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_4

    .line 328
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    goto/16 :goto_4

    .line 306
    :pswitch_5
    const-class v0, Lcom/oplus/tblplayer/utils/ParcelUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v1, :cond_4

    .line 308
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p0

    .line 310
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    .line 313
    :cond_3
    array-length v0, p0

    .line 316
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 317
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    move-object v2, v1

    check-cast v2, [Landroid/os/Parcelable;

    .line 318
    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    .line 321
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 324
    :cond_4
    const-class v0, Lcom/oplus/tblplayer/utils/ParcelUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    goto/16 :goto_4

    :pswitch_6
    if-eqz v1, :cond_5

    .line 303
    invoke-virtual {p0}, Landroid/os/Parcel;->createBinderArray()[Landroid/os/IBinder;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    :goto_2
    move-object v2, p0

    goto/16 :goto_4

    :pswitch_7
    if-eqz v1, :cond_6

    .line 300
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_8
    if-eqz v1, :cond_7

    .line 297
    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object p0

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_2

    :pswitch_9
    if-eqz v1, :cond_8

    .line 294
    invoke-virtual {p0}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p0

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_2

    :pswitch_a
    if-eqz v1, :cond_9

    .line 291
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p0

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_2

    :pswitch_b
    if-eqz v1, :cond_a

    .line 288
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p0

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :pswitch_c
    if-eqz v1, :cond_b

    .line 285
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_2

    :pswitch_d
    if-eqz v1, :cond_c

    .line 282
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p0

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_3

    :cond_d
    move v3, v4

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :cond_e
    :goto_4
    :pswitch_e
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static readParcels(Landroid/os/Parcel;)[Ljava/lang/Object;
    .locals 4

    .line 255
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 258
    new-array p0, v1, [Ljava/lang/Object;

    return-object p0

    .line 261
    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    :goto_0
    if-ge v1, v0, :cond_1

    .line 263
    invoke-static {p0}, Lcom/oplus/tblplayer/utils/ParcelUtils;->readParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static writeException(Landroid/os/Parcel;Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 224
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    invoke-virtual {p0}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 227
    :cond_0
    instance-of v1, p1, Lcom/oplus/tblplayer/exception/IPCException;

    if-eqz v1, :cond_1

    const v1, -0x1450e

    .line 229
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    check-cast p1, Lcom/oplus/tblplayer/exception/IPCException;

    invoke-virtual {p1, p0, v0}, Lcom/oplus/tblplayer/exception/IPCException;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static varargs writeInParcel(Landroid/os/Parcel;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 111
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    array-length v1, p1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 117
    invoke-static {p0, v2}, Lcom/oplus/tblplayer/utils/ParcelUtils;->writeObject(Landroid/os/Parcel;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 112
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static writeNoException(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-static {p0, v0}, Lcom/oplus/tblplayer/utils/ParcelUtils;->writeException(Landroid/os/Parcel;Ljava/lang/Exception;)V

    return-void
.end method

.method public static writeObject(Landroid/os/Parcel;Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 126
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 127
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 128
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 130
    :cond_1
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 131
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_2

    .line 133
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 134
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 136
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 137
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_2

    .line 139
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 140
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_2

    .line 142
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 143
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_2

    .line 145
    :cond_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 146
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 148
    :cond_7
    instance-of v0, p1, Landroid/os/IBinder;

    const/16 v1, 0x9

    if-eqz v0, :cond_8

    .line 149
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_2

    .line 151
    :cond_8
    instance-of v0, p1, Landroid/os/IInterface;

    if-eqz v0, :cond_9

    .line 152
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    check-cast p1, Landroid/os/IInterface;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_2

    .line 154
    :cond_9
    instance-of v0, p1, Landroid/os/Parcelable;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/16 v0, 0xa

    .line 155
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/16 :goto_2

    .line 160
    :cond_a
    instance-of v0, p1, [Z

    if-eqz v0, :cond_b

    const v0, 0x40000002    # 2.0000005f

    .line 161
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    check-cast p1, [Z

    check-cast p1, [Z

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_2

    .line 163
    :cond_b
    instance-of v0, p1, [B

    if-eqz v0, :cond_c

    const v0, 0x40000003    # 2.0000007f

    .line 164
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_2

    .line 166
    :cond_c
    instance-of v0, p1, [I

    if-eqz v0, :cond_d

    const v0, 0x40000004    # 2.000001f

    .line 167
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    check-cast p1, [I

    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_2

    .line 169
    :cond_d
    instance-of v0, p1, [J

    if-eqz v0, :cond_e

    const v0, 0x40000005    # 2.0000012f

    .line 170
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    check-cast p1, [J

    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_2

    .line 172
    :cond_e
    instance-of v0, p1, [F

    if-eqz v0, :cond_f

    const v0, 0x40000006    # 2.0000014f

    .line 173
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    check-cast p1, [F

    check-cast p1, [F

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_2

    .line 175
    :cond_f
    instance-of v0, p1, [D

    if-eqz v0, :cond_10

    const v0, 0x40000007    # 2.0000017f

    .line 176
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    check-cast p1, [D

    check-cast p1, [D

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto/16 :goto_2

    .line 178
    :cond_10
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_11

    const v0, 0x40000008    # 2.000002f

    .line 179
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 181
    :cond_11
    instance-of v0, p1, [Landroid/os/IBinder;

    if-eqz v0, :cond_12

    const v0, 0x40000009    # 2.0000021f

    .line 182
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    check-cast p1, [Landroid/os/IBinder;

    check-cast p1, [Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBinderArray([Landroid/os/IBinder;)V

    goto/16 :goto_2

    .line 184
    :cond_12
    instance-of v0, p1, [Landroid/os/Parcelable;

    const v2, 0x4000000a    # 2.0000024f

    if-eqz v0, :cond_13

    .line 185
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    check-cast p1, [Landroid/os/Parcelable;

    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_2

    .line 188
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_14

    const-class v0, Landroid/os/Parcelable;

    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 190
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    check-cast p1, [Landroid/os/Parcelable;

    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto :goto_2

    .line 193
    :cond_14
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_15

    const/16 v0, 0xe

    .line 194
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 196
    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_18

    aget-object v2, p1, v1

    .line 198
    invoke-static {p0, v2}, Lcom/oplus/tblplayer/utils/ParcelUtils;->writeObject(Landroid/os/Parcel;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_15
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_16

    const/16 v0, 0x10

    .line 201
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    check-cast p1, Ljava/util/List;

    .line 203
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 205
    invoke-static {p0, v0}, Lcom/oplus/tblplayer/utils/ParcelUtils;->writeObject(Landroid/os/Parcel;Ljava/lang/Object;)V

    goto :goto_1

    .line 207
    :cond_16
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_17

    const/16 v0, 0xf

    .line 208
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    check-cast p1, Ljava/io/IOException;

    invoke-static {p1}, Lcom/oplus/tblplayer/exception/IPCException;->toIPCException(Ljava/lang/Throwable;)Lcom/oplus/tblplayer/exception/IPCException;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/oplus/tblplayer/exception/IPCException;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 210
    :cond_17
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_19

    const/16 v0, 0xd

    .line 211
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    :cond_18
    :goto_2
    return-void

    .line 214
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong arg."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeToReply(Landroid/os/Parcel;Ljava/lang/Object;)V
    .locals 0

    .line 247
    invoke-virtual {p0}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-static {p0, p1}, Lcom/oplus/tblplayer/utils/ParcelUtils;->writeObject(Landroid/os/Parcel;Ljava/lang/Object;)V

    return-void
.end method
