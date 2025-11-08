.class Lcom/coui/appcompat/dialog/panel/b$10;
.super Ljava/lang/Object;
.source "COUIBottomSheetDialog.java"

# interfaces
.implements Lcom/a/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/b;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/coui/appcompat/dialog/panel/b;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/b;I)V
    .locals 0

    .line 1459
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$10;->b:Lcom/coui/appcompat/dialog/panel/b;

    iput p2, p0, Lcom/coui/appcompat/dialog/panel/b$10;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/f;)V
    .locals 4

    .line 1462
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$10;->b:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->O(Lcom/coui/appcompat/dialog/panel/b;)Lcom/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$10;->b:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1465
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/f;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/a/a/f;->e()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 1466
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$10;->b:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->O(Lcom/coui/appcompat/dialog/panel/b;)Lcom/a/a/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/a/a/f;->j()Lcom/a/a/f;

    goto :goto_0

    .line 1468
    :cond_1
    invoke-virtual {p1}, Lcom/a/a/f;->c()D

    move-result-wide v0

    double-to-int p1, v0

    .line 1469
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$10;->b:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/b$10;->b:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/b;->S(Lcom/coui/appcompat/dialog/panel/b;)I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->offsetTopAndBottom(I)V

    .line 1470
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$10;->b:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0, p1}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;I)I

    .line 1471
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$10;->b:Lcom/coui/appcompat/dialog/panel/b;

    iget p0, p0, Lcom/coui/appcompat/dialog/panel/b$10;->a:I

    sub-int/2addr p0, p1

    invoke-static {v0, p0}, Lcom/coui/appcompat/dialog/panel/b;->e(Lcom/coui/appcompat/dialog/panel/b;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/a/a/f;)V
    .locals 1

    .line 1477
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$10;->b:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->d(Lcom/coui/appcompat/dialog/panel/b;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$10;->b:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->Q(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1478
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$10;->b:Lcom/coui/appcompat/dialog/panel/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/dialog/panel/b;->d(Lcom/coui/appcompat/dialog/panel/b;I)I

    .line 1479
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$10;->b:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1, v0}, Lcom/coui/appcompat/dialog/panel/b;->e(Lcom/coui/appcompat/dialog/panel/b;I)V

    .line 1481
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$10;->b:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->d(Lcom/coui/appcompat/dialog/panel/b;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    .line 1483
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$10;->b:Lcom/coui/appcompat/dialog/panel/b;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/b;->d(Z)V

    return-void
.end method

.method public c(Lcom/a/a/f;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/a/a/f;)V
    .locals 0

    return-void
.end method
