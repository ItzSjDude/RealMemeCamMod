.class Landroidx/viewpager2/widget/ViewPager2$f$1;
.super Ljava/lang/Object;
.source "ViewPager2.java"

# interfaces
.implements Landroidx/core/h/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/widget/ViewPager2$f;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2$f;)V
    .locals 0

    .line 1339
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$f$1;->a:Landroidx/viewpager2/widget/ViewPager2$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Landroidx/core/h/a/g$a;)Z
    .locals 0

    .line 1343
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 1344
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$f$1;->a:Landroidx/viewpager2/widget/ViewPager2$f;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$f;->c(I)V

    return p2
.end method
