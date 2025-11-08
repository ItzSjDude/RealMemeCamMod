.class public abstract Lcom/heytap/accessory/api/IFrameworkManager$Stub;
.super Landroid/os/Binder;
.source "IFrameworkManager.java"

# interfaces
.implements Lcom/heytap/accessory/api/IFrameworkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/IFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.accessory.api.IFrameworkManager"

    .line 118
    invoke-virtual {p0, p0, v0}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IFrameworkManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.heytap.accessory.api.IFrameworkManager"

    .line 129
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    instance-of v1, v0, Lcom/heytap/accessory/api/IFrameworkManager;

    if-eqz v1, :cond_1

    .line 131
    check-cast v0, Lcom/heytap/accessory/api/IFrameworkManager;

    return-object v0

    .line 133
    :cond_1
    new-instance v0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static b()Lcom/heytap/accessory/api/IFrameworkManager;
    .locals 1

    .line 1352
    sget-object v0, Lcom/heytap/accessory/api/IFrameworkManager$Stub$Proxy;->a:Lcom/heytap/accessory/api/IFrameworkManager;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    const/4 v14, 0x1

    const-string v3, "com.heytap.accessory.api.IFrameworkManager"

    const v4, 0x5f4e5446

    if-eq v1, v4, :cond_d

    const/4 v4, 0x0

    const/4 v9, 0x0

    packed-switch v1, :pswitch_data_0

    .line 591
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 578
    :pswitch_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide v1, v3

    move-object v3, v5

    move-wide v4, v6

    .line 585
    invoke-virtual/range {v0 .. v5}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(JLjava/lang/String;J)V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    .line 561
    :pswitch_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-object v5, v7

    move v6, v8

    move v7, v9

    .line 572
    invoke-virtual/range {v0 .. v7}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(JJLjava/lang/String;II)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    .line 531
    :pswitch_2
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v13, v14

    goto :goto_0

    :cond_0
    move v13, v9

    .line 547
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move/from16 v19, v14

    goto :goto_1

    :cond_1
    move/from16 v19, v9

    :goto_1
    move-object/from16 v0, p0

    move-wide v1, v3

    move-object v3, v5

    move-wide v4, v6

    move-object v6, v8

    move-wide v7, v10

    move-object v9, v12

    move v10, v13

    move/from16 v11, v16

    move/from16 v12, v17

    move/from16 v13, v18

    move/from16 v14, v19

    .line 554
    invoke-virtual/range {v0 .. v14}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(JLjava/lang/String;JLjava/lang/String;J[BZIIIZ)I

    move-result v0

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :pswitch_3
    move v11, v14

    .line 519
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-virtual {v0, v1, v2}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(ILjava/lang/String;)Z

    move-result v0

    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_4
    move v11, v14

    .line 509
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 512
    invoke-virtual {v0, v1}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(I)I

    move-result v0

    .line 513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_5
    move v11, v14

    .line 501
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a()I

    move-result v0

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_6
    move v11, v14

    .line 477
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v9, v11

    .line 489
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    move-wide v1, v3

    move-object v3, v5

    move-wide v4, v6

    move-object v6, v8

    move v7, v9

    move v8, v10

    move v9, v12

    move v10, v13

    .line 494
    invoke-virtual/range {v0 .. v10}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(JLjava/lang/String;J[BZIII)I

    move-result v0

    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_7
    move v11, v14

    .line 463
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 470
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_8
    move v11, v14

    .line 452
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-virtual {v0, v3, v4, v1}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->f(JLjava/lang/String;)V

    .line 458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_9
    move v11, v14

    .line 437
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move v5, v7

    move v6, v8

    .line 446
    invoke-virtual/range {v0 .. v6}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(JJII)V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_a
    move v11, v14

    .line 413
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v9, v11

    .line 427
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    move-wide v1, v3

    move-object v3, v5

    move-object v4, v6

    move-wide v5, v7

    move-object v7, v10

    move v8, v9

    move v9, v12

    move v10, v13

    .line 430
    invoke-virtual/range {v0 .. v10}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(JLjava/lang/String;Ljava/lang/String;J[BZII)I

    move-result v0

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_b
    move v11, v14

    .line 402
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-virtual {v0, v3, v4, v1}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->e(JLjava/lang/String;)V

    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_c
    move v11, v14

    .line 389
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/heytap/accessory/api/IMsgExpCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IMsgExpCallback;

    move-result-object v2

    .line 396
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(JLjava/lang/String;Lcom/heytap/accessory/api/IMsgExpCallback;)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_d
    move v11, v14

    .line 373
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 376
    invoke-virtual {v0, v1, v2}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b(J)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4

    .line 379
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    invoke-virtual {v0, v15, v11}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 383
    :cond_4
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v11

    :pswitch_e
    move v11, v14

    .line 361
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-virtual {v0, v3, v4, v1}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->d(JLjava/lang/String;)Z

    move-result v0

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_f
    move v11, v14

    .line 351
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 354
    invoke-virtual {v0, v1, v2}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(J)I

    move-result v0

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_10
    move v11, v14

    .line 333
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-virtual {v0, v3, v4, v1}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->c(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5

    .line 341
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    invoke-virtual {v0, v15, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 345
    :cond_5
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v11

    :pswitch_11
    move v11, v14

    .line 321
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-virtual {v0, v3, v4, v1}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->b(JLjava/lang/String;)I

    move-result v0

    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_12
    move v11, v14

    .line 300
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 307
    sget-object v1, Lcom/heytap/accessory/bean/PeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/accessory/bean/PeerAgent;

    move-object v4, v1

    .line 313
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-wide v1, v5

    move-wide v5, v7

    .line 314
    invoke-virtual/range {v0 .. v6}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;J)I

    move-result v0

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_13
    move v11, v14

    .line 269
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 276
    sget-object v1, Lcom/heytap/accessory/bean/PeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/accessory/bean/PeerAgent;

    move-object v4, v1

    .line 282
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/accessory/api/IServiceConnectionCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IServiceConnectionCallback;

    move-result-object v10

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/accessory/api/IServiceChannelCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IServiceChannelCallback;

    move-result-object v12

    move-object/from16 v0, p0

    move-wide v1, v5

    move-wide v5, v7

    move-object v7, v10

    move-object v8, v12

    .line 287
    invoke-virtual/range {v0 .. v8}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;JLcom/heytap/accessory/api/IServiceConnectionCallback;Lcom/heytap/accessory/api/IServiceChannelCallback;)Landroid/os/Bundle;

    move-result-object v0

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_8

    .line 290
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    invoke-virtual {v0, v15, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 294
    :cond_8
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v11

    :pswitch_14
    move v11, v14

    .line 246
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 253
    sget-object v1, Lcom/heytap/accessory/bean/PeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/accessory/bean/PeerAgent;

    move-object v4, v1

    .line 259
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/accessory/api/IServiceConnectionCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IServiceConnectionCallback;

    move-result-object v7

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/accessory/api/IServiceChannelCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IServiceChannelCallback;

    move-result-object v8

    move-object/from16 v0, p0

    move-wide v1, v5

    move-object v5, v7

    move-object v6, v8

    .line 262
    invoke-virtual/range {v0 .. v6}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/api/IServiceConnectionCallback;Lcom/heytap/accessory/api/IServiceChannelCallback;)I

    move-result v0

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_15
    move v11, v14

    .line 223
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 230
    sget-object v1, Lcom/heytap/accessory/bean/PeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/accessory/bean/PeerAgent;

    move-object v4, v1

    .line 236
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/accessory/api/IPeerAgentAuthCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IPeerAgentAuthCallback;

    move-result-object v7

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object/from16 v0, p0

    move-wide v1, v5

    move-object v5, v7

    move-wide v6, v8

    .line 239
    invoke-virtual/range {v0 .. v7}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(JLjava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/api/IPeerAgentAuthCallback;J)I

    move-result v0

    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_16
    move v11, v14

    .line 207
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/accessory/api/IPeerAgentCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IPeerAgentCallback;

    move-result-object v8

    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-object v5, v7

    move-object v6, v8

    .line 216
    invoke-virtual/range {v0 .. v6}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(JJLjava/lang/String;Lcom/heytap/accessory/api/IPeerAgentCallback;)I

    move-result v0

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_17
    move v11, v14

    .line 189
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v3, v4, v1}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_b

    .line 197
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {v0, v15, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 201
    :cond_b
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v11

    :pswitch_18
    move v11, v14

    .line 178
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 183
    invoke-virtual {v0, v3, v4, v1}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(J[B)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_19
    move v11, v14

    .line 154
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/heytap/accessory/api/IDeathCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IDeathCallback;

    move-result-object v4

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/heytap/accessory/api/IServiceConnectionIndicationCallback$Stub;->a(Landroid/os/IBinder;)Lcom/heytap/accessory/api/IServiceConnectionIndicationCallback;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    .line 165
    invoke-virtual/range {v0 .. v5}, Lcom/heytap/accessory/api/IFrameworkManager$Stub;->a(ILjava/lang/String;Lcom/heytap/accessory/api/IDeathCallback;ILcom/heytap/accessory/api/IServiceConnectionIndicationCallback;)Landroid/os/Bundle;

    move-result-object v0

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_c

    .line 168
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    invoke-virtual {v0, v15, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 172
    :cond_c
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v11

    :cond_d
    move v11, v14

    .line 146
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

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
