.class final Landroidx/widget/COUIDrawerLayout$b;
.super Landroidx/core/h/a;
.source "COUIDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/widget/COUIDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/h/a/d;)V
    .locals 0

    .line 2802
    invoke-super {p0, p1, p2}, Landroidx/core/h/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/h/a/d;)V

    .line 2804
    invoke-static {p1}, Landroidx/widget/COUIDrawerLayout;->l(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 2808
    invoke-virtual {p2, p0}, Landroidx/core/h/a/d;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method
