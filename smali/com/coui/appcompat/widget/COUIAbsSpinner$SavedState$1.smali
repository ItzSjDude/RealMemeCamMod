.class final Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState$1;
.super Ljava/lang/Object;
.source "COUIAbsSpinner.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;
    .locals 1

    .line 386
    new-instance p0, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;
    .locals 0

    .line 381
    new-instance p0, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public a(I)[Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;
    .locals 0

    .line 391
    new-array p0, p1, [Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 378
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState$1;->a(Landroid/os/Parcel;)Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 378
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState$1;->a(I)[Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;

    move-result-object p0

    return-object p0
.end method
