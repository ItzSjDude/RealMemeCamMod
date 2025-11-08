.class final Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;
.super Lcom/heytap/accessory/api/IServiceConnectionIndicationCallback$Stub;
.source "BaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceConnectionIndicationCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/BaseAdapter;


# direct methods
.method private constructor <init>(Lcom/heytap/accessory/BaseAdapter;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;->a:Lcom/heytap/accessory/BaseAdapter;

    invoke-direct {p0}, Lcom/heytap/accessory/api/IServiceConnectionIndicationCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/accessory/BaseAdapter;B)V
    .locals 0

    .line 651
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;-><init>(Lcom/heytap/accessory/BaseAdapter;)V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 746
    :try_start_0
    invoke-static {p1}, Lcom/heytap/accessory/b/d;->a(Landroid/content/Context;)Lcom/heytap/accessory/b/d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 748
    invoke-virtual {p1, p2}, Lcom/heytap/accessory/b/d;->a(Ljava/lang/String;)Lcom/heytap/accessory/bean/ServiceProfile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 750
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/ServiceProfile;->getServiceImpl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 754
    :cond_0
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fetch service profile description failed !!"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 757
    :cond_1
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "config  util default instance  creation failed !!"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 17
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 658
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onServiceConnectionRequested: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "peerAgent"

    .line 660
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_0

    .line 663
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "marshalled accessory byte[] is null!"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 667
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    if-nez v4, :cond_1

    .line 669
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to obtain parcel"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 673
    :cond_1
    array-length v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 674
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 675
    sget-object v3, Lcom/heytap/accessory/bean/PeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/heytap/accessory/bean/PeerAgent;

    .line 676
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    const-wide/16 v3, 0x0

    const-string v5, "transactionId"

    .line 677
    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v3, "agentId"

    .line 678
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "agentImplclass"

    .line 679
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    .line 681
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Implementation class not available in intent. Ignoring request"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 685
    :cond_2
    :try_start_0
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 686
    iget-object v7, v0, Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;->a:Lcom/heytap/accessory/BaseAdapter;

    invoke-static {v7}, Lcom/heytap/accessory/BaseAdapter;->access$400(Lcom/heytap/accessory/BaseAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v7, v13}, Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    return-void

    .line 691
    :cond_3
    const-class v7, Lcom/heytap/accessory/BaseJobAgent;

    invoke-static {v7, v1}, Lcom/heytap/accessory/b/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v7

    .line 692
    iget-object v13, v0, Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;->a:Lcom/heytap/accessory/BaseAdapter;

    invoke-static {v13}, Lcom/heytap/accessory/BaseAdapter;->access$400(Lcom/heytap/accessory/BaseAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    iget-object v14, v0, Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;->a:Lcom/heytap/accessory/BaseAdapter;

    invoke-static {v14}, Lcom/heytap/accessory/BaseAdapter;->access$400(Lcom/heytap/accessory/BaseAdapter;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 693
    iget-object v13, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 694
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v6, "implClass.getSuperclass() :"

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v1, "null"

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isV2 = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sdkInt:"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetSdk:"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 694
    invoke-static {v14, v1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x1

    const/16 v14, 0x15

    if-lt v1, v14, :cond_5

    if-lt v13, v14, :cond_5

    move v1, v6

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v7, :cond_6

    if-eqz v1, :cond_6

    .line 707
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scheduleSCJob"

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;->a:Lcom/heytap/accessory/BaseAdapter;

    invoke-static {v0}, Lcom/heytap/accessory/BaseAdapter;->access$400(Lcom/heytap/accessory/BaseAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-static/range {v7 .. v12}, Lcom/heytap/accessory/BaseJobService;->scheduleSCJob(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 712
    :cond_6
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v7, " onServiceConnectionRequested: agentImplClass="

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.heytap.accessory.action.SERVICE_CONNECTION_REQUESTED"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v1, v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 715
    invoke-virtual {v1, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    invoke-virtual {v1, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 717
    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    iget-object v2, v0, Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;->a:Lcom/heytap/accessory/BaseAdapter;

    invoke-static {v2}, Lcom/heytap/accessory/BaseAdapter;->access$400(Lcom/heytap/accessory/BaseAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_7

    if-lt v13, v3, :cond_7

    move/from16 v16, v6

    goto :goto_2

    :cond_7
    const/16 v16, 0x0

    :goto_2
    if-eqz v16, :cond_8

    .line 725
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "startForegroundService"

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;->a:Lcom/heytap/accessory/BaseAdapter;

    invoke-static {v0}, Lcom/heytap/accessory/BaseAdapter;->access$400(Lcom/heytap/accessory/BaseAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_3

    .line 728
    :cond_8
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "startService"

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v0, v0, Lcom/heytap/accessory/BaseAdapter$ServiceConnectionIndicationCallback;->a:Lcom/heytap/accessory/BaseAdapter;

    invoke-static {v0}, Lcom/heytap/accessory/BaseAdapter;->access$400(Lcom/heytap/accessory/BaseAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_9

    .line 735
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Agent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found. Check Accessory Service XML for serviceImpl attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    :catch_0
    move-exception v0

    .line 740
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-void

    :catch_1
    move-exception v0

    .line 738
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Agent Impl class not found!"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
