.class Lcom/oplus/camera/ui/control/i$a;
.super Landroid/os/Handler;
.source "TimerSnapShotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/control/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/i;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/control/i;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/oplus/camera/ui/control/i$a;->b:Z

    .line 88
    iput p1, p0, Lcom/oplus/camera/ui/control/i$a;->c:I

    .line 89
    iput p1, p0, Lcom/oplus/camera/ui/control/i$a;->d:I

    .line 90
    iput p1, p0, Lcom/oplus/camera/ui/control/i$a;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/control/i;Lcom/oplus/camera/ui/control/i$1;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/i$a;-><init>(Lcom/oplus/camera/ui/control/i;)V

    return-void
.end method

.method private a(I)Landroid/graphics/PointF;
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotableTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    move p0, v2

    goto :goto_1

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/i;->g(Lcom/oplus/camera/ui/control/i;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/i;->h(Lcom/oplus/camera/ui/control/i;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 226
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/oplus/camera/ui/control/i$a;->e:I

    if-eqz v1, :cond_2

    .line 227
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/i;->i(Lcom/oplus/camera/ui/control/i;)I

    move-result p1

    .line 230
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/i;->f(Lcom/oplus/camera/ui/control/i;)F

    move-result v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/i;->i(Lcom/oplus/camera/ui/control/i;)I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v0, v1

    int-to-float p1, p1

    .line 231
    iget-object p0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/i;->f(Lcom/oplus/camera/ui/control/i;)F

    move-result p0

    div-float/2addr p0, v3

    add-float/2addr p0, p1

    goto :goto_1

    .line 219
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float v2, p0, v3

    .line 220
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    .line 238
    :goto_1
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method private a(II)V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 166
    iget v0, p0, Lcom/oplus/camera/ui/control/i$a;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/i$a;->b(I)V

    .line 168
    iput p1, p0, Lcom/oplus/camera/ui/control/i$a;->d:I

    goto :goto_1

    :cond_0
    if-eq v0, p1, :cond_3

    .line 170
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/i$a;->b(I)V

    .line 172
    iget v0, p0, Lcom/oplus/camera/ui/control/i$a;->d:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->e(Lcom/oplus/camera/ui/control/i;)F

    move-result v0

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v2}, Lcom/oplus/camera/ui/control/i;->f(Lcom/oplus/camera/ui/control/i;)F

    move-result v2

    div-float/2addr v0, v2

    .line 174
    iget-object v2, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v2}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object v2

    iget v3, p0, Lcom/oplus/camera/ui/control/i$a;->d:I

    invoke-direct {p0, v2, v0, v3, p1}, Lcom/oplus/camera/ui/control/i$a;->a(Landroid/view/View;FII)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 176
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->f(Lcom/oplus/camera/ui/control/i;)F

    move-result v0

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v2}, Lcom/oplus/camera/ui/control/i;->e(Lcom/oplus/camera/ui/control/i;)F

    move-result v2

    div-float/2addr v0, v2

    .line 177
    iget-object v2, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v2}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object v2

    iget v3, p0, Lcom/oplus/camera/ui/control/i$a;->d:I

    invoke-direct {p0, v2, v0, v3, p1}, Lcom/oplus/camera/ui/control/i$a;->a(Landroid/view/View;FII)V

    .line 180
    :cond_2
    :goto_0
    iput p1, p0, Lcom/oplus/camera/ui/control/i$a;->d:I

    .line 183
    :cond_3
    :goto_1
    iget p1, p0, Lcom/oplus/camera/ui/control/i$a;->e:I

    if-eq p1, p2, :cond_4

    .line 184
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lcom/oplus/camera/ui/RotableTextView;->a(IZ)V

    .line 185
    iput p2, p0, Lcom/oplus/camera/ui/control/i$a;->e:I

    :cond_4
    return-void
.end method

