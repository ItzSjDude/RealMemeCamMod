.class Lcom/oplus/camera/ui/SwitchCameraBar$6;
.super Ljava/lang/Object;
.source "SwitchCameraBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/SwitchCameraBar;->a(Ljava/lang/String;ZZ[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/SwitchCameraBar;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/SwitchCameraBar;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar$6;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$6;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$6;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    .line 300
    invoke-virtual {v0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$6;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    .line 301
    invoke-virtual {v0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$6;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$6;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/SwitchCameraBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 304
    iget-object v1, p0, Lcom/oplus/camera/ui/SwitchCameraBar$6;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {v1}, Lcom/oplus/camera/ui/SwitchCameraBar;->d(Lcom/oplus/camera/ui/SwitchCameraBar;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 305
    iget-object v1, p0, Lcom/oplus/camera/ui/SwitchCameraBar$6;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {v1}, Lcom/oplus/camera/ui/SwitchCameraBar;->e(Lcom/oplus/camera/ui/SwitchCameraBar;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar$6;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {v2}, Lcom/oplus/camera/ui/SwitchCameraBar;->d(Lcom/oplus/camera/ui/SwitchCameraBar;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/oplus/camera/ui/SwitchCameraBar$6;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/SwitchCameraBar;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/SwitchCameraBar$6;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {v2}, Lcom/oplus/camera/ui/SwitchCameraBar;->f(Lcom/oplus/camera/ui/SwitchCameraBar;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 307
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v1

    if-nez v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/oplus/camera/ui/SwitchCameraBar$6;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/SwitchCameraBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707f0

    .line 309
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 310
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 311
    iget-object v1, p0, Lcom/oplus/camera/ui/SwitchCameraBar$6;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/SwitchCameraBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070506

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/SwitchCameraBar$6;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {v1}, Lcom/oplus/camera/ui/SwitchCameraBar;->g(Lcom/oplus/camera/ui/SwitchCameraBar;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/oplus/camera/ui/SwitchCameraBar$6;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-static {v1}, Lcom/oplus/camera/ui/SwitchCameraBar;->g(Lcom/oplus/camera/ui/SwitchCameraBar;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 316
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$6;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/SwitchCameraBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method
