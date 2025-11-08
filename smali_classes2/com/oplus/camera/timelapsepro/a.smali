.class public Lcom/oplus/camera/timelapsepro/a;
.super Lcom/oplus/camera/ui/inverse/InverseTextView;
.source "EqualWidthNumberTextView.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:[I

.field private c:I

.field private d:I

.field private e:I

.field private f:[F

.field private g:Ljava/lang/String;

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/timelapsepro/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/inverse/InverseTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0xa

    .line 26
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/a;->b:[I

    const/4 p2, 0x0

    .line 27
    iput p2, p0, Lcom/oplus/camera/timelapsepro/a;->c:I

    .line 28
    iput p2, p0, Lcom/oplus/camera/timelapsepro/a;->d:I

    .line 29
    iput p2, p0, Lcom/oplus/camera/timelapsepro/a;->e:I

    const/4 p2, 0x0

    .line 30
    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/a;->f:[F

    .line 44
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    .line 45
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/a;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070148

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 47
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/a;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070146

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 48
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 49
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float v0, v0

    const v1, 0x7f060069

    invoke-static {p1, v1}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method private a(Ljava/lang/String;)F
    .locals 1

    const/4 v0, 0x1

    .line 75
    new-array v0, v0, [F

    .line 76
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 p0, 0x0

    .line 77
    aget p0, v0, p0

    return p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 121
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 122
    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, p1, v2, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 123
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v3, v2

    move v2, v5

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [F

    .line 127
    iget-object v4, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v4, p1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const-string v4, "EqualWidthNumberTextView"

    const-string v5, "log, ----------------"

    .line 128
    invoke-static {v4, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "log, text : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v1

    .line 131
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "log, char: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, ", width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, p1, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log, rect.width length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log, measureText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log, textWidth : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log, textHeight : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log, rect : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "log, fontSpacing : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "log, fontMetrics : top: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", ascent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", leading: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->leading:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", descent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", bottom: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Typeface;IF)V
    .locals 2

    .line 59
    invoke-virtual {p0, p2, p3}, Lcom/oplus/camera/timelapsepro/a;->setTextSize(IF)V

    .line 60
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 61
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/a;->getTextSize()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p1, 0x1

    .line 63
    new-array p1, p1, [F

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    const/16 v0, 0xa

    if-ge p3, v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 66
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a;->b:[I

    aget v1, p1, p2

    float-to-int v1, v1

    aput v1, v0, p3

    .line 68
    iget v0, p0, Lcom/oplus/camera/timelapsepro/a;->c:I

    int-to-float v0, v0

    aget v1, p1, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 69
    aget v0, p1, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/camera/timelapsepro/a;->c:I

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 160
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    move v1, v0

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/a;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    const/16 v4, 0x30

    if-lt v2, v4, :cond_0

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v3, :cond_0

    .line 168
    iget v2, p0, Lcom/oplus/camera/timelapsepro/a;->c:I

    iget-object v5, p0, Lcom/oplus/camera/timelapsepro/a;->b:[I

    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/a;->g:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v4

    aget v5, v5, v6

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    goto :goto_1

    :cond_0
    move v2, v1

    .line 171
    :goto_1
    iget-object v5, p0, Lcom/oplus/camera/timelapsepro/a;->g:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    int-to-float v6, v2

    iget v7, p0, Lcom/oplus/camera/timelapsepro/a;->h:F

    iget-object v8, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDraw, i : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", char: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/a;->g:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, ", x: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", drawX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "EqualWidthNumberTextView"

    invoke-static {v5, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v4, :cond_1

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v3, :cond_1

    .line 176
    iget v2, p0, Lcom/oplus/camera/timelapsepro/a;->c:I

    add-int/2addr v1, v2

    goto :goto_2

    :cond_1
    int-to-float v1, v1

    .line 178
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/a;->f:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 182
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/inverse/InverseTextView;->onSizeChanged(IIII)V

    .line 155
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSizeChanged, w: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", h: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", oldw: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", oldh: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EqualWidthNumberTextView"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTextColor(I)V

    .line 55
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextToDraw(Ljava/lang/String;)V
    .locals 4

    .line 81
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/oplus/camera/timelapsepro/a;->d:I

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/a;->f:[F

    .line 85
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/a;->f:[F

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 87
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "EqualWidthNumberTextView"

    if-ge v0, v1, :cond_1

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTextToDraw, char : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", width: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/a;->f:[F

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 90
    iget v1, p0, Lcom/oplus/camera/timelapsepro/a;->d:I

    iget v2, p0, Lcom/oplus/camera/timelapsepro/a;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oplus/camera/timelapsepro/a;->d:I

    goto :goto_1

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/a;->f:[F

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/camera/timelapsepro/a;->a(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 93
    iget v1, p0, Lcom/oplus/camera/timelapsepro/a;->d:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/a;->f:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/oplus/camera/timelapsepro/a;->d:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/a;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/oplus/camera/timelapsepro/a;->e:I

    .line 101
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v0, v0

    iput v0, p0, Lcom/oplus/camera/timelapsepro/a;->h:F

    goto :goto_2

    .line 103
    :cond_2
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/oplus/camera/timelapsepro/a;->e:I

    .line 104
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/oplus/camera/timelapsepro/a;->h:F

    .line 107
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextToDraw, setWidth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/oplus/camera/timelapsepro/a;->d:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/a;->setWidth(I)V

    .line 110
    iget v0, p0, Lcom/oplus/camera/timelapsepro/a;->e:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/a;->setHeight(I)V

    .line 112
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/a;->b(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/a;->invalidate()V

    return-void
.end method
