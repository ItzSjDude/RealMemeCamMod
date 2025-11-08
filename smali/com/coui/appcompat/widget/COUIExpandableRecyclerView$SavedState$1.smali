.class final Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState$1;
.super Ljava/lang/Object;
.source "COUIExpandableRecyclerView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;
    .locals 2

    .line 259
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p0, v1, :cond_0

    .line 260
    new-instance p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;

    const-class v1, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$1;)V

    return-object p0

    .line 262
    :cond_0
    new-instance p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;-><init>(Landroid/os/Parcel;Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$1;)V

    return-object p0
.end method

.method public a(I)[Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;
    .locals 0

    .line 267
    new-array p0, p1, [Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 257
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState$1;->a(Landroid/os/Parcel;)Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 257
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState$1;->a(I)[Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;

    move-result-object p0

    return-object p0
.end method
