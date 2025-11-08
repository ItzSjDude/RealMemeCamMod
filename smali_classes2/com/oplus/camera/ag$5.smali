.class Lcom/oplus/camera/ag$5;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ag;->b(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/oplus/camera/ag;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ag;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 1499
    iput-object p1, p0, Lcom/oplus/camera/ag$5;->d:Lcom/oplus/camera/ag;

    iput-object p2, p0, Lcom/oplus/camera/ag$5;->a:Landroid/view/View;

    iput p3, p0, Lcom/oplus/camera/ag$5;->b:I

    iput-object p4, p0, Lcom/oplus/camera/ag$5;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1502
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1503
    iget-object v1, p0, Lcom/oplus/camera/ag$5;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1505
    iget v1, p0, Lcom/oplus/camera/ag$5;->b:I

    if-lez v1, :cond_0

    .line 1506
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/oplus/camera/ag$5;->b:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1507
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/oplus/camera/ag$5;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1508
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/oplus/camera/ag$5;->b:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1509
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/oplus/camera/ag$5;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1511
    iget-object v1, p0, Lcom/oplus/camera/ag$5;->c:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object p0, p0, Lcom/oplus/camera/ag$5;->a:Landroid/view/View;

    invoke-direct {v2, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    return-void
.end method
