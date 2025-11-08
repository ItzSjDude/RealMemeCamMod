.class public Lcom/oplus/camera/ui/OplusNumAISeekBar;
.super Lcom/oplus/camera/ui/OplusNumSeekBar;
.source "OplusNumAISeekBar.java"


# instance fields
.field private final T:Landroid/graphics/Rect;

.field private U:I

.field private V:I

.field private W:I

.field private aa:I

.field private ab:F

.field private ac:Z

.field private ad:Ljava/lang/String;

.field private ae:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/OplusNumSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->T:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->U:I

    .line 39
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->V:I

    .line 40
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->W:I

    .line 41
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->aa:I

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->ab:F

    .line 43
    iput-boolean v0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->ac:Z

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->ad:Ljava/lang/String;

    .line 45
    iput v0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->ae:I

    .line 58
    sget-object v1, Lcom/oplus/camera/R$styleable;->OplusNumSeekBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const p3, 0x7f060434

    .line 60
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    const/16 v0, 0x2c

    .line 59
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->m:I

    const p3, 0x7f06004d

    .line 61
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    const/16 v0, 0xc

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->k:I

    .line 63
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0708f4

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/16 v0, 0x1e

    .line 62
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->p:I

    .line 65
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0708f3

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 64
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->y:I

    const p3, 0x7f0604d4

    .line 67
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/16 p3, 0x27

    .line 66
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->U:I

    .line 69
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0708fe

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/16 p3, 0x26

    .line 68
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->aa:I

    .line 71
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0708ff

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/16 p3, 0x28

    .line 70
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->V:I

    .line 73
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070900

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/16 p3, 0x29

    .line 72
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->W:I

    .line 74
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f100082

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->ad:Ljava/lang/String;

    .line 75
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c8a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->ae:I

    const/high16 p1, 0x41b00000    # 22.0f

    .line 78
    iput p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->z:F

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->D:Z

    .line 80
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->L:Landroid/graphics/Paint;

    iget p2, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->aa:I

    int-to-float p2, p2

    iget p3, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->V:I

    int-to-float p3, p3

    iget v0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->W:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->U:I

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 82
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->M:Landroid/graphics/Paint;

    iget p2, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->aa:I

    int-to-float p2, p2

    iget p3, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->V:I

    int-to-float p3, p3

    iget v0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->W:I

    int-to-float v0, v0

    iget p0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->U:I

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Paint;FLandroid/graphics/Rect;)F
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 96
    iget p2, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p3, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr p2, p1

    .line 97
    iget p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->ab:F

    div-float/2addr p1, p3

    add-float/2addr p1, p2

    .line 98
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, p1

    return p0
.end method

