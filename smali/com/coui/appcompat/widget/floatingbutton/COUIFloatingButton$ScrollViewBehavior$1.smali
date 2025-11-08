.class Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior$1;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "COUIFloatingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;Landroid/view/View;)V
    .locals 0

    .line 1674
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior$1;->b:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;

    iput-object p2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior$1;->a:Landroid/view/View;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1677
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1682
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1683
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior$1;->a:Landroid/view/View;

    instance-of p2, p1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    if-eqz p2, :cond_0

    .line 1684
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior$1;->b:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;

    check-cast p1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p0, p1, p3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;->a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)V

    :cond_0
    return-void
.end method
