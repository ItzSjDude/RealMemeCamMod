.class final Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState$1;
.super Ljava/lang/Object;
.source "COUIFloatingButton.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;
    .locals 0

    .line 1419
    new-instance p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public a(I)[Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;
    .locals 0

    .line 1424
    new-array p0, p1, [Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1416
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState$1;->a(Landroid/os/Parcel;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1416
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState$1;->a(I)[Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    move-result-object p0

    return-object p0
.end method
