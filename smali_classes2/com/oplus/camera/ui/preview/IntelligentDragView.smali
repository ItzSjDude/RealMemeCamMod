.class public Lcom/oplus/camera/ui/preview/IntelligentDragView;
.super Landroid/widget/ImageView;
.source "IntelligentDragView.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/IntelligentDragView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Landroid/graphics/Rect;

.field private h:Lcom/oplus/camera/ui/preview/IntelligentDragView$a;

.field private i:Landroid/view/GestureDetector;

.field private final j:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 27
    iput p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->a:I

    .line 28
    iput p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->b:I

    .line 29
    iput p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->c:I

    .line 30
    iput p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->d:I

    .line 31
    iput p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->e:I

    .line 32
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->f:Z

    .line 33
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->g:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 34
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->h:Lcom/oplus/camera/ui/preview/IntelligentDragView$a;

    .line 35
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->i:Landroid/view/GestureDetector;

    .line 36
    new-instance p2, Lcom/oplus/camera/ui/preview/IntelligentDragView$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/preview/IntelligentDragView$1;-><init>(Lcom/oplus/camera/ui/preview/IntelligentDragView;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->j:Landroid/view/GestureDetector$OnGestureListener;

    .line 100
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070cfb

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->a:I

    .line 101
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070cfa

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->b:I

    .line 102
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->j:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->i:Landroid/view/GestureDetector;

    return-void
.end method

.method private a(FF)Landroid/graphics/Rect;
    .locals 5

    .line 133
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 134
    iget v0, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->a:I

    add-int/2addr v0, p1

    .line 135
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    float-to-int p2, v1

    .line 136
    iget v1, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->b:I

    add-int/2addr v1, p2

    const/4 v2, 0x0

    if-gez p1, :cond_0

    .line 140
    iget p1, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->a:I

    add-int/lit8 v0, p1, 0x0

    move p1, v2

    goto :goto_0

    .line 141
    :cond_0
    iget v3, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->c:I

    if-le v0, v3, :cond_1

    .line 143
    iget p1, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->a:I

    sub-int p1, v3, p1

    move v0, v3

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 148
    iget p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->b:I

    add-int/lit8 v1, p2, 0x0

    move p2, v2

    goto :goto_1

    .line 149
    :cond_2
    iget v2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->d:I

    iget v3, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->e:I

    sub-int v4, v2, v3

    if-le v1, v4, :cond_3

    sub-int v1, v2, v3

    .line 151
    iget p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->b:I

    sub-int p2, v1, p2

    .line 154
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->g:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->g:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/IntelligentDragView;FF)Landroid/graphics/Rect;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->a(FF)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/IntelligentDragView;)Lcom/oplus/camera/ui/preview/IntelligentDragView$a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->h:Lcom/oplus/camera/ui/preview/IntelligentDragView$a;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/IntelligentDragView;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->f:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/util/Size;I)Landroid/graphics/RectF;
    .locals 7

    .line 240
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 241
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 242
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 244
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->getLeft()I

    move-result v2

    .line 245
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->getTop()I

    move-result v3

    .line 246
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->getWidth()I

    move-result v4

    .line 247
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->getHeight()I

    move-result p0

    .line 249
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    if-nez p2, :cond_0

    int-to-float p2, v2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p2, p2

    .line 252
    iput p2, v5, Landroid/graphics/RectF;->left:F

    int-to-float p2, v3

    mul-float/2addr p2, p1

    float-to-int p2, p2

    int-to-float p2, p2

    .line 253
    iput p2, v5, Landroid/graphics/RectF;->top:F

    .line 254
    iget p2, v5, Landroid/graphics/RectF;->left:F

    int-to-float v0, v4

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    float-to-int p1, p2

    int-to-float p1, p1

    iput p1, v5, Landroid/graphics/RectF;->right:F

    .line 255
    iget p1, v5, Landroid/graphics/RectF;->top:F

    int-to-float p0, p0

    mul-float/2addr p0, v1

    add-float/2addr p1, p0

    float-to-int p0, p1

    int-to-float p0, p0

    iput p0, v5, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    :cond_0
    const/16 v6, 0x5a

    if-ne v6, p2, :cond_1

    int-to-float p2, v3

    mul-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p2, p2

    .line 257
    iput p2, v5, Landroid/graphics/RectF;->left:F

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr p2, v2

    sub-int/2addr p2, v4

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, v5, Landroid/graphics/RectF;->top:F

    .line 259
    iget p2, v5, Landroid/graphics/RectF;->left:F

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr p2, p0

    float-to-int p0, p2

    int-to-float p0, p0

    iput p0, v5, Landroid/graphics/RectF;->right:F

    .line 260
    iget p0, v5, Landroid/graphics/RectF;->top:F

    int-to-float p1, v4

    mul-float/2addr p1, v1

    add-float/2addr p0, p1

    float-to-int p0, p0

    int-to-float p0, p0

    iput p0, v5, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_1
    const/16 v6, 0xb4

    if-ne v6, p2, :cond_2

    .line 262
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr p2, v2

    sub-int/2addr p2, v4

    int-to-float p2, p2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, v5, Landroid/graphics/RectF;->left:F

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p2, v3

    sub-int/2addr p2, p0

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, v5, Landroid/graphics/RectF;->top:F

    .line 264
    iget p2, v5, Landroid/graphics/RectF;->left:F

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr p2, p0

    float-to-int p0, p2

    int-to-float p0, p0

    iput p0, v5, Landroid/graphics/RectF;->right:F

    .line 265
    iget p0, v5, Landroid/graphics/RectF;->top:F

    int-to-float p1, v4

    mul-float/2addr p1, v1

    add-float/2addr p0, p1

    float-to-int p0, p0

    int-to-float p0, p0

    iput p0, v5, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_2
    const/16 v6, 0x10e

    if-ne v6, p2, :cond_3

    .line 267
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p2, v3

    sub-int/2addr p2, p0

    int-to-float p2, p2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, v5, Landroid/graphics/RectF;->left:F

    int-to-float p2, v2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p2, p2

    .line 268
    iput p2, v5, Landroid/graphics/RectF;->top:F

    .line 269
    iget p2, v5, Landroid/graphics/RectF;->left:F

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr p2, p0

    float-to-int p0, p2

    int-to-float p0, p0

    iput p0, v5, Landroid/graphics/RectF;->right:F

    .line 270
    iget p0, v5, Landroid/graphics/RectF;->top:F

    int-to-float p1, v4

    mul-float/2addr p1, v1

    add-float/2addr p0, p1

    float-to-int p0, p0

    int-to-float p0, p0

    iput p0, v5, Landroid/graphics/RectF;->bottom:F

    :cond_3
    :goto_0
    return-object v5
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(IZ)V
    .locals 0

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    .line 226
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->g:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public layout(IIII)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->g:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 211
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->g:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 212
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->g:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    .line 213
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->g:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    .line 216
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 200
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 202
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 221
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 222
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->b()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 107
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 109
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->c:I

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->d:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 116
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->f:Z

    .line 119
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->h:Lcom/oplus/camera/ui/preview/IntelligentDragView$a;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/IntelligentDragView$a;->b(Landroid/view/MotionEvent;)V

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->i:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setBottomRestrict(I)V
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBottomRestrict: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntelligentDragView"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iput p1, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->e:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 186
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3f1a511a    # 0.6028f

    .line 195
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/IntelligentDragView;->setAlpha(F)V

    return-void
.end method

.method public setIntelligentGestureListener(Lcom/oplus/camera/ui/preview/IntelligentDragView$a;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/IntelligentDragView;->h:Lcom/oplus/camera/ui/preview/IntelligentDragView$a;

    return-void
.end method
