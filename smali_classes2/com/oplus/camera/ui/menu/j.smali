.class public Lcom/oplus/camera/ui/menu/j;
.super Landroid/widget/TextView;
.source "SingleTextItemView.java"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/a;


# instance fields
.field private A:Z

.field protected a:Lcom/oplus/camera/ui/CameraUIListener;

.field private final b:Landroid/graphics/BlurMaskFilter;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/graphics/Bitmap;

.field private w:Landroid/graphics/Canvas;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/ui/CameraUIListener;)V
    .locals 4

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/j;->a:Lcom/oplus/camera/ui/CameraUIListener;

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/j;->c:Z

    .line 49
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/j;->d:Z

    .line 50
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/j;->e:Z

    .line 51
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/j;->f:Z

    const/4 v2, 0x1

    .line 52
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/j;->g:Z

    .line 53
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/j;->h:Z

    .line 54
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/j;->i:Z

    .line 55
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/j;->j:Z

    .line 56
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/j;->k:Z

    .line 58
    iput v1, p0, Lcom/oplus/camera/ui/menu/j;->l:I

    .line 59
    iput v1, p0, Lcom/oplus/camera/ui/menu/j;->m:I

    .line 60
    iput v1, p0, Lcom/oplus/camera/ui/menu/j;->n:I

    .line 61
    iput v1, p0, Lcom/oplus/camera/ui/menu/j;->o:I

    .line 62
    iput v1, p0, Lcom/oplus/camera/ui/menu/j;->p:I

    .line 63
    iput v1, p0, Lcom/oplus/camera/ui/menu/j;->q:I

    .line 64
    iput v1, p0, Lcom/oplus/camera/ui/menu/j;->r:I

    const/16 v3, 0x11

    .line 65
    iput v3, p0, Lcom/oplus/camera/ui/menu/j;->s:I

    .line 66
    iput v1, p0, Lcom/oplus/camera/ui/menu/j;->t:I

    .line 68
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/j;->u:Landroid/graphics/drawable/Drawable;

    .line 69
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/j;->v:Landroid/graphics/Bitmap;

    .line 70
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/j;->w:Landroid/graphics/Canvas;

    .line 75
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/j;->z:Landroid/content/Context;

    .line 76
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/j;->A:Z

    .line 81
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/j;->z:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/j;->a:Lcom/oplus/camera/ui/CameraUIListener;

    .line 83
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/j;->z:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07075a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/j;->n:I

    .line 85
    invoke-static {}, Lcom/oplus/camera/util/Util;->ai()Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/j;->z:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a50

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/j;->t:I

    .line 89
    :cond_0
    new-instance p1, Landroid/graphics/BlurMaskFilter;

    const/high16 p2, 0x40800000    # 4.0f

    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p1, p2, v0}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/j;->b:Landroid/graphics/BlurMaskFilter;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    const-string p0, ""

    .line 348
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, " "

    .line 352
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 354
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 355
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\uff08"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\uff09"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/j;->a:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 99
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 100
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 101
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0

    .line 106
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getNoRotateWidth()I
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/j;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/j;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/j;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/j;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/j;->getText()Ljava/lang/CharSequence;

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

