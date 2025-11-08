.class public Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;
.super Landroid/widget/LinearLayout;
.source "TabContainerLayout.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->a:I

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->b:I

    .line 26
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->c:I

    .line 27
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->d:I

    .line 28
    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->e:I

    .line 29
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->f:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->g:Landroid/view/View;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->b:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07049f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 24
    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->a:I

    const/4 p2, 0x0

    .line 25
    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->b:I

    .line 26
    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->c:I

    .line 27
    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->d:I

    .line 28
    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->e:I

    .line 29
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->f:Z

    const/4 p2, 0x0

    .line 30
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->g:Landroid/view/View;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0704a0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->b:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07049f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 24
    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->a:I

    const/4 p2, 0x0

    .line 25
    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->b:I

    .line 26
    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->c:I

    .line 27
    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->d:I

    .line 28
    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->e:I

    .line 29
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->f:Z

    const/4 p2, 0x0

    .line 30
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->g:Landroid/view/View;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0704a0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->b:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07049f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->c:I

    return-void
.end method

.method private a(II)I
    .locals 4

    .line 168
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 172
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 176
    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 178
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->b:I

    sub-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 179
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->c:I

    sub-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 180
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->b:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 181
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->c:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 183
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private b(II)Z
    .locals 1

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->a(II)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 196
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->setPressed(Z)V

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 203
    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    .line 204
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->performClick()Z

    :cond_1
    return v0

    :cond_2
    return p2
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->g:Landroid/view/View;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v3, v0, :cond_0

    if-ne v2, v0, :cond_2

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->g:Landroid/view/View;

    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 60
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->g:Landroid/view/View;

    :cond_2
    const/4 v1, -0x1

    if-eqz v0, :cond_9

    if-eq v0, v3, :cond_7

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    if-eq v0, v2, :cond_3

    const/4 p0, 0x5

    if-eq v0, p0, :cond_a

    const/4 p0, 0x6

    goto/16 :goto_0

    .line 136
    :cond_3
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->f:Z

    if-eqz v0, :cond_4

    .line 137
    iput-boolean v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->f:Z

    .line 140
    :cond_4
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->d:I

    iget v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->e:I

    invoke-direct {p0, v0, v2}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->a(II)I

    move-result v0

    if-eq v0, v1, :cond_a

    .line 143
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 145
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 146
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 147
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    .line 86
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 89
    iget v5, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->d:I

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v5, 0xa

    if-gt v0, v5, :cond_6

    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->e:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v5, :cond_a

    .line 90
    :cond_6
    iput-boolean v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->f:Z

    .line 92
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->d:I

    iget v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->e:I

    invoke-direct {p0, v0, v2}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->a(II)I

    move-result v0

    if-eq v0, v1, :cond_a

    .line 95
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 97
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 98
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 99
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    .line 108
    :cond_7
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->f:Z

    if-eqz v0, :cond_8

    .line 109
    iput-boolean v4, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->f:Z

    .line 111
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->d:I

    iget v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->e:I

    invoke-direct {p0, v0, v2}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->a(II)I

    move-result v0

    if-eq v0, v1, :cond_a

    .line 114
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 116
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 117
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 118
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 125
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 128
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->b(II)Z

    move-result p1

    if-nez p1, :cond_a

    .line 129
    iget p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->d:I

    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->e:I

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->b(II)Z

    goto :goto_0

    .line 68
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->d:I

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->e:I

    .line 70
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->d:I

    iget v2, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->e:I

    invoke-direct {p0, v0, v2}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->a(II)I

    move-result v0

    if-eq v0, v1, :cond_a

    .line 73
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 75
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_a

    .line 76
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 77
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 78
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerLayout;->g:Landroid/view/View;

    :cond_a
    :goto_0
    return v3
.end method
