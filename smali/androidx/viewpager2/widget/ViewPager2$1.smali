.class Landroidx/viewpager2/widget/ViewPager2$1;
.super Landroidx/viewpager2/widget/ViewPager2$c;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 133
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$1;->a:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$c;-><init>(Landroidx/viewpager2/widget/ViewPager2$1;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 136
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$1;->a:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Z

    .line 137
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/viewpager2/widget/e;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/e;->a()V

    return-void
.end method
