.class Lcom/coui/appcompat/dialog/panel/b$9;
.super Ljava/lang/Object;
.source "COUIBottomSheetDialog.java"

# interfaces
.implements Lcom/coui/appcompat/dialog/panel/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/b;->v()Lcom/coui/appcompat/dialog/panel/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/dialog/panel/b;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/b;)V
    .locals 0

    .line 1423
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 4

    .line 1426
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p2}, Lcom/coui/appcompat/dialog/panel/b;->O(Lcom/coui/appcompat/dialog/panel/b;)Lcom/a/a/f;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p2}, Lcom/coui/appcompat/dialog/panel/b;->O(Lcom/coui/appcompat/dialog/panel/b;)Lcom/a/a/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/a/a/f;->e()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-eqz p2, :cond_0

    .line 1427
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->O(Lcom/coui/appcompat/dialog/panel/b;)Lcom/a/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/a/a/f;->j()Lcom/a/a/f;

    .line 1428
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->P(Lcom/coui/appcompat/dialog/panel/b;)I

    move-result p0

    return p0

    .line 1430
    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    .line 1431
    invoke-static {p2}, Lcom/coui/appcompat/dialog/panel/b;->Q(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    const v0, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr p1, v0

    sub-float/2addr p2, p1

    float-to-int p1, p2

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->R(Lcom/coui/appcompat/dialog/panel/b;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1430
    invoke-static {p1, p2, v0}, Landroidx/core/c/a;->a(III)I

    move-result p1

    .line 1432
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p2}, Lcom/coui/appcompat/dialog/panel/b;->P(Lcom/coui/appcompat/dialog/panel/b;)I

    move-result p2

    if-eq p2, p1, :cond_1

    .line 1433
    iget-object p2, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p2, p1}, Lcom/coui/appcompat/dialog/panel/b;->d(Lcom/coui/appcompat/dialog/panel/b;I)I

    .line 1434
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->P(Lcom/coui/appcompat/dialog/panel/b;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/coui/appcompat/dialog/panel/b;->e(Lcom/coui/appcompat/dialog/panel/b;I)V

    .line 1436
    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->P(Lcom/coui/appcompat/dialog/panel/b;)I

    move-result p0

    return p0
.end method

.method public a()V
    .locals 1

    .line 1449
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coui/appcompat/dialog/panel/b;->e(Lcom/coui/appcompat/dialog/panel/b;I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 1441
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/b;->d(Z)V

    .line 1442
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->P(Lcom/coui/appcompat/dialog/panel/b;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 1443
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    sub-int/2addr v0, p1

    .line 1444
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$9;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->P(Lcom/coui/appcompat/dialog/panel/b;)I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p0, p1}, Lcom/coui/appcompat/dialog/panel/b;->f(Lcom/coui/appcompat/dialog/panel/b;I)V

    return-void
.end method
