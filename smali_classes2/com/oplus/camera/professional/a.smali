.class public Lcom/oplus/camera/professional/a;
.super Landroid/widget/TextView;
.source "AutoTextView.java"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/professional/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 17
    iput-boolean p2, p0, Lcom/oplus/camera/professional/a;->c:Z

    const p2, 0x7f06004d

    .line 26
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/professional/a;->a:I

    .line 27
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/a;->b:I

    .line 28
    invoke-direct {p0}, Lcom/oplus/camera/professional/a;->a()V

    .line 29
    invoke-direct {p0}, Lcom/oplus/camera/professional/a;->b()V

    return-void
.end method

.method private a()V
    .locals 2

    const v0, 0x7f10023b

    .line 33
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/a;->setText(I)V

    .line 35
    invoke-virtual {p0}, Lcom/oplus/camera/professional/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/a;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/oplus/camera/professional/u;->a()Lcom/a/a/f;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/oplus/camera/professional/a$1;

    invoke-direct {v1, p0, v0}, Lcom/oplus/camera/professional/a$1;-><init>(Lcom/oplus/camera/professional/a;Lcom/a/a/f;)V

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public setAuto(Z)V
    .locals 7

    .line 63
    iget-boolean v0, p0, Lcom/oplus/camera/professional/a;->c:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 67
    :cond_0
    iput-boolean p1, p0, Lcom/oplus/camera/professional/a;->c:Z

    if-eqz p1, :cond_1

    .line 69
    iget v0, p0, Lcom/oplus/camera/professional/a;->a:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oplus/camera/professional/a;->b:I

    :goto_0
    move v2, v0

    if-eqz p1, :cond_2

    .line 70
    iget p1, p0, Lcom/oplus/camera/professional/a;->b:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/oplus/camera/professional/a;->a:I

    :goto_1
    move v3, p1

    const/16 v4, 0xfa

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 71
    invoke-static/range {v1 .. v6}, Lcom/oplus/camera/professional/u;->a(Landroid/widget/TextView;IIILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
