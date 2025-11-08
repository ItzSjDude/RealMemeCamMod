.class public Lcom/oplus/camera/ui/l;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "GalleryPreviewItemDecoration.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/oplus/camera/ui/l;->a:I

    .line 12
    iput v0, p0, Lcom/oplus/camera/ui/l;->b:I

    .line 13
    iput v0, p0, Lcom/oplus/camera/ui/l;->c:I

    .line 14
    iput v0, p0, Lcom/oplus/camera/ui/l;->d:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/oplus/camera/ui/l;->e:Landroid/content/Context;

    .line 19
    iput-object p1, p0, Lcom/oplus/camera/ui/l;->e:Landroid/content/Context;

    .line 20
    iput p2, p0, Lcom/oplus/camera/ui/l;->a:I

    .line 21
    iput p4, p0, Lcom/oplus/camera/ui/l;->d:I

    .line 22
    iput p3, p0, Lcom/oplus/camera/ui/l;->b:I

    .line 23
    iput p5, p0, Lcom/oplus/camera/ui/l;->c:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 29
    iget p2, p0, Lcom/oplus/camera/ui/l;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 30
    iget p2, p0, Lcom/oplus/camera/ui/l;->b:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 31
    iget p2, p0, Lcom/oplus/camera/ui/l;->c:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 32
    iget p0, p0, Lcom/oplus/camera/ui/l;->d:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
