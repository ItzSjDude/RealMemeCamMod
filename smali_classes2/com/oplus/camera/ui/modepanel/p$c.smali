.class Lcom/oplus/camera/ui/modepanel/p$c;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "MoreUIControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/modepanel/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/modepanel/p;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/modepanel/p;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$c;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/modepanel/p;Lcom/oplus/camera/ui/modepanel/p$1;)V
    .locals 0

    .line 756
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/p$c;-><init>(Lcom/oplus/camera/ui/modepanel/p;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 0

    .line 760
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 761
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    .line 762
    sget p2, Lcom/oplus/camera/ui/modepanel/p;->a:I

    rem-int/2addr p0, p2

    .line 763
    invoke-static {}, Lcom/oplus/camera/k;->c()I

    move-result p2

    mul-int/2addr p2, p0

    sget p3, Lcom/oplus/camera/ui/modepanel/p;->a:I

    div-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 764
    invoke-static {}, Lcom/oplus/camera/k;->c()I

    move-result p2

    add-int/lit8 p0, p0, 0x1

    invoke-static {}, Lcom/oplus/camera/k;->c()I

    move-result p3

    mul-int/2addr p0, p3

    sget p3, Lcom/oplus/camera/ui/modepanel/p;->a:I

    div-int/2addr p0, p3

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
