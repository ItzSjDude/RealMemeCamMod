.class public Lcom/oplus/camera/ui/menu/RippleLayout;
.super Landroid/widget/FrameLayout;
.source "RippleLayout.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->a:Z

    .line 30
    iput p1, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->b:I

    .line 31
    iput p1, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->c:I

    .line 35
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/RippleLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->a:Z

    .line 30
    iput p1, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->b:I

    .line 31
    iput p1, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->c:I

    .line 40
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/RippleLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->a:Z

    .line 30
    iput p1, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->b:I

    .line 31
    iput p1, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->c:I

    .line 45
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/RippleLayout;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/RippleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070420

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->b:I

    .line 50
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/RippleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07041f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->c:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->a:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 65
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 70
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->a:Z

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/RippleLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->b:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 72
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/RippleLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->c:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    .line 74
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 75
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/RippleLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 76
    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 77
    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 78
    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 79
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 97
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setNeedForbidEvent(Z)V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNeedForbidEvent, mbNeedForbidEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RippleLayout"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/RippleLayout;->a:Z

    return-void
.end method
