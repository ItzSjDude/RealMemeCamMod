.class public Lcom/oplus/camera/ui/preview/ah;
.super Lcom/oplus/camera/ui/RotableTextView;
.source "ZoomRotableTextView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/preview/ah;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/preview/ah;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/camera/ui/preview/ah;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/RotableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/oplus/camera/ui/preview/ah;->a:I

    .line 15
    iput p1, p0, Lcom/oplus/camera/ui/preview/ah;->b:I

    .line 16
    iput p1, p0, Lcom/oplus/camera/ui/preview/ah;->c:I

    .line 17
    iput p1, p0, Lcom/oplus/camera/ui/preview/ah;->d:I

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ah;->e:Landroid/animation/Animator;

    .line 35
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ah;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/ah;->b:I

    .line 36
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ah;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060096

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/ah;->a:I

    .line 37
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ah;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060072

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/ah;->d:I

    .line 38
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ah;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0600a2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/ah;->c:I

    .line 40
    iget p1, p0, Lcom/oplus/camera/ui/preview/ah;->c:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ah;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ah;->e:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ah;->e:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/ah;->e:Landroid/animation/Animator;

    .line 56
    invoke-super {p0}, Lcom/oplus/camera/ui/RotableTextView;->onDetachedFromWindow()V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 45
    iget v0, p0, Lcom/oplus/camera/ui/preview/ah;->a:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 46
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/RotableTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ah;->isSelected()Z

    move-result v0

    .line 62
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/RotableTextView;->setSelected(Z)V

    if-eq v0, p1, :cond_3

    .line 65
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ah;->e:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ah;->e:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    .line 69
    iget v0, p0, Lcom/oplus/camera/ui/preview/ah;->d:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/preview/ah;->c:I

    :goto_0
    if-eqz p1, :cond_2

    .line 70
    iget p1, p0, Lcom/oplus/camera/ui/preview/ah;->b:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/oplus/camera/ui/preview/ah;->a:I

    .line 71
    :goto_1
    invoke-static {p0, v0, p1}, Lcom/oplus/camera/util/b;->a(Landroid/widget/TextView;II)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ah;->e:Landroid/animation/Animator;

    .line 73
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ah;->e:Landroid/animation/Animator;

    if-eqz p0, :cond_3

    .line 74
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_3
    return-void
.end method
