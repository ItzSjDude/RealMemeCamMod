.class public Lcom/coui/appcompat/widget/COUIEditText$COUISavedState;
.super Landroid/view/View$BaseSavedState;
.source "COUIEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COUISavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coui/appcompat/widget/COUIEditText$COUISavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 555
    new-instance v0, Lcom/coui/appcompat/widget/COUIEditText$COUISavedState$1;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/COUIEditText$COUISavedState$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/widget/COUIEditText$COUISavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 551
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText$COUISavedState;->text:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/coui/appcompat/widget/COUIEditText$1;)V
    .locals 0

    .line 533
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText$COUISavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 537
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText$COUISavedState;->text:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 542
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 543
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIEditText$COUISavedState;->text:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
