.class Lcom/oplus/camera/timelapsepro/g$b;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "TimeLapseProMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/timelapsepro/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1866
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    const/4 v0, 0x2

    .line 1862
    iput v0, p0, Lcom/oplus/camera/timelapsepro/g$b;->a:I

    const/4 v0, 0x0

    .line 1863
    iput v0, p0, Lcom/oplus/camera/timelapsepro/g$b;->b:I

    .line 1864
    iput v0, p0, Lcom/oplus/camera/timelapsepro/g$b;->c:I

    .line 1867
    iput p1, p0, Lcom/oplus/camera/timelapsepro/g$b;->c:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1870
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    const/4 v0, 0x2

    .line 1862
    iput v0, p0, Lcom/oplus/camera/timelapsepro/g$b;->a:I

    const/4 v0, 0x0

    .line 1863
    iput v0, p0, Lcom/oplus/camera/timelapsepro/g$b;->b:I

    .line 1864
    iput v0, p0, Lcom/oplus/camera/timelapsepro/g$b;->c:I

    .line 1871
    iput p1, p0, Lcom/oplus/camera/timelapsepro/g$b;->b:I

    .line 1872
    iput p2, p0, Lcom/oplus/camera/timelapsepro/g$b;->c:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1876
    iput p1, p0, Lcom/oplus/camera/timelapsepro/g$b;->a:I

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1880
    iput p1, p0, Lcom/oplus/camera/timelapsepro/g$b;->c:I

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 7

    .line 1886
    iget p4, p0, Lcom/oplus/camera/timelapsepro/g$b;->c:I

    .line 1888
    iget v0, p0, Lcom/oplus/camera/timelapsepro/g$b;->b:I

    .line 1891
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 1893
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1894
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne v1, v4, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1898
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v4

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1899
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getItemOffsets, width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", index: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TimeLapseProMenuLayout"

    invoke-static {p3, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    iget p0, p0, Lcom/oplus/camera/timelapsepro/g$b;->a:I

    if-eq p0, v2, :cond_2

    .line 1909
    invoke-virtual {p1, p4, v3, p4, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 1903
    :cond_2
    invoke-virtual {p1, v3, v0, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method
