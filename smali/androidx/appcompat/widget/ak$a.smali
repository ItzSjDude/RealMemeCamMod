.class Landroidx/appcompat/widget/ak$a;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ak;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ak;)V
    .locals 0

    .line 526
    iput-object p1, p0, Landroidx/appcompat/widget/ak$a;->a:Landroidx/appcompat/widget/ak;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 531
    iget-object p0, p0, Landroidx/appcompat/widget/ak$a;->a:Landroidx/appcompat/widget/ak;

    iget-object p0, p0, Landroidx/appcompat/widget/ak;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 536
    iget-object p0, p0, Landroidx/appcompat/widget/ak$a;->a:Landroidx/appcompat/widget/ak;

    iget-object p0, p0, Landroidx/appcompat/widget/ak;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/ak$c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ak$c;->b()Landroidx/appcompat/app/a$c;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 547
    iget-object p2, p0, Landroidx/appcompat/widget/ak$a;->a:Landroidx/appcompat/widget/ak;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ak$a;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a$c;

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroidx/appcompat/widget/ak;->a(Landroidx/appcompat/app/a$c;Z)Landroidx/appcompat/widget/ak$c;

    move-result-object p2

    goto :goto_0

    .line 549
    :cond_0
    move-object p3, p2

    check-cast p3, Landroidx/appcompat/widget/ak$c;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ak$a;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a$c;

    invoke-virtual {p3, p0}, Landroidx/appcompat/widget/ak$c;->a(Landroidx/appcompat/app/a$c;)V

    :goto_0
    return-object p2
.end method
