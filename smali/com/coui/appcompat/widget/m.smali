.class public Lcom/coui/appcompat/widget/m;
.super Landroid/graphics/drawable/Drawable;
.source "COUIRedDotDrawable.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/coui/appcompat/a/g;

.field private d:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(IILandroid/content/Context;Landroid/graphics/RectF;)V
    .locals 6

    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    iput p1, p0, Lcom/coui/appcompat/widget/m;->a:I

    .line 26
    iput p2, p0, Lcom/coui/appcompat/widget/m;->b:I

    .line 27
    iput-object p4, p0, Lcom/coui/appcompat/widget/m;->d:Landroid/graphics/RectF;

    .line 28
    new-instance p1, Lcom/coui/appcompat/a/g;

    sget-object v3, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot:[I

    sget v5, Lcoui/support/appcompat/R$style;->Widget_COUI_COUIHintRedDot_Small:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/a/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V

    iput-object p1, p0, Lcom/coui/appcompat/widget/m;->c:Lcom/coui/appcompat/a/g;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/coui/appcompat/widget/m;->c:Lcom/coui/appcompat/a/g;

    iget v1, p0, Lcom/coui/appcompat/widget/m;->a:I

    iget v2, p0, Lcom/coui/appcompat/widget/m;->b:I

    iget-object p0, p0, Lcom/coui/appcompat/widget/m;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/coui/appcompat/a/g;->a(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
