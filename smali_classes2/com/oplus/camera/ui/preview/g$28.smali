.class Lcom/oplus/camera/ui/preview/g$28;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "CameraPreviewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->an()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;F)V
    .locals 0

    .line 3802
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$28;->b:Lcom/oplus/camera/ui/preview/g;

    iput p2, p0, Lcom/oplus/camera/ui/preview/g$28;->a:F

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 1

    .line 3805
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3806
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V

    if-eqz v0, :cond_1

    .line 3809
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    const/high16 p3, 0x3f000000    # 0.5f

    if-nez p2, :cond_0

    .line 3812
    iget p0, p0, Lcom/oplus/camera/ui/preview/g$28;->a:F

    mul-float/2addr p0, p3

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 3814
    :cond_0
    iget p0, p0, Lcom/oplus/camera/ui/preview/g$28;->a:F

    mul-float/2addr p0, p3

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    return-void
.end method
