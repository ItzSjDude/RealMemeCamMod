.class Lcom/oplus/camera/ui/widget/SplitBackgroundView$1;
.super Ljava/lang/Object;
.source "SplitBackgroundView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/widget/SplitBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/widget/SplitBackgroundView;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView$1;->a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView$1;->a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView$1;->a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView$1;->a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView$1;->a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView$1;->a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    .line 50
    invoke-virtual {v5}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView$1;->a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    invoke-virtual {v6}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 49
    invoke-static {v0, v1}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->a(Lcom/oplus/camera/ui/widget/SplitBackgroundView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 52
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView$1;->a:Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->postInvalidate()V

    return-void
.end method
