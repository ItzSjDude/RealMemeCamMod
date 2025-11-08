.class Lcom/oplus/camera/j/a$10;
.super Landroidx/viewpager2/widget/ViewPager2$e;
.source "CommonBottomGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/j/a;->n(Landroid/app/Activity;)Lcom/oplus/camera/ui/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/j/b;

.field final synthetic b:Lcom/oplus/camera/j/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/j/a;Lcom/oplus/camera/j/b;)V
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/oplus/camera/j/a$10;->b:Lcom/oplus/camera/j/a;

    iput-object p2, p0, Lcom/oplus/camera/j/a$10;->a:Lcom/oplus/camera/j/b;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$e;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 944
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$e;->onPageScrollStateChanged(I)V

    .line 945
    iget-object p0, p0, Lcom/oplus/camera/j/a$10;->b:Lcom/oplus/camera/j/a;

    invoke-static {p0}, Lcom/oplus/camera/j/a;->n(Lcom/oplus/camera/j/a;)Lcom/coui/appcompat/widget/COUIPageIndicator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->b(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 906
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$e;->onPageScrolled(IFI)V

    .line 908
    iget-object p0, p0, Lcom/oplus/camera/j/a$10;->b:Lcom/oplus/camera/j/a;

    invoke-static {p0}, Lcom/oplus/camera/j/a;->n(Lcom/oplus/camera/j/a;)Lcom/coui/appcompat/widget/COUIPageIndicator;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIPageIndicator;->a(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 913
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$e;->onPageSelected(I)V

    .line 915
    iget-object v0, p0, Lcom/oplus/camera/j/a$10;->b:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->j(Lcom/oplus/camera/j/a;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/oplus/camera/j/a;->a(Lcom/oplus/camera/j/a;Landroidx/viewpager2/widget/ViewPager2;I)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/j/a;->a(Lcom/oplus/camera/j/a;Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    .line 917
    iget-object v0, p0, Lcom/oplus/camera/j/a$10;->b:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->m(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/oplus/camera/j/a$10;->b:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->m(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;->c()V

    .line 919
    iget-object v0, p0, Lcom/oplus/camera/j/a$10;->b:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->m(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;->a()V

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/j/a$10;->b:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->j(Lcom/oplus/camera/j/a;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/j/a$10;->a:Lcom/oplus/camera/j/b;

    invoke-virtual {v2}, Lcom/oplus/camera/j/b;->a()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/j/a;->a(Lcom/oplus/camera/j/a;Landroidx/viewpager2/widget/ViewPager2;I)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 925
    invoke-virtual {v0}, Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;->b()V

    .line 928
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/j/a$10;->a:Lcom/oplus/camera/j/b;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/j/b;->a(I)V

    .line 929
    iget-object v0, p0, Lcom/oplus/camera/j/a$10;->b:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->n(Lcom/oplus/camera/j/a;)Lcom/coui/appcompat/widget/COUIPageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->a(I)V

    .line 931
    iget-object v0, p0, Lcom/oplus/camera/j/a$10;->b:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->b(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 932
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 933
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ":"

    .line 934
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 935
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/oplus/camera/j/a$10;->b:Lcom/oplus/camera/j/a;

    invoke-static {v3}, Lcom/oplus/camera/j/a;->k(Lcom/oplus/camera/j/a;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 936
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "change"

    .line 937
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 938
    iget-object p0, p0, Lcom/oplus/camera/j/a$10;->b:Lcom/oplus/camera/j/a;

    invoke-static {p0}, Lcom/oplus/camera/j/a;->b(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_double_exposure_guid_page_and_duration"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method
