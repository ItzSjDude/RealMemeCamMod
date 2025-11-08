.class Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFrameworkManager.java"

# interfaces
.implements Lcom/heytap/accessory/api/IFrameworkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/IFrameworkManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static a:Lcom/heytap/accessory/api/IFrameworkManager;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-object p1, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 1166
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1167
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1169
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1170
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/heytap/accessory/api/IFrameworkManager;->a()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1173
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1174
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 1177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1179
    throw p0
.end method

.method public a(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 1188
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1190
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1192
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1193
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/accessory/api/IFrameworkManager;->a(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1196
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1197
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 1200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1202
    throw p0
.end method

.method public a(J)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 915
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 916
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 917
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 919
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 920
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/api/IFrameworkManager;->a(J)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 923
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 924
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 929
    throw p0
.end method

.method public a(JJLjava/lang/String;Lcom/heytap/accessory/api/IPeerAgentCallback;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 699
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 701
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 702
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p6, :cond_0

    .line 703
    invoke-interface {p6}, Lcom/heytap/accessory/api/IPeerAgentCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 704
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 706
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 707
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v2

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JJLjava/lang/String;Lcom/heytap/accessory/api/IPeerAgentCallback;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 710
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 711
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 716
    throw p0
.end method

.method public a(JLjava/lang/String;JLjava/lang/String;J[BZIIIZ)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.heytap.accessory.api.IFrameworkManager"

    .line 1235
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-wide/from16 v4, p1

    .line 1236
    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    .line 1237
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v7, p4

    .line 1238
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v9, p6

    .line 1239
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v10, p7

    .line 1240
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v12, p9

    .line 1241
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz p10, :cond_0

    move v13, v3

    goto :goto_0

    :cond_0
    move v13, v6

    .line 1242
    :goto_0
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v14, p11

    .line 1243
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v15, p12

    .line 1244
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v13, p13

    .line 1245
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p14, :cond_1

    goto :goto_1

    :cond_1
    move v3, v6

    .line 1246
    :goto_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v3, p0

    .line 1247
    iget-object v3, v3, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v0, 0x18

    invoke-interface {v3, v0, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1249
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1250
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v3

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-interface/range {v3 .. v17}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;JLjava/lang/String;J[BZIIIZ)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1257
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 1253
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1254
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1257
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 1257
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1259
    throw v0
.end method

.method public a(JLjava/lang/String;J[BZIII)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.heytap.accessory.api.IFrameworkManager"

    .line 1136
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-wide v4, p1

    .line 1137
    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    .line 1138
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v7, p4

    .line 1139
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v9, p6

    .line 1140
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v3, 0x0

    if-eqz p7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v3

    .line 1141
    :goto_0
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v11, p8

    .line 1142
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v12, p9

    .line 1143
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v13, p10

    .line 1144
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    move-object v6, p0

    .line 1145
    iget-object v6, v6, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v10, 0x14

    invoke-interface {v6, v10, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1147
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1148
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v3

    move-wide v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-interface/range {v3 .. v13}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;J[BZIII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1155
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 1151
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1152
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1155
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 1155
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1157
    throw v0
.end method

.method public a(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;J)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 830
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 832
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    .line 834
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    invoke-virtual {p4, v0, v2}, Lcom/heytap/accessory/bean/PeerAgent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 838
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    :goto_0
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 841
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v3, 0x8

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 843
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 844
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v2

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;J)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 847
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 848
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 853
    throw p0
.end method

.method public a(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/api/IPeerAgentAuthCallback;J)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p4

    .line 721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    :try_start_0
    const-string v1, "com.heytap.accessory.api.IFrameworkManager"

    .line 725
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-wide v2, p1

    .line 726
    invoke-virtual {v9, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    move-object v4, p3

    .line 727
    invoke-virtual {v9, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    .line 729
    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    invoke-virtual {p4, v9, v1}, Lcom/heytap/accessory/bean/PeerAgent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 733
    :cond_0
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p5, :cond_1

    .line 735
    invoke-interface/range {p5 .. p5}, Lcom/heytap/accessory/api/IPeerAgentAuthCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-wide/from16 v7, p6

    .line 736
    invoke-virtual {v9, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move-object v5, p0

    .line 737
    iget-object v5, v5, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v6, 0x5

    invoke-interface {v5, v6, v9, v10, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 739
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 740
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-interface/range {v1 .. v8}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/api/IPeerAgentAuthCallback;J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 748
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 743
    :cond_2
    :try_start_1
    invoke-virtual {v10}, Landroid/os/Parcel;->readException()V

    .line 744
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 748
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 747
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 748
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 749
    throw v0
.end method

.method public a(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/api/IServiceConnectionCallback;Lcom/heytap/accessory/api/IServiceChannelCallback;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 758
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 760
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    .line 762
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    invoke-virtual {p4, v0, v2}, Lcom/heytap/accessory/bean/PeerAgent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 766
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v3, 0x0

    if-eqz p5, :cond_1

    .line 768
    invoke-interface {p5}, Lcom/heytap/accessory/api/IServiceConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-eqz p6, :cond_2

    .line 769
    invoke-interface {p6}, Lcom/heytap/accessory/api/IServiceChannelCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 770
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v3, 0x6

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 772
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 773
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v2

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/api/IServiceConnectionCallback;Lcom/heytap/accessory/api/IServiceChannelCallback;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 776
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 777
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 782
    throw p0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;J[BZII)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.heytap.accessory.api.IFrameworkManager"

    .line 1035
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-wide v4, p1

    .line 1036
    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    .line 1037
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v7, p4

    .line 1038
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v8, p5

    .line 1039
    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v10, p7

    .line 1040
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v3, 0x0

    if-eqz p8, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v3

    .line 1041
    :goto_0
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v12, p9

    .line 1042
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v13, p10

    .line 1043
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    move-object v6, p0

    .line 1044
    iget-object v6, v6, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v11, 0x10

    invoke-interface {v6, v11, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1046
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1047
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v3

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-interface/range {v3 .. v13}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;Ljava/lang/String;J[BZII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 1050
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1051
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 1054
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1056
    throw v0
.end method

.method public a(ILjava/lang/String;Lcom/heytap/accessory/api/IDeathCallback;ILcom/heytap/accessory/api/IServiceConnectionIndicationCallback;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 616
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 619
    invoke-interface {p3}, Lcom/heytap/accessory/api/IDeathCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 620
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p5, :cond_1

    .line 621
    invoke-interface {p5}, Lcom/heytap/accessory/api/IServiceConnectionIndicationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 622
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {p0, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 624
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 625
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/heytap/accessory/api/IFrameworkManager;->a(ILjava/lang/String;Lcom/heytap/accessory/api/IDeathCallback;ILcom/heytap/accessory/api/IServiceConnectionIndicationCallback;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 628
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 629
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_3

    .line 630
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception p0

    .line 637
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 639
    throw p0
.end method

.method public a(JLjava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 670
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 672
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 673
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 675
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 676
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 679
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 680
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    .line 681
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 688
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 688
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 690
    throw p0
.end method

.method public a(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;JLcom/heytap/accessory/api/IServiceConnectionCallback;Lcom/heytap/accessory/api/IServiceChannelCallback;)Landroid/os/Bundle;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p4

    .line 787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_0
    const-string v1, "com.heytap.accessory.api.IFrameworkManager"

    .line 791
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-wide v2, p1

    .line 792
    invoke-virtual {v10, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    move-object v4, p3

    .line 793
    invoke-virtual {v10, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    .line 795
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    invoke-virtual {v0, v10, v1}, Lcom/heytap/accessory/bean/PeerAgent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 799
    :cond_0
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    move-wide/from16 v6, p5

    .line 801
    invoke-virtual {v10, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v5, 0x0

    if-eqz p7, :cond_1

    .line 802
    invoke-interface/range {p7 .. p7}, Lcom/heytap/accessory/api/IServiceConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v5

    :goto_1
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-eqz p8, :cond_2

    .line 803
    invoke-interface/range {p8 .. p8}, Lcom/heytap/accessory/api/IServiceChannelCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    goto :goto_2

    :cond_2
    move-object v8, v5

    :goto_2
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object v8, p0

    .line 804
    iget-object v8, v8, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v9, 0x7

    invoke-interface {v8, v9, v10, v11, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 806
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 807
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;JLcom/heytap/accessory/api/IServiceConnectionCallback;Lcom/heytap/accessory/api/IServiceChannelCallback;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 820
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 810
    :cond_3
    :try_start_1
    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V

    .line 811
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 812
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 819
    :cond_4
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 820
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return-object v5

    :catchall_0
    move-exception v0

    .line 819
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 820
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 821
    throw v0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 1111
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1113
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1115
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1117
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1118
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1121
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1122
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 1125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1127
    throw p0
.end method

.method public a(JJII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 1064
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1066
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1067
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1068
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1071
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1072
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v2

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1076
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1079
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1081
    throw p0
.end method

.method public a(JJLjava/lang/String;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.heytap.accessory.api.IFrameworkManager"

    .line 1267
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-wide v4, p1

    .line 1268
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    move-wide v6, p3

    .line 1269
    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p5

    .line 1270
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v9, p6

    .line 1271
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v10, p7

    .line 1272
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    move-object v3, p0

    .line 1273
    iget-object v3, v3, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v8, 0x19

    const/4 v11, 0x0

    invoke-interface {v3, v8, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1275
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1276
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v3

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JJLjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1283
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1280
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1283
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1285
    throw v0
.end method

.method public a(JLjava/lang/String;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 1292
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1294
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1296
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1298
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1299
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object v2

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1306
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1303
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1308
    throw p0
.end method

.method public a(JLjava/lang/String;Lcom/heytap/accessory/api/IMsgExpCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 986
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 989
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 991
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 992
    invoke-interface {p4}, Lcom/heytap/accessory/api/IMsgExpCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 993
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 995
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 996
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/heytap/accessory/api/IFrameworkManager;->a(JLjava/lang/String;Lcom/heytap/accessory/api/IMsgExpCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1000
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1005
    throw p0
.end method

.method public a(J[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 647
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 649
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 650
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 652
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 653
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/heytap/accessory/api/IFrameworkManager;->a(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 657
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 662
    throw p0
.end method

.method public a(ILjava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 1211
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1214
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1216
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1217
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/api/IFrameworkManager;->a(ILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1220
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1221
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 1224
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 1224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1226
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 604
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    return-object p0
.end method

.method public b(JLjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 862
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 864
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 865
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 867
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 868
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/heytap/accessory/api/IFrameworkManager;->b(JLjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 871
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 872
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 877
    throw p0
.end method

.method public b(J)Landroid/os/ResultReceiver;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 962
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 963
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 964
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 966
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 967
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/accessory/api/IFrameworkManager;->b(J)Landroid/os/ResultReceiver;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 970
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 971
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    .line 972
    sget-object p0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ResultReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 979
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 979
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 981
    throw p0
.end method

.method public c(JLjava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 886
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 888
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 889
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 891
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 892
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/heytap/accessory/api/IFrameworkManager;->c(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 895
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 896
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    .line 897
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 904
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 906
    throw p0
.end method

.method public d(JLjava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 938
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 940
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 941
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 943
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 944
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/heytap/accessory/api/IFrameworkManager;->d(JLjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 947
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 948
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 951
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 953
    throw p0
.end method

.method public e(JLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1009
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 1012
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1014
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1015
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1017
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1018
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/heytap/accessory/api/IFrameworkManager;->e(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1022
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1027
    throw p0
.end method

.method public f(JLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.heytap.accessory.api.IFrameworkManager"

    .line 1088
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1090
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1091
    iget-object p0, p0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1093
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1094
    invoke-static {}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b()Lcom/heytap/accessory/api/IFrameworkManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/heytap/accessory/api/IFrameworkManager;->f(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1098
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1103
    throw p0
.end method
