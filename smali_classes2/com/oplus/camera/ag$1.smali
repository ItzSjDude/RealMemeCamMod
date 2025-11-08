.class Lcom/oplus/camera/ag$1;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ag;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/capmode/a;Landroid/view/ViewGroup;Lcom/oplus/camera/screen/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ag;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ag;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/x;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/x;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/x;->setFromClickView(Z)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->b(Lcom/oplus/camera/ag;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    .line 237
    invoke-static {v0}, Lcom/oplus/camera/ag;->b(Lcom/oplus/camera/ag;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v3}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;)F

    move-result v3

    invoke-interface {v0, p1, v3}, Lcom/oplus/camera/capmode/a;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    .line 238
    invoke-static {v0}, Lcom/oplus/camera/ag;->b(Lcom/oplus/camera/ag;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, v2}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;Z)Z

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    const-string v3, "pref_front_zoom_key"

    invoke-interface {v0, v3}, Lcom/oplus/camera/ag$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v3

    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    invoke-interface {v0, v1}, Lcom/oplus/camera/ag$a;->c(Z)V

    .line 245
    iget-object p1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ag$a;->o()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 246
    iget-object p0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->q()V

    :cond_3
    return-void

    .line 252
    :cond_4
    sget v0, Lcom/oplus/camera/ag;->a:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_5

    .line 253
    invoke-static {}, Lcom/oplus/camera/j;->a()Lcom/oplus/camera/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/j;->g()V

    .line 256
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, p1, v2}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;FZ)V

    .line 258
    iget-object p1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ag$a;->o()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "com.oplus.strong.vibrate.support"

    .line 259
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 260
    iget-object p0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->p()V

    goto :goto_0

    .line 262
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->q()V

    :cond_7
    :goto_0
    return-void
.end method

.method public a(FZ)V
    .locals 4

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged, zoomValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/af;->h()Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->t()Z

    move-result v0

    const-string v2, "pref_none_sat_tele_angle_key"

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    invoke-static {p1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->f(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->t()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    invoke-static {p1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    .line 276
    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->f(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "on"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 281
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/af;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 282
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_3

    if-eqz p2, :cond_3

    .line 284
    iget-object p2, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p2}, Lcom/oplus/camera/ag;->f(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    .line 285
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 286
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    iget-object p2, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p2, p1}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;F)V

    .line 289
    iget-object p0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p0, p1}, Lcom/oplus/camera/ag;->b(Lcom/oplus/camera/ag;F)V

    goto :goto_1

    .line 293
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p2, p1}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;F)V

    .line 294
    iget-object p2, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p2, p1}, Lcom/oplus/camera/ag;->b(Lcom/oplus/camera/ag;F)V

    .line 295
    iget-object p0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, p1, p2, v0}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;FFZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->g(Lcom/oplus/camera/ag;)Z

    move-result p0

    return p0
.end method

.method public b()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->f()V

    .line 308
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->c()V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->h(Lcom/oplus/camera/ag;)V

    .line 313
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ag;->a(I)V

    .line 314
    iget-object p0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;)F

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;F)V

    return-void
.end method

.method public b(F)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 359
    invoke-static {p1, v0, v1}, Lcom/oplus/camera/util/Util;->a(FFF)F

    move-result p1

    .line 360
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->j(Lcom/oplus/camera/ag;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0604db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 361
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 363
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 364
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 363
    invoke-static {p1, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 366
    iget-object p0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ag$a;->b(I)V

    return-void
.end method

.method public c()V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->g()V

    .line 321
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->d()V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/af;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    .line 325
    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->getCurrentZoom()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/af;->f()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    .line 327
    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/preview/ai;->b(FZ)V

    goto :goto_1

    .line 329
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    sget v3, Lcom/oplus/camera/ag;->a:F

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ui/preview/ai;->b(FZ)V

    .line 334
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p0, v1, v1}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;FF)V

    :cond_3
    return-void
.end method

