.class public Lcom/oplus/camera/ui/inverse/InverseBeautifyTextView;
.super Lcom/oplus/camera/ui/inverse/InverseTextView;
.source "InverseBeautifyTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/inverse/InverseTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/inverse/InverseTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 27
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseBeautifyTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 28
    invoke-super {p0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 33
    invoke-super {p0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->onDetachedFromWindow()V

    .line 34
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseBeautifyTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/inverse/e;->unRegisterInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    return-void
.end method

.method public setInverseColor(Z)V
    .locals 4

    .line 39
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseBeautifyTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oplus/camera/util/Util;->a:I

    const v2, 0x7f0706a5

    invoke-static {v0, v2, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseBeautifyTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    const v2, 0x7f060065

    goto :goto_0

    :cond_0
    const v2, 0x7f060069

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/oplus/camera/ui/inverse/InverseBeautifyTextView;->setShadowLayer(FFFI)V

    .line 43
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    return-void
.end method