.method private a(Landroid/view/View;FII)V
    .locals 0

    .line 191
    invoke-direct {p0, p3}, Lcom/oplus/camera/ui/control/i$a;->a(I)Landroid/graphics/PointF;

    move-result-object p3

    .line 192
    invoke-direct {p0, p4}, Lcom/oplus/camera/ui/control/i$a;->a(I)Landroid/graphics/PointF;

    move-result-object p4

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 194
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 196
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p0, p0, Lcom/oplus/camera/ui/control/i$a;->e:I

    if-eqz p0, :cond_1

    const/16 p2, 0x10e

    if-ne p2, p0, :cond_0

    .line 198
    iget p0, p4, Landroid/graphics/PointF;->y:F

    iget p2, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 199
    iget p0, p3, Landroid/graphics/PointF;->x:F

    iget p2, p4, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 201
    :cond_0
    iget p0, p3, Landroid/graphics/PointF;->y:F

    iget p2, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 202
    iget p0, p4, Landroid/graphics/PointF;->x:F

    iget p2, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 205
    :cond_1
    iget p0, p3, Landroid/graphics/PointF;->y:F

    iget p2, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 206
    iget p0, p3, Landroid/graphics/PointF;->x:F

    iget p2, p4, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 209
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private b(I)V
    .locals 6

    .line 242
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 253
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    const/16 v1, 0xb

    const/16 v4, 0xa

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/oplus/camera/ui/control/i$a;->e:I

    if-eqz p1, :cond_2

    const/16 v5, 0x10e

    if-ne v5, p1, :cond_1

    const/16 p1, 0xc

    .line 255
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 256
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 257
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/i;->i(Lcom/oplus/camera/ui/control/i;)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 258
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/i;->i(Lcom/oplus/camera/ui/control/i;)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x5a

    if-ne v1, p1, :cond_3

    .line 260
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0x9

    .line 261
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 262
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/i;->i(Lcom/oplus/camera/ui/control/i;)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 263
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/i;->i(Lcom/oplus/camera/ui/control/i;)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 267
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 268
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/i;->i(Lcom/oplus/camera/ui/control/i;)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 270
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/i;->g(Lcom/oplus/camera/ui/control/i;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-nez p1, :cond_3

    .line 271
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/i;->h(Lcom/oplus/camera/ui/control/i;)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 275
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/i;->f(Lcom/oplus/camera/ui/control/i;)F

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/oplus/camera/ui/RotableTextView;->setTextSize(IF)V

    .line 276
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    sget-object v1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v3, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v3}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/RotableTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 277
    iget-object v1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/RotableTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060467

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 276
    :cond_4
    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/RotableTextView;->setTextColor(I)V

    goto :goto_1

    :cond_5
    const/16 p1, 0xd

    .line 247
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 248
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/i;->e(Lcom/oplus/camera/ui/control/i;)F

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/oplus/camera/ui/RotableTextView;->setTextSize(IF)V

    .line 249
    iget-object p1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/RotableTextView;->setTextColor(I)V

    .line 284
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/RotableTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b()Z
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->b(Lcom/oplus/camera/ui/control/i;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->c(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/control/i$b;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;Z)Z

    .line 155
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->c(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/control/i$b;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/i;->d(Lcom/oplus/camera/ui/control/i;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/control/i$b;->a(Z)V

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private c()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->k(Lcom/oplus/camera/ui/control/i;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/i$a;->d()V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->k(Lcom/oplus/camera/ui/control/i;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 324
    iget-object p0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/i;->k(Lcom/oplus/camera/ui/control/i;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private c(I)V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->b(Lcom/oplus/camera/ui/control/i;)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 291
    iget v1, p0, Lcom/oplus/camera/ui/control/i$a;->c:I

    if-eq v0, v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotableTextView;->setAlpha(F)V

    .line 293
    iget-object v1, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object v1

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->l(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iput v0, p0, Lcom/oplus/camera/ui/control/i$a;->c:I

    .line 295
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/i$a;->c()V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;I)I

    .line 300
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->c(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/control/i$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/control/i$b;->a()V

    .line 304
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->j(Lcom/oplus/camera/ui/control/i;)I

    move-result v0

    const/16 v1, 0x3e8

    const/16 v2, 0xbb8

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->b(Lcom/oplus/camera/ui/control/i;)I

    move-result v0

    if-gt v0, v2, :cond_2

    const/16 v0, 0xfa

    .line 307
    iget-object v2, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v2}, Lcom/oplus/camera/ui/control/i;->b(Lcom/oplus/camera/ui/control/i;)I

    move-result v2

    if-gt v2, v1, :cond_1

    const/16 v1, 0x7d

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 314
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/i$a;->removeMessages(I)V

    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/control/i$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/camera/ui/control/i$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private d()V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 329
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->k(Lcom/oplus/camera/ui/control/i;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/ui/control/i$a$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/control/i$a$1;-><init>(Lcom/oplus/camera/ui/control/i$a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/oplus/camera/ui/control/i$a;->b:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimerSnapShotManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 122
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 131
    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/oplus/camera/ui/control/i$a;->a(II)V

    .line 133
    iget-boolean p1, p0, Lcom/oplus/camera/ui/control/i$a;->b:Z

    if-eqz p1, :cond_5

    const-string p1, "handleMessage, MSG_UPDATE_POSITION, mbFirstPreview"

    .line 134
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iput-boolean v3, p0, Lcom/oplus/camera/ui/control/i$a;->b:Z

    const/16 p1, 0x3e8

    .line 137
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/i$a;->c(I)V

    goto :goto_1

    .line 111
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/control/i$a;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 114
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 115
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/control/i$a;->c(I)V

    goto :goto_1

    .line 98
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 100
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/oplus/camera/ui/control/i$a;->a:Lcom/oplus/camera/ui/control/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/i;->a(Lcom/oplus/camera/ui/control/i;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/oplus/camera/ui/RotableTextView;->a(IZ)V

    .line 104
    :cond_4
    iput p1, p0, Lcom/oplus/camera/ui/control/i$a;->e:I

    .line 105
    iput-boolean v2, p0, Lcom/oplus/camera/ui/control/i$a;->b:Z

    .line 106
    iput v3, p0, Lcom/oplus/camera/ui/control/i$a;->c:I

    .line 107
    iput v3, p0, Lcom/oplus/camera/ui/control/i$a;->d:I

    :cond_5
    :goto_1
    return-void
.end method