.method public c(F)V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->k(Lcom/oplus/camera/ag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->l(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotableTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->m(Lcom/oplus/camera/ag;)V

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 375
    invoke-static {p1, v0, v1}, Lcom/oplus/camera/util/Util;->a(FFF)F

    move-result p1

    .line 376
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->j(Lcom/oplus/camera/ag;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0604db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 377
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 379
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 380
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 379
    invoke-static {p1, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 382
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/camera/ag$a;->b(I)V

    .line 384
    iget-object p0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ag;->a(I)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/af;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    .line 341
    invoke-static {v0}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/af;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    .line 342
    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    .line 343
    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    sget v1, Lcom/oplus/camera/ag;->a:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/preview/ai;->b(FZ)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 348
    iget-object p0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->h()V

    :cond_1
    return-void
.end method

.method public d(F)V
    .locals 2

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onArcSeekBarClick, clicked zoomValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentZoomValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    .line 459
    invoke-static {v1}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomManager"

    .line 458
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, p1}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;F)V

    .line 462
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/x;->a(FZ)V

    .line 464
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, p1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;F)F

    .line 466
    iget-object p0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    const/16 p1, 0x9

    invoke-static {p0, p1}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;I)V

    return-void
.end method

.method public e()V
    .locals 6

    .line 389
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->getCurrentZoom()F

    move-result v0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionUpOnExpandState, zoomValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomManager"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/af;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 394
    iget-object v1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->u()Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    .line 395
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ui/preview/ai;->b(FZ)V

    .line 397
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, v3}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;F)V

    .line 398
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, v3, v3}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;FF)V

    goto/16 :goto_2

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/oplus/camera/ui/preview/ai;->b(FZ)V

    .line 401
    iget-object v1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v1, v0}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;F)V

    .line 402
    iget-object v1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v1, v0, v0}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;FF)V

    goto/16 :goto_2

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->s()Z

    move-result v1

    const-string v4, "pref_none_sat_ultra_wide_angle_key"

    const v5, 0x3f4ccccd    # 0.8f

    if-eqz v1, :cond_3

    sget v1, Lcom/oplus/camera/ag;->a:F

    .line 405
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_3

    .line 406
    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    sget v1, Lcom/oplus/camera/ag;->a:F

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/preview/ai;->b(FZ)V

    goto :goto_0

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->f(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "off"

    .line 410
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 411
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 413
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ui/preview/ai;->b(FZ)V

    .line 416
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, v3}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;F)V

    .line 417
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, v3, v3}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;FF)V

    goto :goto_2

    .line 418
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->s()Z

    move-result v1

    if-nez v1, :cond_5

    .line 419
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_5

    .line 420
    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_4

    .line 421
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->f(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "on"

    .line 422
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 423
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 425
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    sget v1, Lcom/oplus/camera/ag;->a:F

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/preview/ai;->b(FZ)V

    goto :goto_1

    .line 427
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ui/preview/ai;->b(FZ)V

    .line 430
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, v3}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;F)V

    .line 431
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, v3, v3}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;FF)V

    goto :goto_2

    .line 433
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v1, v0}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;F)V

    .line 437
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 438
    invoke-static {}, Lcom/oplus/camera/j;->a()Lcom/oplus/camera/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/j;->g()V

    .line 441
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/x;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->s()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 442
    sget v1, Lcom/oplus/camera/ag;->a:F

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;)F

    move-result v1

    :goto_3
    const/4 v2, 0x1

    .line 441
    invoke-virtual {v0, v1, v2, v2}, Lcom/oplus/camera/ui/x;->a(FZZ)V

    .line 444
    iget-object p0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;I)V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "ZoomManager"

    const-string v1, "onActionDownOnExpandState"

    .line 449
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    iget-object p0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->c()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->n(Lcom/oplus/camera/ag;)V

    return-void
.end method

.method public h()V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->getCurrentZoom()F

    move-result v0

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReboundAnimEnd, zoomValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomManager"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/af;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    .line 482
    invoke-static {v1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/camera/ag$a;->s()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/oplus/camera/ag;->a:F

    .line 483
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/preview/ai;->b(FZ)V

    .line 485
    iget-object v0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, v2}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;F)V

    .line 486
    iget-object p0, p0, Lcom/oplus/camera/ag$1;->a:Lcom/oplus/camera/ag;

    invoke-static {p0, v2, v2}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;FF)V

    :cond_0
    return-void
.end method
