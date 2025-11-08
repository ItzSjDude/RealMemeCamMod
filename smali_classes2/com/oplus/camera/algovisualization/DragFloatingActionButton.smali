.class public Lcom/oplus/camera/algovisualization/DragFloatingActionButton;
.super Landroid/widget/Button;
.source "DragFloatingActionButton.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->f:I

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    if-eq v2, v4, :cond_9

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    goto/16 :goto_4

    .line 60
    :cond_0
    iget v2, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->a:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->b:I

    if-lez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->e:Z

    .line 63
    iget-boolean v2, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->e:Z

    if-nez v2, :cond_2

    goto/16 :goto_4

    .line 67
    :cond_2
    iget v2, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->c:I

    sub-int v2, v0, v2

    .line 68
    iget v5, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->d:I

    sub-int v5, v1, v5

    mul-int v6, v2, v2

    mul-int v7, v5, v5

    add-int/2addr v6, v7

    int-to-double v6, v6

    .line 69
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    if-lez v6, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v3

    .line 71
    :goto_1
    iput-boolean v6, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->e:Z

    .line 73
    iget-boolean v6, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->e:Z

    if-nez v6, :cond_4

    goto/16 :goto_4

    .line 77
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->getX()F

    move-result v6

    int-to-float v2, v2

    add-float/2addr v6, v2

    .line 78
    invoke-virtual {p0}, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->getY()F

    move-result v2

    int-to-float v5, v5

    add-float/2addr v2, v5

    const/4 v5, 0x0

    cmpg-float v7, v6, v5

    if-gez v7, :cond_5

    move v6, v5

    goto :goto_2

    .line 80
    :cond_5
    iget v7, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->b:I

    .line 81
    invoke-virtual {p0}, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_6

    iget v6, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->b:I

    invoke-virtual {p0}, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    :cond_6
    :goto_2
    cmpg-float v7, v2, v5

    if-gez v7, :cond_7

    move v2, v5

    goto :goto_3

    .line 82
    :cond_7
    iget v5, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->a:I

    .line 83
    invoke-virtual {p0}, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->getHeight()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_8

    iget v2, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->a:I

    invoke-virtual {p0}, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->getHeight()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    .line 85
    :cond_8
    :goto_3
    invoke-virtual {p0, v6}, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->setX(F)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->setY(F)V

    .line 88
    iput v0, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->c:I

    .line 89
    iput v1, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->d:I

    goto :goto_4

    .line 94
    :cond_9
    iget-boolean v0, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->e:Z

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->setPressed(Z)V

    goto :goto_4

    .line 41
    :cond_a
    invoke-virtual {p0, v4}, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->setPressed(Z)V

    .line 43
    iput-boolean v3, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->e:Z

    .line 44
    iput v0, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->c:I

    .line 45
    iput v1, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->d:I

    .line 47
    invoke-virtual {p0}, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 52
    invoke-virtual {p0}, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 53
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->a:I

    .line 54
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->b:I

    .line 99
    :cond_b
    :goto_4
    iget-boolean v0, p0, Lcom/oplus/camera/algovisualization/DragFloatingActionButton;->e:Z

    if-nez v0, :cond_c

    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_d

    :cond_c
    move v3, v4

    :cond_d
    return v3
.end method
