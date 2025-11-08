.class public Lcom/android/ui/menu/CameraShutterSettingPreference;
.super Landroidx/preference/Preference;
.source "CameraShutterSettingPreference.java"


# static fields
.field private static a:Ljava/lang/String; = "CameraShutterSettingPreference"


# instance fields
.field private b:Lcom/android/ui/menu/b;

.field private c:Landroidx/viewpager2/widget/ViewPager2;

.field private d:Lcom/coui/appcompat/widget/COUIPageIndicator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->b:Lcom/android/ui/menu/b;

    .line 15
    iput-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 16
    iput-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->d:Lcom/coui/appcompat/widget/COUIPageIndicator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->b:Lcom/android/ui/menu/b;

    .line 15
    iput-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 16
    iput-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->d:Lcom/coui/appcompat/widget/COUIPageIndicator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->b:Lcom/android/ui/menu/b;

    .line 15
    iput-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 16
    iput-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->d:Lcom/coui/appcompat/widget/COUIPageIndicator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->b:Lcom/android/ui/menu/b;

    .line 15
    iput-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 16
    iput-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->d:Lcom/coui/appcompat/widget/COUIPageIndicator;

    return-void
.end method

.method static synthetic a(Lcom/android/ui/menu/CameraShutterSettingPreference;)Lcom/coui/appcompat/widget/COUIPageIndicator;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->d:Lcom/coui/appcompat/widget/COUIPageIndicator;

    return-object p0
.end method


# virtual methods
.method public P()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroidx/preference/Preference;->P()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->d:Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 71
    iput-object v0, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->b:Lcom/android/ui/menu/b;

    .line 72
    iput-object v0, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->c:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public a(Landroidx/preference/l;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroidx/preference/Preference;->a(Landroidx/preference/l;)V

    const v0, 0x7f090421

    .line 38
    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->c:Landroidx/viewpager2/widget/ViewPager2;

    const v0, 0x7f090109

    .line 39
    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/widget/COUIPageIndicator;

    iput-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->d:Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 40
    new-instance p1, Lcom/android/ui/menu/b;

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraShutterSettingPreference;->K()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/ui/menu/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->b:Lcom/android/ui/menu/b;

    .line 42
    iget-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->c:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 43
    iget-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->c:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->b:Lcom/android/ui/menu/b;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 44
    iget-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->d:Lcom/coui/appcompat/widget/COUIPageIndicator;

    iget-object v0, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->b:Lcom/android/ui/menu/b;

    invoke-virtual {v0}, Lcom/android/ui/menu/b;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->setDotsCount(I)V

    .line 45
    iget-object p1, p0, Lcom/android/ui/menu/CameraShutterSettingPreference;->c:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lcom/android/ui/menu/CameraShutterSettingPreference$1;

    invoke-direct {v0, p0}, Lcom/android/ui/menu/CameraShutterSettingPreference$1;-><init>(Lcom/android/ui/menu/CameraShutterSettingPreference;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroidx/viewpager2/widget/ViewPager2$e;)V

    return-void
.end method
