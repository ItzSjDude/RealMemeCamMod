.class Lcom/oplus/camera/ui/control/a$10;
.super Ljava/lang/Object;
.source "CameraControlUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/a;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/ui/control/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/a;I)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a$10;->b:Lcom/oplus/camera/ui/control/a;

    iput p2, p0, Lcom/oplus/camera/ui/control/a$10;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$10;->b:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->f(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ShutterButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$10;->b:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->l(Lcom/oplus/camera/ui/control/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 697
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 698
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a$10;->b:Lcom/oplus/camera/ui/control/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/a;->f(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ShutterButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 700
    iget v1, p0, Lcom/oplus/camera/ui/control/a$10;->a:I

    if-lez v1, :cond_0

    .line 701
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/oplus/camera/ui/control/a$10;->a:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 702
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/oplus/camera/ui/control/a$10;->a:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 703
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/oplus/camera/ui/control/a$10;->a:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 704
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/oplus/camera/ui/control/a$10;->a:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 706
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a$10;->b:Lcom/oplus/camera/ui/control/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/a;->l(Lcom/oplus/camera/ui/control/a;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$10;->b:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->f(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ShutterButton;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    return-void
.end method
