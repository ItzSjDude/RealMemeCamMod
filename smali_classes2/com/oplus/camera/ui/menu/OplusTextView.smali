.class public Lcom/oplus/camera/ui/menu/OplusTextView;
.super Lcom/oplus/camera/ui/inverse/InverseTextView;
.source "OplusTextView.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/OplusTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/menu/OplusTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/inverse/InverseTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 27
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->a:Z

    .line 28
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->b:Z

    .line 29
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->c:Z

    .line 30
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->d:Z

    .line 35
    iput p2, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->g:I

    .line 36
    iput p2, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->h:I

    .line 37
    iput p2, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->i:I

    .line 49
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->l(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    .line 89
    iget p2, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->i:I

    if-eq p2, p1, :cond_4

    .line 90
    iput p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->i:I

    .line 91
    iget p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->i:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setRotation(F)V

    .line 93
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->b:Z

    if-eqz p1, :cond_4

    .line 94
    iget p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->i:I

    rem-int/lit16 p1, p1, 0xb4

    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 95
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->c:Z

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setEms(I)V

    goto :goto_1

    .line 101
    :cond_2
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->c:Z

    if-eqz p1, :cond_3

    .line 102
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_3
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/OplusTextView;->setEms(I)V

    .line 108
    :goto_1
    iget p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->i:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setRotation(F)V

    .line 109
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->a:Z

    :cond_4
    return-void
.end method

.method public getNoRotateHeight()I
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 154
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getNoRotateWidth()I
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getViewHeight()I
    .locals 2

    .line 130
    iget v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->h:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->a:Z

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/menu/OplusTextView;->measure(II)V

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->a:Z

    .line 135
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->b:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->i:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_3

    .line 136
    iget v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->g:I

    iget p0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->h:I

    if-le v0, p0, :cond_2

    move p0, v0

    :cond_2
    return p0

    .line 138
    :cond_3
    iget v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->i:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_4

    iget p0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->h:I

    goto :goto_0

    :cond_4
    iget p0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->g:I

    :goto_0
    return p0
.end method

.method public getViewWidth()I
    .locals 2

    .line 115
    iget v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->h:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->a:Z

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/menu/OplusTextView;->measure(II)V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->a:Z

    .line 120
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->b:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->i:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_3

    .line 121
    iget v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->g:I

    iget p0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->h:I

    if-le v0, p0, :cond_2

    move p0, v0

    :cond_2
    return p0

    .line 122
    :cond_3
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->c:Z

    if-eqz v0, :cond_4

    .line 123
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getNoRotateWidth()I

    move-result p0

    return p0

    .line 125
    :cond_4
    iget v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->i:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_5

    iget p0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->g:I

    goto :goto_0

    :cond_5
    iget p0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->h:I

    :goto_0
    return p0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 164
    :try_start_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->b:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->onMeasure(II)V

    .line 166
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->g:I

    .line 167
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->h:I

    goto :goto_0

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->d:Z

    if-eqz v0, :cond_1

    .line 169
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->onMeasure(II)V

    .line 170
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->g:I

    .line 171
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->h:I

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->onMeasure(II)V

    .line 174
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->g:I

    .line 175
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->h:I

    .line 176
    iget p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->g:I

    iget p2, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->h:I

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/OplusTextView;->setMeasuredDimension(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 78
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setMatchParent(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->d:Z

    return-void
.end method

.method public setOriginalText(Ljava/lang/String;)V
    .locals 2

    .line 66
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->e:Ljava/lang/String;

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->c:Z

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->f:Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 71
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->a:Z

    return-void
.end method

.method public setVerticalDraw(Z)V
    .locals 1

    .line 53
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->b:Z

    .line 55
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/OplusTextView;->b:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setIncludeFontPadding(Z)V

    const/4 p1, 0x0

    const v0, 0x3f666666    # 0.9f

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method
