.class public abstract Lcom/oplus/compat/app/ITaskStackListenerR$Stub;
.super Landroid/os/Binder;
.source "ITaskStackListenerR.java"

# interfaces
.implements Lcom/oplus/compat/app/ITaskStackListenerR;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/ITaskStackListenerR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 281
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.ITaskStackListener"

    .line 282
    invoke-virtual {p0, p0, v0}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static e()Lcom/oplus/compat/app/ITaskStackListenerR;
    .locals 1

    .line 1351
    sget-object v0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->a:Lcom/oplus/compat/app/ITaskStackListenerR;

    return-object v0
.end method

.method public static e(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "onActivityRotation"

    return-object p0

    :pswitch_1
    const-string p0, "onTaskRequestedOrientationChanged"

    return-object p0

    :pswitch_2
    const-string p0, "onTaskFocusChanged"

    return-object p0

    :pswitch_3
    const-string p0, "onRecentTaskListFrozenChanged"

    return-object p0

    :pswitch_4
    const-string p0, "onRecentTaskListUpdated"

    return-object p0

    :pswitch_5
    const-string p0, "onTaskDisplayChanged"

    return-object p0

    :pswitch_6
    const-string p0, "onSingleTaskDisplayEmpty"

    return-object p0

    :pswitch_7
    const-string p0, "onSingleTaskDisplayDrawn"

    return-object p0

    :pswitch_8
    const-string p0, "onBackPressedOnTaskRoot"

    return-object p0

    :pswitch_9
    const-string p0, "onSizeCompatModeActivityChanged"

    return-object p0

    :pswitch_a
    const-string p0, "onTaskSnapshotChanged"

    return-object p0

    :pswitch_b
    const-string p0, "onTaskProfileLocked"

    return-object p0

    :pswitch_c
    const-string p0, "onTaskRemovalStarted"

    return-object p0

    :pswitch_d
    const-string p0, "onActivityRequestedOrientationChanged"

    return-object p0

    :pswitch_e
    const-string p0, "onTaskDescriptionChanged"

    return-object p0

    :pswitch_f
    const-string p0, "onTaskMovedToFront"

    return-object p0

    :pswitch_10
    const-string p0, "onTaskRemoved"

    return-object p0

    :pswitch_11
    const-string p0, "onTaskCreated"

    return-object p0

    :pswitch_12
    const-string p0, "onActivityLaunchOnSecondaryDisplayRerouted"

    return-object p0

    :pswitch_13
    const-string p0, "onActivityLaunchOnSecondaryDisplayFailed"

    return-object p0

    :pswitch_14
    const-string p0, "onActivityDismissingDockedStack"

    return-object p0

    :pswitch_15
    const-string p0, "onActivityForcedResizable"

    return-object p0

    :pswitch_16
    const-string p0, "onActivityRestartAttempt"

    return-object p0

    :pswitch_17
    const-string p0, "onActivityUnpinned"

    return-object p0

    :pswitch_18
    const-string p0, "onActivityPinned"

    return-object p0

    :pswitch_19
    const-string p0, "onTaskStackChanged"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 398
    invoke-static {p1}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->e(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.app.ITaskStackListener"

    if-eq p1, v0, :cond_e

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 656
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 649
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 652
    invoke-virtual {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->d(I)V

    return v1

    .line 640
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 645
    invoke-virtual {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->d(II)V

    return v1

    .line 631
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v0, v1

    .line 636
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->a(IZ)V

    return v1

    .line 624
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 627
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->a(Z)V

    return v1

    .line 619
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->d()V

    return v1

    .line 610
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 615
    invoke-virtual {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->c(II)V

    return v1

    .line 603
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 606
    invoke-virtual {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->c(I)V

    return v1

    .line 596
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 599
    invoke-virtual {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->b(I)V

    return v1

    .line 585
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 588
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 592
    :cond_2
    invoke-virtual {p0, v3}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->d(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v1

    .line 576
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 581
    invoke-virtual {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->a(ILandroid/os/IBinder;)V

    return v1

    .line 563
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_3

    .line 568
    sget-object p3, Lcom/oplus/compat/app/TaskSnapshotNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/oplus/compat/app/TaskSnapshotNative;

    .line 572
    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->a(ILcom/oplus/compat/app/TaskSnapshotNative;)V

    return v1

    .line 554
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 559
    invoke-virtual {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->b(II)V

    return v1

    .line 543
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 546
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 550
    :cond_4
    invoke-virtual {p0, v3}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->c(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v1

    .line 534
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 539
    invoke-virtual {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->a(II)V

    return v1

    .line 523
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 526
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 530
    :cond_5
    invoke-virtual {p0, v3}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->b(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v1

    .line 512
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 515
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 519
    :cond_6
    invoke-virtual {p0, v3}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->a(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v1

    .line 505
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 508
    invoke-virtual {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->a(I)V

    return v1

    .line 492
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_7

    .line 497
    sget-object p3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/content/ComponentName;

    .line 501
    :cond_7
    invoke-virtual {p0, p1, v3}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->a(ILandroid/content/ComponentName;)V

    return v1

    .line 479
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 482
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 487
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 488
    invoke-virtual {p0, v3, p1}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->b(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return v1

    .line 466
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 469
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 474
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 475
    invoke-virtual {p0, v3, p1}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->a(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return v1

    .line 461
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->c()V

    return v1

    .line 450
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 457
    invoke-virtual {p0, p1, p3, p2}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->a(Ljava/lang/String;II)V

    return v1

    .line 433
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 436
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 441
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    move p1, v1

    goto :goto_0

    :cond_b
    move p1, v0

    .line 443
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_c

    move p3, v1

    goto :goto_1

    :cond_c
    move p3, v0

    .line 445
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_d

    move v0, v1

    .line 446
    :cond_d
    invoke-virtual {p0, v3, p1, p3, v0}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->a(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    return v1

    .line 428
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->a()V

    return v1

    .line 415
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 424
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->a(Ljava/lang/String;III)V

    return v1

    .line 410
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->b()V

    return v1

    .line 406
    :cond_e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
