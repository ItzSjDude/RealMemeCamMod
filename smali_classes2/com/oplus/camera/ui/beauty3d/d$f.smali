.class public Lcom/oplus/camera/ui/beauty3d/d$f;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "Beauty3DEditUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/beauty3d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/beauty3d/d;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/beauty3d/d;I)V
    .locals 0

    .line 1722
    iput-object p1, p0, Lcom/oplus/camera/ui/beauty3d/d$f;->a:Lcom/oplus/camera/ui/beauty3d/d;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    const/4 p1, 0x0

    .line 1720
    iput p1, p0, Lcom/oplus/camera/ui/beauty3d/d$f;->b:I

    .line 1723
    iput p2, p0, Lcom/oplus/camera/ui/beauty3d/d$f;->b:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 0

    .line 1728
    iget p0, p0, Lcom/oplus/camera/ui/beauty3d/d$f;->b:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 1729
    iput p0, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method
