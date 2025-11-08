.class public Lcom/coui/appcompat/widget/r;
.super Landroid/graphics/drawable/RippleDrawable;
.source "COUITextPressRippleDrawable.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#00000000"

    .line 39
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/coui/appcompat/widget/r;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$color;->text_ripple_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget v1, Lcom/coui/appcompat/widget/r;->a:I

    .line 43
    invoke-static {v0, v1}, Lcom/coui/appcompat/a/r;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/coui/appcompat/widget/r;->a:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v2, Lcom/coui/appcompat/widget/q;

    invoke-direct {v2}, Lcom/coui/appcompat/widget/q;-><init>()V

    .line 42
    invoke-direct {p0, v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/r;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->text_ripple_bg_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcoui/support/appcompat/R$dimen;->text_ripple_bg_padding_vertical:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 54
    invoke-virtual {p0, v0, p1, v0, p1}, Lcom/coui/appcompat/widget/r;->setPadding(IIII)V

    return-void
.end method
