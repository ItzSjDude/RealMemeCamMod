.class Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "COUITimeLimitPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUITimeLimitPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 350
    new-instance v0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState$1;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 329
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;->mHour:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;->mMinute:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/coui/appcompat/widget/COUITimeLimitPicker$1;)V
    .locals 0

    .line 316
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0

    .line 323
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 324
    iput p2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;->mHour:I

    .line 325
    iput p3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;->mMinute:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILcom/coui/appcompat/widget/COUITimeLimitPicker$1;)V
    .locals 0

    .line 316
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method getHour()I
    .locals 0

    .line 335
    iget p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;->mHour:I

    return p0
.end method

.method getMinute()I
    .locals 0

    .line 339
    iget p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;->mMinute:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 344
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 345
    iget p2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;->mHour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget p0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;->mMinute:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
