.class public Lcom/coui/appcompat/a/f;
.super Ljava/lang/Object;
.source "COUIFABPressFeedbackUtil.java"


# static fields
.field private static final a:Landroid/view/animation/PathInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/a/f;->a:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public static a()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    .line 57
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 59
    sget-object v1, Lcom/coui/appcompat/a/f;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public static a(Landroid/view/View;)Lcom/coui/appcompat/widget/floatingbutton/b;
    .locals 6

    if-eqz p0, :cond_0

    .line 39
    new-instance v0, Lcom/coui/appcompat/widget/floatingbutton/b;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f666666    # 0.9f

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/coui/appcompat/widget/floatingbutton/b;-><init>(FFFF)V

    const-wide/16 v1, 0xc8

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/floatingbutton/b;->setDuration(J)V

    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/b;->setFillAfter(Z)V

    .line 44
    sget-object v1, Lcom/coui/appcompat/a/f;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/b;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 45
    invoke-virtual {v0, p0}, Lcom/coui/appcompat/widget/floatingbutton/b;->a(Landroid/view/View;)V

    return-object v0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given view is empty. Please provide a valid view."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/view/View;F)Lcom/coui/appcompat/widget/floatingbutton/b;
    .locals 5

    if-eqz p0, :cond_0

    .line 79
    new-instance v0, Lcom/coui/appcompat/widget/floatingbutton/b;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-direct {v0, p1, v1, v2, v4}, Lcom/coui/appcompat/widget/floatingbutton/b;-><init>(FFFF)V

    const-wide/16 v1, 0x154

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/floatingbutton/b;->setDuration(J)V

    const/4 p1, 0x1

    .line 83
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/floatingbutton/b;->setFillAfter(Z)V

    .line 84
    sget-object p1, Lcom/coui/appcompat/a/f;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/floatingbutton/b;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 85
    invoke-virtual {v0, p0}, Lcom/coui/appcompat/widget/floatingbutton/b;->a(Landroid/view/View;)V

    return-object v0

    .line 75
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The given view is empty. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
