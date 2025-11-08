.class public Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "InverseColorRelativeLayout.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;->a:Z

    .line 15
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;->a:Z

    .line 20
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;->a:Z

    .line 25
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 29
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/oplus/camera/ui/inverse/e;->registerBackgroundInverse(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public setBackgroundAlwaysTransparent(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;->a:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 34
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-static {p1}, Lcom/oplus/camera/util/c;->a(I)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/oplus/camera/ui/inverse/e;->getBackgroundColor(Landroid/view/View;I)I

    move-result p1

    .line 35
    iget-boolean v0, p0, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;->a:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method
