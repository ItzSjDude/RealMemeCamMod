.class Lcom/oplus/camera/ui/d$13$1$2;
.super Landroidx/viewpager2/widget/ViewPager2$e;
.source "CameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d$13$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d$13$1;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d$13$1;)V
    .locals 0

    .line 2219
    iput-object p1, p0, Lcom/oplus/camera/ui/d$13$1$2;->a:Lcom/oplus/camera/ui/d$13$1;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$e;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 2222
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$e;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 2233
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$e;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 2227
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13$1$2;->a:Lcom/oplus/camera/ui/d$13$1;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13$1;->a:Lcom/oplus/camera/ui/d$13;

    iget-object v0, v0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->b(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/j;->a(I)V

    .line 2228
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$e;->onPageSelected(I)V

    return-void
.end method
