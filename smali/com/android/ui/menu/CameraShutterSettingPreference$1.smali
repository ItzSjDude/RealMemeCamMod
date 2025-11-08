.class Lcom/android/ui/menu/CameraShutterSettingPreference$1;
.super Landroidx/viewpager2/widget/ViewPager2$e;
.source "CameraShutterSettingPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ui/menu/CameraShutterSettingPreference;->a(Landroidx/preference/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ui/menu/CameraShutterSettingPreference;


# direct methods
.method constructor <init>(Lcom/android/ui/menu/CameraShutterSettingPreference;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference$1;->a:Lcom/android/ui/menu/CameraShutterSettingPreference;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$e;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$e;->onPageScrollStateChanged(I)V

    .line 61
    iget-object p0, p0, Lcom/android/ui/menu/CameraShutterSettingPreference$1;->a:Lcom/android/ui/menu/CameraShutterSettingPreference;

    invoke-static {p0}, Lcom/android/ui/menu/CameraShutterSettingPreference;->a(Lcom/android/ui/menu/CameraShutterSettingPreference;)Lcom/coui/appcompat/widget/COUIPageIndicator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->b(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$e;->onPageScrolled(IFI)V

    .line 49
    iget-object p0, p0, Lcom/android/ui/menu/CameraShutterSettingPreference$1;->a:Lcom/android/ui/menu/CameraShutterSettingPreference;

    invoke-static {p0}, Lcom/android/ui/menu/CameraShutterSettingPreference;->a(Lcom/android/ui/menu/CameraShutterSettingPreference;)Lcom/coui/appcompat/widget/COUIPageIndicator;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIPageIndicator;->a(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$e;->onPageSelected(I)V

    .line 55
    iget-object p0, p0, Lcom/android/ui/menu/CameraShutterSettingPreference$1;->a:Lcom/android/ui/menu/CameraShutterSettingPreference;

    invoke-static {p0}, Lcom/android/ui/menu/CameraShutterSettingPreference;->a(Lcom/android/ui/menu/CameraShutterSettingPreference;)Lcom/coui/appcompat/widget/COUIPageIndicator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->a(I)V

    return-void
.end method
