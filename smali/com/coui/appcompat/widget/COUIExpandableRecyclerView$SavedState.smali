.class Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "COUIExpandableRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field expandedGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 257
    new-instance v0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState$1;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 239
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    .line 241
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    const-class v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$1;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 246
    invoke-direct {p0, p1, p2}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 247
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    .line 248
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    const-class p2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$1;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .line 231
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 232
    iput-object p2, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 253
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 254
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