.method protected a(Landroid/graphics/Canvas;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->a()V

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->getProgress()I

    move-result v2

    .line 146
    iget v3, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->N:I

    const/4 v4, 0x1

    if-ne v4, v3, :cond_0

    const/high16 v3, 0x42b40000    # 90.0f

    .line 147
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 150
    :cond_0
    iget-boolean v3, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->ac:Z

    const-string v5, " "

    if-nez v3, :cond_1

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->ad:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 154
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->getLayoutDirection()I

    move-result v6

    if-ne v4, v6, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 156
    :goto_1
    iget v7, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->x:I

    if-eqz v7, :cond_4

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v7, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->x:I

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    const-string v8, "[d%\u066a ]"

    if-eqz v6, :cond_3

    .line 161
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 163
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    .line 167
    :cond_5
    iget-object v5, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 168
    :goto_3
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->e(I)F

    move-result v7

    .line 169
    iget-object v8, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->M:Landroid/graphics/Paint;

    iget-object v9, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 170
    iget-boolean v9, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->ac:Z

    if-eqz v9, :cond_6

    const/16 v9, 0xa

    goto :goto_4

    :cond_6
    const/16 v9, 0x64

    .line 171
    :goto_4
    invoke-virtual {v0, v9}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->e(I)F

    move-result v9

    add-float/2addr v9, v5

    add-float/2addr v9, v8

    .line 173
    iget-object v10, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->L:Landroid/graphics/Paint;

    iget-object v11, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->F:Landroid/graphics/Rect;

    move/from16 v12, p2

    invoke-virtual {v0, v10, v12, v11}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->a(Landroid/graphics/Paint;FLandroid/graphics/Rect;)F

    move-result v10

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float v9, v11, v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v9, v12

    .line 177
    iget-boolean v13, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->ac:Z

    if-eqz v13, :cond_7

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->getContext()Landroid/content/Context;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;F)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v13, v9

    goto :goto_5

    :cond_7
    move v13, v9

    .line 181
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 182
    iget v14, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->P:I

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v12

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    move/from16 p2, v9

    iget v9, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->ab:F

    div-float/2addr v9, v12

    add-float/2addr v4, v9

    invoke-virtual {v1, v14, v15, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    if-eqz v6, :cond_9

    if-eqz v3, :cond_8

    sub-float v4, v11, v13

    sub-float/2addr v4, v5

    .line 186
    iget-object v6, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 189
    :cond_8
    invoke-static {v2}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object v2

    sub-float/2addr v11, v13

    sub-float/2addr v11, v5

    sub-float/2addr v11, v7

    iget-object v3, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v11, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 190
    iget-object v2, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->b:Ljava/lang/String;

    sub-float/2addr v11, v8

    iget-object v0, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->M:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v11, v10, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_9
    if-eqz v3, :cond_a

    .line 193
    iget-object v4, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v13, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_a
    add-float/2addr v13, v5

    .line 198
    iget v3, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->N:I

    const/4 v4, 0x1

    if-ne v4, v3, :cond_c

    .line 199
    iget v3, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->O:I

    if-ne v4, v3, :cond_b

    div-float/2addr v11, v12

    .line 200
    iget v3, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->ae:I

    int-to-float v3, v3

    sub-float/2addr v11, v3

    sub-float/2addr v11, v7

    goto :goto_6

    :cond_b
    div-float/2addr v11, v12

    .line 202
    iget v3, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->ae:I

    int-to-float v3, v3

    add-float/2addr v11, v3

    :goto_6
    move/from16 v9, p2

    neg-float v10, v9

    goto :goto_7

    :cond_c
    move v11, v13

    .line 208
    :goto_7
    invoke-static {v2}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v11, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 209
    iget-object v2, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->b:Ljava/lang/String;

    add-float/2addr v13, v7

    iget-object v0, v0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->M:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v13, v10, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 212
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->C:Z

    if-nez v0, :cond_2

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    iget-object v2, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->T:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHitRect(Landroid/graphics/Rect;)V

    .line 107
    iget-object v1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->T:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->T:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    .line 116
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getmThumbTextShadowBlur()I
    .locals 0

    .line 239
    iget p0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->aa:I

    return p0
.end method

.method public getmThumbTextShadowColor()I
    .locals 0

    .line 231
    iget p0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->U:I

    return p0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/OplusNumSeekBar;->onMeasure(II)V

    .line 89
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 90
    iget p2, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->ab:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 123
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    iget-object v1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->T:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHitRect(Landroid/graphics/Rect;)V

    .line 125
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->T:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->a(IZ)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->T:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    iget-object p0, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->G:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getMax()I

    move-result p0

    invoke-virtual {p1, p0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->a(IZ)V

    :cond_1
    return v1

    .line 136
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setFrontStyle(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->ac:Z

    return-void
.end method

.method public setInverseColor(Z)V
    .locals 2

    .line 221
    iput-boolean p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->E:Z

    .line 222
    iget-boolean p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->E:Z

    if-eqz p1, :cond_0

    const p1, 0x7f060435

    goto :goto_0

    :cond_0
    const p1, 0x7f060434

    .line 224
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    const-string v0, "mBackgroundColor"

    .line 225
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->invalidate()V

    return-void
.end method

.method public setmThumbTextShadowBlur(I)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->aa:I

    return-void
.end method

.method public setmThumbTextShadowColor(I)V
    .locals 0

    .line 235
    iput p1, p0, Lcom/oplus/camera/ui/OplusNumAISeekBar;->U:I

    return-void
.end method
