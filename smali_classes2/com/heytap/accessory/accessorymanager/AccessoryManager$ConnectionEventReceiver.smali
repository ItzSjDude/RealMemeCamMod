.class final Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;
.super Landroid/os/ResultReceiver;
.source "AccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/accessorymanager/AccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConnectionEventReceiver"
.end annotation


# instance fields
.field private a:Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;


# direct methods
.method public constructor <init>(Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 101
    iput-object p1, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;->a:Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 7

    if-nez p2, :cond_0

    .line 107
    invoke-static {}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onReceiveResult: resultData is null"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_0
    const-class v0, Lcom/heytap/accessory/bean/PeerAccessory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 111
    invoke-static {}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " onReceiveResult: resultCode= "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    const-string v1, "errorcode"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 113
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 114
    invoke-static {}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error in Account Config: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;->a:Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;

    invoke-interface {p0, v2, p1}, Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;->onError(Lcom/heytap/accessory/bean/PeerAccessory;I)V

    return-void

    :cond_1
    const/16 v0, 0x4e21

    const/4 v3, 0x0

    if-ne p1, v0, :cond_3

    .line 120
    invoke-static {}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Accessory Framework has died / disconnetced"

    invoke-static {p2, v0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->access$100()Lcom/heytap/accessory/accessorymanager/AccessoryManager;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 122
    invoke-static {}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->access$100()Lcom/heytap/accessory/accessorymanager/AccessoryManager;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->access$202(Lcom/heytap/accessory/accessorymanager/AccessoryManager;Z)Z

    .line 123
    invoke-static {v2}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->access$102(Lcom/heytap/accessory/accessorymanager/AccessoryManager;)Lcom/heytap/accessory/accessorymanager/AccessoryManager;

    .line 125
    :cond_2
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;->a:Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;

    invoke-interface {p0, v2, p1}, Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;->onError(Lcom/heytap/accessory/bean/PeerAccessory;I)V

    return-void

    :cond_3
    const-string v0, "accessory"

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 136
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 138
    array-length v2, v0

    invoke-virtual {v4, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 139
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 140
    sget-object v0, Lcom/heytap/accessory/bean/PeerAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/heytap/accessory/bean/PeerAccessory;

    .line 141
    invoke-static {}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onReceiveResult, peerAcc: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAccessory;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v4, :cond_6

    .line 144
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :cond_6
    if-nez v2, :cond_7

    .line 147
    invoke-static {}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onReceiveResult No accessory bundle, return..."

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 150
    :cond_7
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;->a:Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;

    if-nez v0, :cond_8

    .line 151
    invoke-static {}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onReceiveResult callback is null."

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    const/16 v0, 0x6d

    if-eq p1, v0, :cond_b

    const/16 v0, 0x72

    if-eq p1, v0, :cond_a

    const/16 v0, 0x73

    if-eq p1, v0, :cond_9

    .line 173
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 174
    invoke-static {}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, " onReceiveResult: onError and result code:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;->a:Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;

    invoke-interface {p0, v2, p1}, Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;->onError(Lcom/heytap/accessory/bean/PeerAccessory;I)V

    return-void

    .line 166
    :cond_9
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 167
    invoke-static {}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " onReceiveResult: DEVICE_DETACHED and error code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accUunameType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAccessory;->getUUIDType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {p2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;->a:Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;

    invoke-interface {p0, v2, p1}, Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;->onAccessoryDisconnected(Lcom/heytap/accessory/bean/PeerAccessory;I)V

    return-void

    .line 161
    :cond_a
    invoke-static {}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " onReceiveResult: DEVICE_ATTACHED accUunameType:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAccessory;->getUUIDType()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 161
    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;->a:Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;

    invoke-interface {p0, v2}, Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;->onAccessoryConnected(Lcom/heytap/accessory/bean/PeerAccessory;)V

    return-void

    .line 156
    :cond_b
    invoke-static {}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " onReceiveResult: DEVICE_STATE_CHANGED: isDormant:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAccessory;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    move v0, v3

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 156
    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;->a:Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;

    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAccessory;->getStatus()I

    move-result p1

    if-ne p1, v1, :cond_d

    goto :goto_1

    :cond_d
    move v1, v3

    :goto_1
    invoke-interface {p0, v2, v1}, Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;->onAccessoryDormant(Lcom/heytap/accessory/bean/PeerAccessory;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 181
    invoke-static {}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "unmarshalling peerAccessory failed"

    invoke-static {p1, p2, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
