.class Lcom/oplus/camera/longexposure/g$1;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "LongExposureMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/longexposure/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/oplus/camera/longexposure/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/longexposure/g;F)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/oplus/camera/longexposure/g$1;->b:Lcom/oplus/camera/longexposure/g;

    iput p2, p0, Lcom/oplus/camera/longexposure/g$1;->a:F

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V

    const/4 p2, 0x0

    .line 83
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 84
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 85
    iget p0, p0, Lcom/oplus/camera/longexposure/g$1;->a:F

    float-to-int p2, p0

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    float-to-int p0, p0

    .line 86
    div-int/lit8 p0, p0, 0x2

    iput p0, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method
