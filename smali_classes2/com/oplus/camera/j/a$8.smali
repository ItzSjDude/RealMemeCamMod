.class Lcom/oplus/camera/j/a$8;
.super Ljava/lang/Object;
.source "CommonBottomGuide.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/j/a;->m(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/j/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/j/a;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/oplus/camera/j/a$8;->a:Lcom/oplus/camera/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    .line 841
    iget-object p1, p0, Lcom/oplus/camera/j/a$8;->a:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->b(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 842
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 843
    iget-object v0, p0, Lcom/oplus/camera/j/a$8;->a:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->j(Lcom/oplus/camera/j/a;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ":"

    .line 844
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 845
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/oplus/camera/j/a$8;->a:Lcom/oplus/camera/j/a;

    invoke-static {v3}, Lcom/oplus/camera/j/a;->k(Lcom/oplus/camera/j/a;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 846
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 847
    iget-object v0, p0, Lcom/oplus/camera/j/a$8;->a:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->l(Lcom/oplus/camera/j/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "glide"

    goto :goto_0

    :cond_0
    const-string v0, "click"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 849
    iget-object v0, p0, Lcom/oplus/camera/j/a$8;->a:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->b(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "key_double_exposure_guid_page_and_duration"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 852
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/j/a$8;->a:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->b(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 853
    iget-object p1, p0, Lcom/oplus/camera/j/a$8;->a:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->b(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "key_bottom_guide_double_exposure"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 856
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/j/a$8;->a:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->m(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 857
    iget-object p1, p0, Lcom/oplus/camera/j/a$8;->a:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->m(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;->b()V

    .line 860
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/j/a$8;->a:Lcom/oplus/camera/j/a;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/oplus/camera/j/a;->a(Lcom/oplus/camera/j/a;J)J

    return-void
.end method
