.class public abstract Lcom/oplusos/sau/aidl/d$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/oplusos/sau/aidl/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplusos/sau/aidl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplusos/sau/aidl/d$a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/String;

    const-string v1, "Y29tLmNvbG9yb3Muc2F1LmFpZGwuSVVwZGF0ZUFwcE9ic2VydmVy"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/oplusos/sau/aidl/d$a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    sget-object v0, Lcom/oplusos/sau/aidl/d$a;->a:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/oplusos/sau/aidl/d$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/oplusos/sau/aidl/d;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/oplusos/sau/aidl/d$a;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplusos/sau/aidl/d;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/oplusos/sau/aidl/d;

    return-object v0

    :cond_1
    new-instance v0, Lcom/oplusos/sau/aidl/d$a$a;

    invoke-direct {v0, p0}, Lcom/oplusos/sau/aidl/d$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplusos/sau/aidl/d$a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v3, Lcom/oplusos/sau/aidl/d$a;->a:Ljava/lang/String;

    const v4, 0x5f4e5446

    const/4 v9, 0x1

    if-eq p1, v4, :cond_2

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/oplusos/sau/aidl/d$a;->d(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object v0, p0

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/oplusos/sau/aidl/d$a;->b(Ljava/lang/String;JJJI)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/oplusos/sau/aidl/DataresUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/oplusos/sau/aidl/DataresUpdateInfo;

    :cond_0
    invoke-virtual {p0, v1, v4}, Lcom/oplusos/sau/aidl/d$a;->a(Ljava/lang/String;Lcom/oplusos/sau/aidl/DataresUpdateInfo;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/oplusos/sau/aidl/d$a;->c(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object v0, p0

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/oplusos/sau/aidl/d$a;->a(Ljava/lang/String;JJJI)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/oplusos/sau/aidl/d$a;->b(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/oplusos/sau/aidl/AppUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/oplusos/sau/aidl/AppUpdateInfo;

    :cond_1
    invoke-virtual {p0, v1, v4}, Lcom/oplusos/sau/aidl/d$a;->a(Ljava/lang/String;Lcom/oplusos/sau/aidl/AppUpdateInfo;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/oplusos/sau/aidl/d$a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v3, v2}, Lcom/oplusos/sau/aidl/d$a;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :pswitch_data_0
    .packed-switch 0x1
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
