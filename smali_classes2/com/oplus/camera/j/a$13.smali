.class Lcom/oplus/camera/j/a$13;
.super Landroidx/viewpager2/widget/ViewPager2$e;
.source "CommonBottomGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;I[I[I)Lcom/oplus/camera/ui/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/COUIPageIndicator;

.field final synthetic b:Lcom/oplus/camera/j/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/j/a;Lcom/coui/appcompat/widget/COUIPageIndicator;)V
    .locals 0

    .line 1072
    iput-object p1, p0, Lcom/oplus/camera/j/a$13;->b:Lcom/oplus/camera/j/a;

    iput-object p2, p0, Lcom/oplus/camera/j/a$13;->a:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$e;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 1088
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$e;->onPageScrollStateChanged(I)V

    .line 1089
    iget-object p0, p0, Lcom/oplus/camera/j/a$13;->a:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->b(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 1075
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$e;->onPageScrolled(IFI)V

    .line 1077
    iget-object p0, p0, Lcom/oplus/camera/j/a$13;->a:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIPageIndicator;->a(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 1082
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$e;->onPageSelected(I)V

    .line 1083
    iget-object p0, p0, Lcom/oplus/camera/j/a$13;->a:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->a(I)V

    return-void
.end method
