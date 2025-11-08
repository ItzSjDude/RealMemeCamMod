.class final Landroidx/widget/COUIDrawerLayout$SavedState$1;
.super Ljava/lang/Object;
.source "COUIDrawerLayout.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/widget/COUIDrawerLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/widget/COUIDrawerLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/widget/COUIDrawerLayout$SavedState;
    .locals 1

    .line 2363
    new-instance p0, Landroidx/widget/COUIDrawerLayout$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/widget/COUIDrawerLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/widget/COUIDrawerLayout$SavedState;
    .locals 0

    .line 2358
    new-instance p0, Landroidx/widget/COUIDrawerLayout$SavedState;

    invoke-direct {p0, p1, p2}, Landroidx/widget/COUIDrawerLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public a(I)[Landroidx/widget/COUIDrawerLayout$SavedState;
    .locals 0

    .line 2368
    new-array p0, p1, [Landroidx/widget/COUIDrawerLayout$SavedState;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2355
    invoke-virtual {p0, p1}, Landroidx/widget/COUIDrawerLayout$SavedState$1;->a(Landroid/os/Parcel;)Landroidx/widget/COUIDrawerLayout$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2355
    invoke-virtual {p0, p1, p2}, Landroidx/widget/COUIDrawerLayout$SavedState$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/widget/COUIDrawerLayout$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2355
    invoke-virtual {p0, p1}, Landroidx/widget/COUIDrawerLayout$SavedState$1;->a(I)[Landroidx/widget/COUIDrawerLayout$SavedState;

    move-result-object p0

    return-object p0
.end method
