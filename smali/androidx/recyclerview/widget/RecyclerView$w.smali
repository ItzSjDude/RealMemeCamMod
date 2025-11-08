.class public abstract Landroidx/recyclerview/widget/RecyclerView$w;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "w"
.end annotation


# static fields
.field static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_MOVED:I = 0x800

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final PENDING_ACCESSIBILITY_STATE_NOT_SET:I = -0x1


# instance fields
.field public final itemView:Landroid/view/View;

.field mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$a<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation
.end field

.field mFlags:I

.field mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mNestedRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field mOldPosition:I

.field mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAccessibilityState:I

.field mPosition:I

.field mPreLayoutPosition:I

.field mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$p;

.field mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$w;

.field mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$w;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$w;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 11239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11103
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    .line 11104
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mOldPosition:I

    const-wide/16 v1, -0x1

    .line 11105
    iput-wide v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mItemId:J

    .line 11106
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mItemViewType:I

    .line 11107
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPreLayoutPosition:I

    const/4 v1, 0x0

    .line 11110
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 11112
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 11211
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPayloads:Ljava/util/List;

    .line 11212
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mUnmodifiedPayloads:Ljava/util/List;

    const/4 v2, 0x0

    .line 11214
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mIsRecyclableCount:I

    .line 11218
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$p;

    .line 11220
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mInChangeScrap:Z

    .line 11224
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11227
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPendingAccessibilityState:I

    if-eqz p1, :cond_0

    .line 11243
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    return-void

    .line 11241
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "itemView may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createPayloadsIfNeeded()V
    .locals 1

    .line 11551
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 11552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPayloads:Ljava/util/List;

    .line 11553
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPayloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mUnmodifiedPayloads:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 11543
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;->addFlags(I)V

    goto :goto_0

    .line 11544
    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 11545
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->createPayloadsIfNeeded()V

    .line 11546
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPayloads:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method addFlags(I)V
    .locals 1

    .line 11538
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    return-void
.end method

.method clearOldPosition()V
    .locals 1

    const/4 v0, -0x1

    .line 11269
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mOldPosition:I

    .line 11270
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPreLayoutPosition:I

    return-void
.end method

.method clearPayload()V
    .locals 1

    .line 11558
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 11559
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11561
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    .line 11485
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    .line 11489
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    return-void
.end method

.method doesTransientStatePreventRecycling()Z
    .locals 1

    .line 11698
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/h/v;->d(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1

    const/16 v0, 0x8

    .line 11247
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;->addFlags(I)V

    .line 11248
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$w;->offsetPosition(IZ)V

    .line 11249
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    return-void
.end method

.method public final getAbsoluteAdapterPosition()I
    .locals 1

    .line 11422
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 11425
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/RecyclerView$w;)I

    move-result p0

    return p0
.end method

.method public final getAdapterPosition()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11335
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->getBindingAdapterPosition()I

    move-result p0

    return p0
.end method

.method public final getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$a<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation

    .line 11437
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    return-object p0
.end method

.method public final getBindingAdapterPosition()I
    .locals 3

    .line 11369
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 11372
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    return v1

    .line 11376
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 11380
    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/RecyclerView$w;)I

    move-result v2

    if-ne v2, v1, :cond_3

    return v1

    .line 11384
    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, v1, p0, v2}, Landroidx/recyclerview/widget/RecyclerView$a;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$w;I)I

    move-result p0

    return p0
.end method

.method public final getItemId()J
    .locals 2

    .line 11462
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 0

    .line 11469
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mItemViewType:I

    return p0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .line 11322
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    :cond_0
    return v0
.end method

.method public final getOldPosition()I
    .locals 0

    .line 11452
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mOldPosition:I

    return p0
.end method