.method public getShadowDy()F
    .locals 1

    .line 333
    invoke-super {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v0

    iget p0, p0, Lcom/oplus/camera/ui/menu/j;->t:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public getViewHeight()I
    .locals 2

    .line 143
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->m:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/j;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/j;->e:Z

    if-eqz v0, :cond_b

    .line 144
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->q:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->r:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/j;->h:Z

    if-eqz v0, :cond_2

    .line 145
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/menu/j;->measure(II)V

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/j;->h:Z

    .line 149
    :cond_2
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/j;->e:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->p:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_4

    .line 150
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->q:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/j;->r:I

    if-le v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/oplus/camera/ui/menu/j;->m:I

    goto :goto_2

    .line 152
    :cond_4
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->p:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_5

    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->r:I

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->q:I

    :goto_1
    iput v0, p0, Lcom/oplus/camera/ui/menu/j;->m:I

    .line 155
    :goto_2
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->p:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_7

    .line 168
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->m:I

    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result v1

    if-le v0, v1, :cond_6

    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->m:I

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/oplus/camera/ui/menu/j;->m:I

    goto :goto_6

    .line 159
    :cond_7
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/j;->e:Z

    if-eqz v0, :cond_9

    .line 160
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->m:I

    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result v1

    if-le v0, v1, :cond_8

    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->m:I

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result v0

    :goto_4
    iput v0, p0, Lcom/oplus/camera/ui/menu/j;->m:I

    goto :goto_6

    .line 162
    :cond_9
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->m:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/j;->n:I

    if-le v0, v1, :cond_a

    goto :goto_5

    :cond_a
    move v0, v1

    :goto_5
    iput v0, p0, Lcom/oplus/camera/ui/menu/j;->m:I

    .line 174
    :cond_b
    :goto_6
    iget p0, p0, Lcom/oplus/camera/ui/menu/j;->m:I

    return p0
.end method

.method public getViewWidth()I
    .locals 2

    .line 110
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->l:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/j;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/j;->e:Z

    if-eqz v0, :cond_a

    .line 111
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->q:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->r:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/j;->h:Z

    if-eqz v0, :cond_2

    .line 112
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/menu/j;->measure(II)V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/j;->h:Z

    .line 116
    :cond_2
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/j;->e:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->p:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_4

    .line 117
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->q:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/j;->r:I

    if-le v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/oplus/camera/ui/menu/j;->l:I

    goto :goto_2

    .line 118
    :cond_4
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/j;->i:Z

    if-eqz v0, :cond_5

    .line 119
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/j;->getNoRotateWidth()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/j;->l:I

    goto :goto_2

    .line 121
    :cond_5
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->p:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_6

    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->q:I

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->r:I

    :goto_1
    iput v0, p0, Lcom/oplus/camera/ui/menu/j;->l:I

    .line 124
    :goto_2
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->p:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_8

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_8

    .line 133
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->l:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/j;->n:I

    if-le v0, v1, :cond_7

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_3
    iput v0, p0, Lcom/oplus/camera/ui/menu/j;->l:I

    goto :goto_5

    .line 128
    :cond_8
    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->l:I

    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result v1

    if-le v0, v1, :cond_9

    iget v0, p0, Lcom/oplus/camera/ui/menu/j;->l:I

    goto :goto_4

    :cond_9
    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result v0

    :goto_4
    iput v0, p0, Lcom/oplus/camera/ui/menu/j;->l:I

    .line 139
    :cond_a
    :goto_5
    iget p0, p0, Lcom/oplus/camera/ui/menu/j;->l:I

    return p0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 371
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 373
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/j;->k:Z

    if-eqz p0, :cond_0

    .line 374
    new-array p0, v0, [I

    const/4 v0, 0x0

    const v1, 0x7f040583

    aput v1, p0, v0

    invoke-static {p1, p0}, Lcom/oplus/camera/ui/menu/j;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 315
    :try_start_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/j;->e:Z

    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 317
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/j;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/j;->q:I

    .line 318
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/j;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/j;->r:I

    goto :goto_2

    .line 320
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->onMeasure(II)V

    .line 321
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/j;->q:I

    .line 322
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/j;->r:I

    .line 323
    iget p1, p0, Lcom/oplus/camera/ui/menu/j;->p:I

    rem-int/lit16 p1, p1, 0xb4

    if-nez p1, :cond_1

    iget p1, p0, Lcom/oplus/camera/ui/menu/j;->q:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/oplus/camera/ui/menu/j;->r:I

    .line 324
    :goto_0
    iget p2, p0, Lcom/oplus/camera/ui/menu/j;->p:I

    rem-int/lit16 p2, p2, 0xb4

    if-nez p2, :cond_2

    iget p2, p0, Lcom/oplus/camera/ui/menu/j;->r:I

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/oplus/camera/ui/menu/j;->q:I

    .line 323
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/j;->setMeasuredDimension(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 190
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 307
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 309
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/j;->setClickable(Z)V

    return-void
.end method

.method public setInverseColor(Z)V
    .locals 0

    .line 382
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/j;->k:Z

    .line 383
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/j;->refreshDrawableState()V

    .line 384
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/j;->A:Z

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/j;->setShadow(Z)V

    .line 385
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/j;->invalidate()V

    return-void
.end method

.method public setItemText(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 251
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/j;->setItemType(Z)V

    .line 252
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/j;->e:Z

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/j;->setVerticalDraw(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/j;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 254
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/j;->z:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->l(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/j;->setTypeface(Landroid/graphics/Typeface;)V

    .line 256
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/j;->c:Z

    if-eqz v1, :cond_0

    .line 257
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/j;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/j;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :goto_0
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/j;->d:Z

    if-eqz v1, :cond_1

    .line 263
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/j;->setOriginalText(Ljava/lang/String;)V

    .line 266
    :cond_1
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/j;->g:Z

    return-void
.end method

.method public setItemType(Z)V
    .locals 0

    .line 276
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/j;->j:Z

    return-void
.end method

.method public setLayoutGravity(I)V
    .locals 0

    .line 302
    iput p1, p0, Lcom/oplus/camera/ui/menu/j;->s:I

    return-void
.end method

.method public setOriginalText(Ljava/lang/String;)V
    .locals 2

    .line 241
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/j;->x:Ljava/lang/String;

    const/4 p1, 0x1

    .line 242
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/j;->i:Z

    const/4 p1, 0x0

    .line 243
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/j;->y:Ljava/lang/String;

    .line 245
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/j;->x:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 246
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/j;->y:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setShadow(Z)V
    .locals 3

    .line 338
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/j;->A:Z

    .line 340
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/j;->A:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/j;->k:Z

    if-nez p1, :cond_0

    const/high16 p1, 0x40800000    # 4.0f

    .line 341
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/j;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/oplus/camera/ui/menu/j;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/j;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/oplus/camera/ui/menu/j;->setShadowLayer(FFFI)V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 196
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 p1, 0x1

    .line 197
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/j;->h:Z

    return-void
.end method

.method public setVerticalDraw(Z)V
    .locals 1

    .line 232
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/j;->e:Z

    .line 234
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/j;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 235
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/j;->setIncludeFontPadding(Z)V

    const/4 p1, 0x0

    const v0, 0x3f666666    # 0.9f

    .line 236
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/j;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method
