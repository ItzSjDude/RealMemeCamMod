.class public Lcom/oplus/camera/ui/menu/setting/f;
.super Lcom/oplus/camera/ui/menu/setting/o;
.source "CameraDrawerSettingUI.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/setting/f$a;
    }
.end annotation


# instance fields
.field private o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

.field private p:Landroid/animation/AnimatorSet;

.field private q:Z

.field private r:F

.field private s:Lcom/oplus/camera/ui/menu/setting/f$a;

.field private t:I

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/ui/CameraUIListener;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/menu/setting/o;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/ui/CameraUIListener;Z)V

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    .line 42
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/f;->p:Landroid/animation/AnimatorSet;

    const/4 p3, 0x0

    .line 44
    iput-boolean p3, p0, Lcom/oplus/camera/ui/menu/setting/f;->q:Z

    const/high16 p4, 0x3f800000    # 1.0f

    .line 45
    iput p4, p0, Lcom/oplus/camera/ui/menu/setting/f;->r:F

    .line 46
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/f;->s:Lcom/oplus/camera/ui/menu/setting/f$a;

    .line 47
    iput p3, p0, Lcom/oplus/camera/ui/menu/setting/f;->t:I

    .line 48
    iput-boolean p3, p0, Lcom/oplus/camera/ui/menu/setting/f;->u:Z

    .line 54
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/f;->g:Landroid/app/Activity;

    const p3, 0x7f09029a

    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    .line 55
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setOnDrawerListener(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$b;)V

    .line 56
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setPreferences(Lcom/oplus/camera/ComboPreferences;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeCameraSettingMenu, mPreferenceOptionGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/f;->k:Lcom/oplus/camera/ui/menu/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraDrawerSettingUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CameraDrawerSettingUI.initializeCameraSettingMenu"

    .line 72
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/f;->k:Lcom/oplus/camera/ui/menu/h;

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/f;->g:Landroid/app/Activity;

    const v2, 0x7f090425

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    const v2, 0x7f09029b

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/f;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    .line 80
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/f;->g:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/f;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/screen/b/a;->a(Landroid/app/Activity;Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/f;->g:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/f;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a()V

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/f;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/f;->h:Lcom/oplus/camera/ComboPreferences;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/f;->k:Lcom/oplus/camera/ui/menu/h;

    iget v6, p0, Lcom/oplus/camera/ui/menu/setting/f;->l:I

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/ui/CameraUIListener;Lcom/oplus/camera/ui/menu/h;IZ)V

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v1, :cond_3

    .line 93
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->aV()V

    .line 96
    :cond_3
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(F)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->g:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/f;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/camera/ui/inverse/e;->setMaskAlpha(Landroid/content/Context;F)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/f;->n()V

    :cond_1
    const v0, 0x3f59999a    # 0.85f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_2

    .line 235
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->q:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->r:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->q:Z

    .line 238
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/f;->s:Lcom/oplus/camera/ui/menu/setting/f$a;

    if-eqz v1, :cond_3

    .line 239
    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/menu/setting/f$a;->a(Z)V

    goto :goto_0

    :cond_2
    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, v0, p1

    if-lez v0, :cond_3

    .line 241
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->q:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->r:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->q:Z

    .line 244
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/f;->s:Lcom/oplus/camera/ui/menu/setting/f$a;

    if-eqz v1, :cond_3

    .line 245
    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/menu/setting/f$a;->a(Z)V

    .line 249
    :cond_3
    :goto_0
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/f;->r:F

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraDrawerSettingOpenAndClose, isOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraDrawerSettingUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 103
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setOpenAndClose(Z)V

    :cond_1
    return-void
.end method

.method public a(IIZ)V
    .locals 0

    .line 277
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/f;->t:I

    .line 278
    iput-boolean p3, p0, Lcom/oplus/camera/ui/menu/setting/f;->u:Z

    .line 280
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz p0, :cond_0

    .line 281
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a(IIZ)V

    :cond_0
    return-void
.end method

.method public a(IZZZ)V
    .locals 2

    .line 61
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->t:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/f;->b(Z)V

    .line 65
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/menu/setting/o;->a(IZZZ)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/setting/f$a;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/f;->s:Lcom/oplus/camera/ui/menu/setting/f$a;

    return-void
.end method

.method public a(Z)V
    .locals 5

    .line 195
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->h:Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->h:Lcom/oplus/camera/ComboPreferences;

    const-string v1, "off"

    const-string v2, "pref_subsetting_key"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShowAndHide, value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isOpen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraDrawerSettingUI"

    invoke-static {v4, v3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "on"

    .line 200
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 201
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->n:Lcom/oplus/camera/ui/menu/setting/o$a;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->n:Lcom/oplus/camera/ui/menu/setting/o$a;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/menu/setting/o$a;->ap(Z)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_1

    move-object v1, v3

    :cond_1
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    if-eqz p1, :cond_3

    .line 209
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "key_drawer_show_guide_animation"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 306
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz p2, :cond_0

    .line 307
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableCameraSettingMenu, enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraDrawerSettingUI"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setEnabled(Z)V

    .line 312
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/f;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p2, :cond_1

    .line 314
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a(ZZ)V

    :cond_1
    return-void
.end method

.method public a(ZZI)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->n:Lcom/oplus/camera/ui/menu/setting/o$a;

    if-eqz v0, :cond_0

    .line 267
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->n:Lcom/oplus/camera/ui/menu/setting/o$a;

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/setting/o$a;->a(ZZI)V

    :cond_0
    return-void
.end method

.method public a(J)Z
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz p0, :cond_0

    .line 440
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->d()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 289
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->g:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07054a

    .line 290
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 292
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideCameraSettingMenu, isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraDrawerSettingUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setRollVisibility(I)V

    .line 324
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->e()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 124
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->j:Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->a()V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz p0, :cond_0

    .line 426
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setEnableTouch(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v0, "3"

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIListener;->p(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/f;->n()V

    .line 139
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/f;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "CameraDrawerSettingUI"

    const-string v0, "onArrowClick, can\'t response arrow click, so return"

    .line 140
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->h:Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/f;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "off"

    goto :goto_0

    :cond_1
    const-string v1, "on"

    :goto_0
    const-string v2, "pref_subsetting_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_3

    .line 150
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    const-string v0, "1"

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIListener;->p(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public g()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->f()V

    .line 158
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/f;->n()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->p:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    :cond_1
    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->q:Z

    .line 168
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/f;->s:Lcom/oplus/camera/ui/menu/setting/f$a;

    if-eqz v1, :cond_2

    .line 169
    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/menu/setting/f$a;->a(Z)V

    .line 172
    :cond_2
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/o;->g()V

    return-void
.end method

.method public h()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b()V

    .line 181
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/o;->h()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->g()V

    .line 190
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/o;->i()V

    return-void
.end method

.method public j()Z
    .locals 2

    .line 216
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->h:Lcom/oplus/camera/ComboPreferences;

    const-string v0, "pref_subsetting_key"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public k()Z
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 255
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->n()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/f;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    .line 257
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->aY()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    .line 258
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    .line 259
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bJ()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public l()V
    .locals 0

    .line 273
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/o;->r()V

    return-void
.end method

.method public m()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz v0, :cond_0

    const-string v0, "CameraDrawerSettingUI"

    const-string v1, "showCameraSettingMenu"

    .line 331
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setRollVisibility(I)V

    .line 334
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz p0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->c()V

    :cond_0
    return-void
.end method

.method public o()Z
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz p0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->h()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public p()Z
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz p0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->i()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public q()Z
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz p0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->getEnableTouch()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public r()V
    .locals 1

    .line 370
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/f;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/o;->r()V

    :cond_0
    return-void
.end method

.method public s()Z
    .locals 2

    .line 377
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/f;->J()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;

    .line 381
    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 389
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "willSubMenuShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraDrawerSettingUI"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public t()Z
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->p:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public u()Z
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bq()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public v()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_0

    .line 407
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->aA()V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v0, :cond_0

    .line 414
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->i:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->aB()V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->p:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 420
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public y()Z
    .locals 0

    .line 431
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz p0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->k()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public z()V
    .locals 0

    .line 447
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/f;->o:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    if-eqz p0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->l()V

    :cond_0
    return-void
.end method