.method public final getPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11295
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    :cond_0
    return v0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 11565
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 11566
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11571
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mUnmodifiedPayloads:Ljava/util/List;

    return-object p0

    .line 11568
    :cond_1
    :goto_0
    sget-object p0, Landroidx/recyclerview/widget/RecyclerView$w;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object p0

    .line 11574
    :cond_2
    sget-object p0, Landroidx/recyclerview/widget/RecyclerView$w;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object p0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 0

    .line 11518
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isAdapterPositionUnknown()Z
    .locals 1

    .line 11530
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->isInvalid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method isAttachedToTransitionOverlay()Z
    .locals 1

    .line 11526
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isBound()Z
    .locals 1

    .line 11510
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInvalid()Z
    .locals 0

    .line 11502
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRecyclable()Z
    .locals 1

    .line 11681
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 11682
    invoke-static {p0}, Landroidx/core/h/v;->d(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isRemoved()Z
    .locals 0

    .line 11514
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isScrap()Z
    .locals 0

    .line 11473
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$p;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isTmpDetached()Z
    .locals 0

    .line 11522
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isUpdated()Z
    .locals 0

    .line 11702
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method needsUpdate()Z
    .locals 0

    .line 11506
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method offsetPosition(IZ)V
    .locals 2

    .line 11253
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11254
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mOldPosition:I

    .line 11256
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 11257
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPreLayoutPosition:I

    :cond_1
    if-eqz p2, :cond_2

    .line 11260
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPreLayoutPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPreLayoutPosition:I

    .line 11262
    :cond_2
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    .line 11263
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11264
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$j;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->e:Z

    :cond_3
    return-void
.end method

.method onEnteredHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 11598
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPendingAccessibilityState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11599
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mWasImportantForAccessibilityBeforeHidden:I

    goto :goto_0

    .line 11601
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 11602
    invoke-static {v0}, Landroidx/core/h/v;->f(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mWasImportantForAccessibilityBeforeHidden:I

    :goto_0
    const/4 v0, 0x4

    .line 11604
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$w;I)Z

    return-void
.end method

.method onLeftHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 11612
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$w;I)Z

    const/4 p1, 0x0

    .line 11614
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mWasImportantForAccessibilityBeforeHidden:I

    return-void
.end method

.method resetInternal()V
    .locals 4

    const/4 v0, 0x0

    .line 11579
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    const/4 v1, -0x1

    .line 11580
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    .line 11581
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mOldPosition:I

    const-wide/16 v2, -0x1

    .line 11582
    iput-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mItemId:J

    .line 11583
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPreLayoutPosition:I

    .line 11584
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mIsRecyclableCount:I

    const/4 v2, 0x0

    .line 11585
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 11586
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 11587
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->clearPayload()V

    .line 11588
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11589
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPendingAccessibilityState:I

    .line 11590
    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method saveOldPosition()V
    .locals 2

    .line 11274
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11275
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mOldPosition:I

    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 2

    .line 11534
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 11656
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mIsRecyclableCount:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mIsRecyclableCount:I

    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mIsRecyclableCount:I

    .line 11657
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mIsRecyclableCount:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 11658
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mIsRecyclableCount:I

    .line 11663
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "View"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    .line 11666
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 11667
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mIsRecyclableCount:I

    if-nez p1, :cond_3

    .line 11668
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    :cond_3
    :goto_1
    return-void
.end method

.method setScrapContainer(Landroidx/recyclerview/widget/RecyclerView$p;Z)V
    .locals 0

    .line 11497
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$p;

    .line 11498
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mInChangeScrap:Z

    return-void
.end method

.method shouldBeKeptAsChild()Z
    .locals 0

    .line 11690
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method shouldIgnore()Z
    .locals 0

    .line 11280
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method stopIgnoring()V
    .locals 1

    .line 11493
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 11620
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewHolder"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 11621
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11622
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " position="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mItemId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", oldPos="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mOldPosition:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pLpos:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mPreLayoutPosition:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11624
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->isScrap()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " scrap "

    .line 11625
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11626
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mInChangeScrap:Z

    if-eqz v0, :cond_1

    const-string v0, "[changeScrap]"

    goto :goto_1

    :cond_1
    const-string v0, "[attachedScrap]"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11628
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11629
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->isBound()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11630
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->needsUpdate()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11631
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11632
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11633
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11634
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->isRecyclable()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mIsRecyclableCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11635
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->isAdapterPositionUnknown()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11637
    :cond_a
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_b

    const-string p0, " no parent"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string p0, "}"

    .line 11638
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11639
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method unScrap()V
    .locals 1

    .line 11477
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$p;->c(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 0

    .line 11481
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->mFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
