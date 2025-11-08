.class public Lcom/oplus/camera/ui/menu/a/d;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "ModeArrangeDecoration.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/d;->a:I

    .line 16
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/d;->b:I

    .line 17
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/d;->c:I

    const-string v0, "ModeArrangeDecoration"

    .line 18
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/d;->d:Ljava/lang/String;

    const v0, 0x7f0705fd

    .line 22
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v0

    const v1, 0x7f070600

    .line 23
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/a/d;->a:I

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$a;)I
    .locals 2

    .line 94
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result p0

    const p1, 0x7f0705fb

    .line 95
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result p1

    const v0, 0x7f070784

    .line 96
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    mul-int/2addr p0, p1

    .line 97
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr p0, p1

    const p1, 0x7f070783

    .line 98
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    return p1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 27
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/d;->b:I

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLayoutMode, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeArrangeDecoration"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iput p1, p0, Lcom/oplus/camera/ui/menu/a/d;->c:I

    .line 76
    iget p1, p0, Lcom/oplus/camera/ui/menu/a/d;->c:I

    const/4 v0, 0x3

    const v1, 0x7f070600

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const p1, 0x7f0705fd

    .line 86
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result p1

    .line 87
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/d;->a:I

    goto :goto_0

    :cond_0
    const p1, 0x7f0704f7

    .line 80
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result p1

    .line 81
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/a/d;->a:I

    :goto_0
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 4

    .line 32
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget v1, p0, Lcom/oplus/camera/ui/menu/a/d;->c:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 41
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    if-nez p4, :cond_1

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/a/d;->a(Landroidx/recyclerview/widget/RecyclerView$a;)I

    move-result p4

    if-lez p4, :cond_1

    .line 42
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/a/d;->a(Landroidx/recyclerview/widget/RecyclerView$a;)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    .line 43
    :cond_1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result p3

    sub-int/2addr p3, v2

    if-ne p2, p3, :cond_8

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/a/d;->a(Landroidx/recyclerview/widget/RecyclerView$a;)I

    move-result p2

    if-lez p2, :cond_8

    .line 44
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/a/d;->a(Landroidx/recyclerview/widget/RecyclerView$a;)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :cond_2
    const/4 p4, 0x3

    const/4 v3, 0x0

    if-ne p4, v1, :cond_5

    .line 47
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    if-nez p4, :cond_3

    .line 48
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x4

    iget p3, p0, Lcom/oplus/camera/ui/menu/a/d;->b:I

    sub-int/2addr p2, p3

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/d;->a:I

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 49
    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result p3

    sub-int/2addr p3, v2

    if-ne p2, p3, :cond_4

    .line 51
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 52
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x4

    iget p3, p0, Lcom/oplus/camera/ui/menu/a/d;->b:I

    sub-int/2addr p2, p3

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/d;->a:I

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 54
    :cond_4
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 55
    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 58
    :cond_5
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    if-nez p4, :cond_6

    .line 59
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/oplus/camera/ui/menu/a/d;->b:I

    sub-int/2addr p2, p3

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/d;->a:I

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 60
    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 61
    :cond_6
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result p3

    sub-int/2addr p3, v2

    if-ne p2, p3, :cond_7

    .line 62
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 63
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/oplus/camera/ui/menu/a/d;->b:I

    sub-int/2addr p2, p3

    iget p0, p0, Lcom/oplus/camera/ui/menu/a/d;->a:I

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 65
    :cond_7
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 66
    iput v3, p1, Landroid/graphics/Rect;->right:I

    :cond_8
    :goto_0
    return-void
.end method
