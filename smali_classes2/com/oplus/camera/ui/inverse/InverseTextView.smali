.class public Lcom/oplus/camera/ui/inverse/InverseTextView;
.super Landroid/widget/TextView;
.source "InverseTextView.java"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/a;


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Lcom/oplus/camera/ui/inverse/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->a:Z

    .line 14
    iput v0, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->b:I

    .line 15
    iput-boolean v0, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->c:Z

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->d:Lcom/oplus/camera/ui/inverse/d;

    .line 20
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 13
    iput-boolean p2, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->a:Z

    .line 14
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->b:I

    .line 15
    iput-boolean p2, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->c:Z

    const/4 p2, 0x0

    .line 16
    iput-object p2, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->d:Lcom/oplus/camera/ui/inverse/d;

    .line 25
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 13
    iput-boolean p2, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->a:Z

    .line 14
    iput p2, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->b:I

    .line 15
    iput-boolean p2, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->c:Z

    const/4 p2, 0x0

    .line 16
    iput-object p2, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->d:Lcom/oplus/camera/ui/inverse/d;

    .line 30
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v0, p1, p0}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    return-void
.end method

.method private b()Z
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->d:Lcom/oplus/camera/ui/inverse/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oplus/camera/ui/inverse/d;->inverseAble()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 51
    :goto_1
    iget-boolean v3, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->c:Z

    if-eqz v3, :cond_2

    return v0

    :cond_2
    if-eqz v0, :cond_3

    .line 54
    iget p0, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->b:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->a:Z

    return p0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 39
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 41
    iget-boolean v1, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->a:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 42
    new-array p0, v0, [I

    const/4 v0, 0x0

    const v1, 0x7f040583

    aput v1, p0, v0

    invoke-static {p1, p0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public setHorizontalInverseAble(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->c:Z

    return-void
.end method

.method public setInverseColor(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->a:Z

    .line 63
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->refreshDrawableState()V

    return-void
.end method

.method public setInverseListener(Lcom/oplus/camera/ui/inverse/d;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->d:Lcom/oplus/camera/ui/inverse/d;

    .line 82
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->postInvalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseTextView;->b:I

    .line 72
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->refreshDrawableState()V

    return-void
.end method
