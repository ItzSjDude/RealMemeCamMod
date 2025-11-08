.class Lcom/oplus/camera/professional/c$4;
.super Ljava/lang/Object;
.source "HSLevelPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/c;->a(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/oplus/camera/professional/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/c;IILandroid/view/View;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/oplus/camera/professional/c$4;->d:Lcom/oplus/camera/professional/c;

    iput p2, p0, Lcom/oplus/camera/professional/c$4;->a:I

    iput p3, p0, Lcom/oplus/camera/professional/c$4;->b:I

    iput-object p4, p0, Lcom/oplus/camera/professional/c$4;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 373
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 374
    iget-object v1, p0, Lcom/oplus/camera/professional/c$4;->d:Lcom/oplus/camera/professional/c;

    iget-object v1, v1, Lcom/oplus/camera/professional/c;->c:Lcom/oplus/camera/professional/b;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/professional/b;->getHitRect(Landroid/graphics/Rect;)V

    .line 375
    iget v1, p0, Lcom/oplus/camera/professional/c$4;->a:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 376
    iget v2, p0, Lcom/oplus/camera/professional/c$4;->b:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-lez v1, :cond_0

    .line 380
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v1

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 381
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    iput v4, v0, Landroid/graphics/Rect;->right:I

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v2, :cond_1

    .line 386
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 387
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    move v1, v3

    :cond_1
    if-eqz v1, :cond_2

    .line 392
    iget-object v1, p0, Lcom/oplus/camera/professional/c$4;->c:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object p0, p0, Lcom/oplus/camera/professional/c$4;->d:Lcom/oplus/camera/professional/c;

    iget-object p0, p0, Lcom/oplus/camera/professional/c;->c:Lcom/oplus/camera/professional/b;

    invoke-direct {v2, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_2
    return-void
.end method
