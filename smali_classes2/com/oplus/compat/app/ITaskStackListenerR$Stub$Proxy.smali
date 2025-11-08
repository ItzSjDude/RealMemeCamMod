.class Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITaskStackListenerR.java"

# interfaces
.implements Lcom/oplus/compat/app/ITaskStackListenerR;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/ITaskStackListenerR$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static a:Lcom/oplus/compat/app/ITaskStackListenerR;


# instance fields
.field private b:Landroid/os/IBinder;


# virtual methods
.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 724
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 725
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 726
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 727
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerR;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 732
    throw p0
.end method

.method public a(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 908
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 911
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 912
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 917
    throw p0
.end method

.method public a(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 984
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 985
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 986
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 987
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 988
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 989
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 994
    throw p0
.end method

.method public a(ILandroid/content/ComponentName;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 881
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 882
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 884
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    invoke-virtual {p2, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 887
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    :goto_0
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 890
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 891
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->a(ILandroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 896
    throw p0
.end method

.method public a(ILandroid/os/IBinder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 1086
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1089
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1090
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1091
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->a(ILandroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1096
    throw p0
.end method

.method public a(ILcom/oplus/compat/app/TaskSnapshotNative;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 1054
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1057
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1058
    invoke-virtual {p2, v0, v2}, Lcom/oplus/compat/app/TaskSnapshotNative;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1060
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    :goto_0
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1063
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1064
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->a(ILcom/oplus/compat/app/TaskSnapshotNative;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1069
    throw p0
.end method

.method public a(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 1241
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1243
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1245
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1246
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->a(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1251
    throw p0
.end method

.method public a(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 929
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 931
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 934
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    :goto_0
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 937
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 938
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->a(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 943
    throw p0
.end method

.method public a(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 824
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 826
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 829
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 833
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 834
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->a(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 839
    throw p0
.end method

.method public a(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 747
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 749
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 751
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 754
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 756
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    .line 757
    :goto_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p4, :cond_3

    move v2, v1

    .line 758
    :cond_3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_4

    .line 760
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 761
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/oplus/compat/app/ITaskStackListenerR;->a(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 766
    throw p0
.end method

.method public a(Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 781
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 786
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 787
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/compat/app/ITaskStackListenerR;->a(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 792
    throw p0
.end method

.method public a(Ljava/lang/String;III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 702
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 708
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 709
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/oplus/compat/app/ITaskStackListenerR;->a(Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 714
    throw p0
.end method

.method public a(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 1219
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1220
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1222
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1223
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1228
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 670
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    return-object p0
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 684
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 685
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 686
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 687
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerR;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 692
    throw p0
.end method

.method public b(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 1136
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1139
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1140
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1145
    throw p0
.end method

.method public b(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 1034
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1038
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1039
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->b(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1044
    throw p0
.end method

.method public b(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 956
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 958
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 961
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    :goto_0
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 964
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 965
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->b(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 970
    throw p0
.end method

.method public b(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 853
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 855
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 858
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 862
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 863
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->b(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 868
    throw p0
.end method

.method public c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 802
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 803
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 804
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 805
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerR;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 810
    throw p0
.end method

.method public c(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 1157
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1160
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1161
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1166
    throw p0
.end method

.method public c(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 1179
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1183
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1184
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->c(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1189
    throw p0
.end method

.method public c(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 1008
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1010
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1011
    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1013
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1015
    :goto_0
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1016
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1017
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->c(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1022
    throw p0
.end method

.method public d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 1199
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1200
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v1, 0x16

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1201
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1202
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerR;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1207
    throw p0
.end method

.method public d(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 1294
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1296
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1297
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1298
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1303
    throw p0
.end method

.method public d(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 1267
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1269
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1270
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1271
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1272
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->d(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1277
    throw p0
.end method

.method public d(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.app.ITaskStackListener"

    .line 1109
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1111
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1114
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1116
    :goto_0
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->b:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1117
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1118
    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->d(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1123
    throw p0
.end method
