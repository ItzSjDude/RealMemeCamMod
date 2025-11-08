.class Lcom/oplus/camera/ag$b;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Lcom/oplus/camera/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ag;

.field private b:F

.field private c:F


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ag;)V
    .locals 0

    .line 2755
    iput-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2756
    iput p1, p0, Lcom/oplus/camera/ag$b;->b:F

    .line 2757
    iput p1, p0, Lcom/oplus/camera/ag$b;->c:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ag;Lcom/oplus/camera/ag$1;)V
    .locals 0

    .line 2755
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag$b;-><init>(Lcom/oplus/camera/ag;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/ab;)Z
    .locals 8

    .line 2761
    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2765
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/ab;->d()F

    move-result v0

    .line 2767
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 2771
    iget v2, p0, Lcom/oplus/camera/ag$b;->b:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    return v1

    .line 2775
    :cond_2
    invoke-virtual {p1}, Lcom/oplus/camera/ab;->b()F

    move-result p1

    .line 2776
    iget v0, p0, Lcom/oplus/camera/ag$b;->b:F

    sub-float/2addr p1, v0

    .line 2777
    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    iget v2, p0, Lcom/oplus/camera/ag$b;->c:F

    invoke-virtual {v0, v2, p1}, Lcom/oplus/camera/ag;->a(FF)F

    move-result p1

    .line 2779
    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;

    move-result-object v0

    const-string v2, "on"

    const-string v3, "off"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/af;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->b(Lcom/oplus/camera/ag;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->ao()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2780
    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->t()Z

    move-result v0

    const-string v4, "pref_none_sat_tele_angle_key"

    const/high16 v5, 0x40000000    # 2.0f

    if-nez v0, :cond_3

    .line 2781
    invoke-static {v5, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    .line 2782
    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->v()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2783
    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->f(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 2784
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v5, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_4

    .line 2785
    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->f(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2789
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/af;->g()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    .line 2790
    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/af;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/oplus/camera/ag;->a:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_5

    return v1

    .line 2794
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->s()Z

    move-result v0

    const-string v5, "pref_none_sat_ultra_wide_angle_key"

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_7

    sget v0, Lcom/oplus/camera/ag;->a:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_7

    .line 2795
    invoke-static {p1, v6}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->b(Lcom/oplus/camera/ag;)Lcom/oplus/camera/capmode/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->ao()Z

    move-result p1

    if-nez p1, :cond_6

    .line 2796
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->f(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2797
    invoke-interface {p1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2798
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2800
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-virtual {p1, v7, v4}, Lcom/oplus/camera/ag;->a(FZ)V

    .line 2801
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1, v7, v7}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;FF)V

    .line 2803
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ai;->A()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2804
    iget-object p0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p0, v7}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;F)V

    :cond_6
    return v1

    .line 2809
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->s()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p1, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_9

    .line 2810
    invoke-static {p1, v6}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->b(Lcom/oplus/camera/ag;)Lcom/oplus/camera/capmode/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->ao()Z

    move-result p1

    if-nez p1, :cond_8

    .line 2811
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->f(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2812
    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2813
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2815
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    sget v0, Lcom/oplus/camera/ag;->a:F

    invoke-virtual {p1, v0, v4}, Lcom/oplus/camera/ag;->a(FZ)V

    .line 2816
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1, v7, v7}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;FF)V

    .line 2818
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ai;->A()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2819
    iget-object p0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p0, v7}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;F)V

    :cond_8
    return v1

    .line 2827
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-virtual {v0, p1, v4}, Lcom/oplus/camera/ag;->a(FZ)V

    .line 2828
    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, p1, p1}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;FF)V

    .line 2830
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ai;->s()Z

    move-result p1

    if-nez p1, :cond_a

    .line 2831
    iget-object p0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ai;->p()V

    :cond_a
    :goto_1
    return v1
.end method

.method public b(Lcom/oplus/camera/ab;)Z
    .locals 2

    .line 2845
    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->g(Lcom/oplus/camera/ag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2846
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->G(Lcom/oplus/camera/ag;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2847
    iget-object p0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->k()V

    :cond_0
    return v1

    .line 2853
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->H(Lcom/oplus/camera/ag;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 2857
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->u()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    .line 2858
    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2859
    invoke-static {}, Lcom/oplus/camera/gl/b/e;->a()Lcom/oplus/camera/gl/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/b/e;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 2863
    :cond_3
    invoke-virtual {p1}, Lcom/oplus/camera/ab;->c()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ag$b;->b:F

    .line 2864
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ag$a;->s()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lcom/oplus/camera/ag;->a:F

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;)F

    move-result p1

    :goto_0
    iput p1, p0, Lcom/oplus/camera/ag$b;->c:F

    .line 2866
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ag$a;->c()V

    .line 2868
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ag;->b(Z)Z

    .line 2870
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/oplus/camera/ag$a;->a(Z)V

    .line 2872
    iget-object p0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ai;->p()V

    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public c(Lcom/oplus/camera/ab;)V
    .locals 1

    .line 2879
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2880
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ag$a;->d()V

    .line 2881
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oplus/camera/ag$a;->a(Z)V

    .line 2884
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/ai;->q()V

    .line 2886
    iget-object p0, p0, Lcom/oplus/camera/ag$b;->a:Lcom/oplus/camera/ag;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;I)V

    return-void
.end method
