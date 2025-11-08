.class public Lcom/oplus/camera/professional/n;
.super Ljava/lang/Object;
.source "NightPro.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/professional/n$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Lcom/oplus/camera/ui/CameraUIInterface;

.field protected c:Lcom/oplus/camera/capmode/a;

.field private d:Lcom/oplus/camera/professional/r;

.field private e:Lcom/oplus/camera/professional/s;

.field private f:Lcom/oplus/camera/e/d;

.field private g:Lcom/oplus/camera/professional/n$a;

.field private h:Landroid/content/SharedPreferences;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Ljava/lang/String;Lcom/oplus/camera/e/d;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    .line 40
    iput-object v0, p0, Lcom/oplus/camera/professional/n;->g:Lcom/oplus/camera/professional/n$a;

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/professional/n;->j:Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Lcom/oplus/camera/professional/n;->a:Landroid/app/Activity;

    .line 64
    iput-object p3, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 65
    iput-object p2, p0, Lcom/oplus/camera/professional/n;->c:Lcom/oplus/camera/capmode/a;

    .line 66
    iget-object p1, p0, Lcom/oplus/camera/professional/n;->c:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/professional/n;->h:Landroid/content/SharedPreferences;

    .line 67
    iput-object p4, p0, Lcom/oplus/camera/professional/n;->i:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/oplus/camera/professional/n;->f:Lcom/oplus/camera/e/d;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/n;)Lcom/oplus/camera/professional/n$a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->g:Lcom/oplus/camera/professional/n$a;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->g:Lcom/oplus/camera/professional/n$a;

    invoke-interface {v0, p1}, Lcom/oplus/camera/professional/n$a;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 83
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->h:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_1

    const-string v0, "off"

    .line 84
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method static synthetic b(Lcom/oplus/camera/professional/n;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->f:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method private b(IZ)V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    return-void

    .line 267
    :cond_0
    new-instance v0, Lcom/oplus/camera/professional/s;

    iget-object v1, p0, Lcom/oplus/camera/professional/n;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/professional/n;->c:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/professional/s;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    .line 268
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    const-string v1, "pref_night_pro_mode_key"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/s;->a(Ljava/lang/String;)V

    .line 271
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/s;->a(IZ)V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/professional/n;)Lcom/oplus/camera/professional/s;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    return-object p0
.end method

.method private c(IZ)V
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProMenuVisibility visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NightPro"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->j()V

    .line 291
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/r;->a(IZ)V

    return-void
.end method

.method private v()Z
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->h:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/professional/n;->a:Landroid/app/Activity;

    if-eqz p0, :cond_0

    const v1, 0x7f10028e

    .line 211
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_night_tripod_mode_key"

    .line 210
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 212
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private w()V
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/n;->h:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->h:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "pref_restore_night_pro_params"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 463
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->n()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz p0, :cond_0

    .line 296
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/r;->a(I)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeModeAllView animationType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NightPro"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne v0, p1, :cond_6

    .line 643
    iget-object p1, p0, Lcom/oplus/camera/professional/n;->g:Lcom/oplus/camera/professional/n$a;

    const-string v0, "pref_night_pro_mode_key"

    .line 644
    invoke-interface {p1, v0}, Lcom/oplus/camera/professional/n$a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 645
    iget-object p1, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 646
    iget-object p1, p0, Lcom/oplus/camera/professional/n;->g:Lcom/oplus/camera/professional/n$a;

    invoke-interface {p1}, Lcom/oplus/camera/professional/n$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 647
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/professional/r;->b(Z)V

    :cond_1
    const/4 p1, 0x1

    const/16 v1, 0x8

    if-eqz p2, :cond_4

    .line 651
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 652
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    move v1, v0

    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/oplus/camera/professional/n;->c(IZ)V

    .line 655
    :cond_3
    invoke-direct {p0, v0, v0}, Lcom/oplus/camera/professional/n;->b(IZ)V

    goto :goto_1

    .line 657
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 658
    invoke-direct {p0, v1, p1}, Lcom/oplus/camera/professional/n;->c(IZ)V

    .line 661
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/professional/n;->b(IZ)V

    :cond_6
    :goto_1
    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz p0, :cond_0

    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/r;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/r;->a(Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/professional/n$a;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/oplus/camera/professional/n;->g:Lcom/oplus/camera/professional/n$a;

    return-void
.end method

.method public a(Z)V
    .locals 3

    const-string v0, "NightPro"

    const-string v1, "onBeforePreview"

    .line 140
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->f:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    .line 143
    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->ZOOM_RATIO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    iget-object v2, p0, Lcom/oplus/camera/professional/n;->c:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->ak()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/r;->c(Z)V

    :cond_1
    return-void
.end method

.method public a([BZZ)V
    .locals 2

    const-string v0, "NightPro"

    const-string v1, "onAfterPictureTaken"

    .line 179
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->n()V

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->c:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aJ()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/camera/professional/r;->a([BZZ)V

    .line 190
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/professional/n;->g:Lcom/oplus/camera/professional/n$a;

    const-string p2, "pref_night_pro_mode_key"

    .line 191
    invoke-interface {p1, p2}, Lcom/oplus/camera/professional/n$a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 192
    invoke-direct {p0}, Lcom/oplus/camera/professional/n;->v()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 193
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 194
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->aw()Z

    move-result p1

    if-nez p1, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->f()Z

    move-result p1

    if-nez p1, :cond_2

    .line 196
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/s;->a(IZ)V

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->h:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "pref_night_pro_mode_key"

    .line 75
    invoke-direct {p0, v3}, Lcom/oplus/camera/professional/n;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/r;->a(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(Lcom/oplus/camera/e/c;Z)Z
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->g:Lcom/oplus/camera/professional/n$a;

    invoke-interface {v0}, Lcom/oplus/camera/professional/n$a;->b()Z

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/professional/r;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->a:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/n$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/n$1;-><init>(Lcom/oplus/camera/professional/n;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    iget-boolean p1, p1, Lcom/oplus/camera/e/c;->Y:Z

    if-eqz p1, :cond_3

    .line 172
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v2}, Lcom/oplus/camera/professional/s;->a(IZ)V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public b()V
    .locals 3

    const-string v0, "NightPro"

    const-string v1, "onDeInitCameraMode"

    .line 92
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100319

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 95
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 97
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/oplus/camera/professional/r;->g()V

    .line 99
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/r;->a(Lcom/oplus/camera/professional/r$b;)V

    .line 100
    iput-object v1, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Lcom/oplus/camera/professional/s;->a()V

    .line 105
    iput-object v1, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/r;->b(I)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    const-string p1, "NightPro"

    const-string v0, "onResume"

    .line 225
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz p0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->e()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100319

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 111
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 113
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->m()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 528
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/professional/n;->c(IZ)V

    .line 529
    iget-object v1, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/professional/s;->a(Z)V

    .line 530
    invoke-direct {p0}, Lcom/oplus/camera/professional/n;->w()V

    .line 532
    iget-object v1, p0, Lcom/oplus/camera/professional/n;->c:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->J()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 533
    iget-object v1, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->F(Z)V

    .line 535
    iget-object v1, p0, Lcom/oplus/camera/professional/n;->g:Lcom/oplus/camera/professional/n$a;

    invoke-interface {v1}, Lcom/oplus/camera/professional/n$a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    goto :goto_1

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 542
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/professional/n;->c:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aH()V

    .line 543
    iget-object v1, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->z(Z)V

    if-nez p1, :cond_4

    .line 546
    iget-object p1, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/r;->n()V

    .line 547
    iget-object p1, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/r;->b(Z)V

    .line 549
    iget-object p1, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->d()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 550
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/professional/n;->g:Lcom/oplus/camera/professional/n$a;

    .line 551
    invoke-interface {p1}, Lcom/oplus/camera/professional/n$a;->e()Z

    move-result p1

    if-nez p1, :cond_3

    .line 552
    iget-object p1, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 555
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->d(I)V

    .line 556
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b(ZZ)V

    goto :goto_2

    .line 558
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/professional/r;->b(Z)V

    .line 559
    iget-object p1, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/r;->x()V

    .line 560
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->c:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->a()V

    :goto_2
    return-void
.end method

.method public d(Z)V
    .locals 3

    .line 565
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    if-eqz p1, :cond_1

    .line 568
    iget-object p1, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 569
    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/professional/s;->a(IZ)V

    .line 572
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz p1, :cond_1

    .line 573
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/professional/n;->c(IZ)V

    .line 577
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz p0, :cond_2

    .line 578
    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/r;->d(Z)V

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->i()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e(Z)V
    .locals 0

    .line 685
    iget-object p1, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 686
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/r;->d(Z)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz p0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->h()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public f()Z
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/n;->g:Lcom/oplus/camera/professional/n$a;

    const-string v1, "pref_night_pro_mode_key"

    .line 202
    invoke-interface {v0, v1}, Lcom/oplus/camera/professional/n$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/oplus/camera/professional/n;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/professional/s;->a(IZ)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 5

    .line 233
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0, v1, v1}, Lcom/oplus/camera/professional/n;->c(IZ)V

    .line 237
    :cond_0
    new-instance v0, Lcom/oplus/camera/professional/s;

    iget-object v2, p0, Lcom/oplus/camera/professional/n;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oplus/camera/professional/n;->c:Lcom/oplus/camera/capmode/a;

    iget-object v4, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-direct {v0, v2, v3, v4}, Lcom/oplus/camera/professional/s;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    const-string v2, "pref_night_pro_mode_key"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/s;->a(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->g:Lcom/oplus/camera/professional/n$a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/professional/n$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/professional/n;->b(IZ)V

    .line 243
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->z(Z)V

    return-void
.end method

.method public i()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/r;->u()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/s;->c()V

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 256
    invoke-direct {p0, v0, v0}, Lcom/oplus/camera/professional/n;->c(IZ)V

    .line 257
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->z(Z)V

    :cond_2
    return-void
.end method

.method public j()V
    .locals 5

    .line 301
    new-instance v0, Lcom/oplus/camera/professional/o;

    iget-object v1, p0, Lcom/oplus/camera/professional/n;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/professional/n;->c:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, p0, Lcom/oplus/camera/professional/n;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/professional/o;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    new-instance v1, Lcom/oplus/camera/professional/n$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/n$2;-><init>(Lcom/oplus/camera/professional/n;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/r;->a(Lcom/oplus/camera/professional/r$b;)V

    return-void
.end method

.method public k()Z
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/r;->c()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public l()V
    .locals 3

    const-string v0, "NightPro"

    const-string v1, "onMoreModeShown"

    .line 468
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 471
    invoke-direct {p0, v2, v1}, Lcom/oplus/camera/professional/n;->c(IZ)V

    .line 474
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/oplus/camera/professional/n;->b(IZ)V

    return-void
.end method

.method public m()V
    .locals 3

    const-string v0, "NightPro"

    const-string v1, "onMoreModeHidden"

    .line 478
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 481
    invoke-direct {p0, v1, v1}, Lcom/oplus/camera/professional/n;->c(IZ)V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->g:Lcom/oplus/camera/professional/n$a;

    const-string v2, "pref_night_pro_mode_key"

    invoke-interface {v0, v2}, Lcom/oplus/camera/professional/n$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->f()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/professional/n;->b(IZ)V

    return-void
.end method

.method public n()V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/r;->s()V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/n;->g:Lcom/oplus/camera/professional/n$a;

    const-string v1, "pref_night_pro_mode_key"

    .line 502
    invoke-interface {v0, v1}, Lcom/oplus/camera/professional/n$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/n;->g:Lcom/oplus/camera/professional/n$a;

    .line 503
    invoke-interface {v0}, Lcom/oplus/camera/professional/n$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/n;->c:Lcom/oplus/camera/capmode/a;

    .line 504
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 505
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/professional/s;->a(IZ)V

    :cond_1
    return-void
.end method

.method public o()V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->d:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/r;->t()V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/n;->g:Lcom/oplus/camera/professional/n$a;

    const-string v1, "pref_night_pro_mode_key"

    invoke-interface {v0, v1}, Lcom/oplus/camera/professional/n$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/professional/s;->a(IZ)V

    :cond_1
    return-void
.end method

.method public p()V
    .locals 4

    .line 583
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->h:Landroid/content/SharedPreferences;

    const-string v1, "pref_night_pro_mode_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 590
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/s;->a(Z)V

    .line 592
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->h:Landroid/content/SharedPreferences;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 595
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/s;->b()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 597
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aw()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 598
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-nez v0, :cond_2

    .line 599
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    invoke-virtual {p0, v1, v1}, Lcom/oplus/camera/professional/s;->a(IZ)V

    :cond_2
    return-void
.end method

.method public q()V
    .locals 7

    .line 605
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 606
    invoke-virtual {p0}, Lcom/oplus/camera/professional/n;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    iget-object v1, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f100319

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->h:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/n;->a:Landroid/app/Activity;

    const v2, 0x7f1002be

    .line 612
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_photo_ratio_key"

    .line 611
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 614
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "standard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "full"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_2
    const-string v2, "16_9"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string v2, "square"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_4
    const-string v2, "standard_high"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v6

    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_1

    .line 630
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f1005c4

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    goto :goto_1

    .line 626
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f1005c3

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    goto :goto_1

    .line 622
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f1005c6

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    goto :goto_1

    .line 618
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f1005c5

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    goto :goto_1

    .line 636
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100319

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76cada1c -> :sswitch_4
        -0x3553a6e3 -> :sswitch_3
        0x171c9f -> :sswitch_2
        0x30228f -> :sswitch_1
        0x4e3d1ebd -> :sswitch_0
    .end sparse-switch
.end method

.method public r()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    .line 671
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/professional/n;->j:Ljava/util/ArrayList;

    .line 672
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->j:Ljava/util/ArrayList;

    const v1, 0x7f10031c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->j:Ljava/util/ArrayList;

    const v1, 0x7f100315

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->j:Ljava/util/ArrayList;

    const v1, 0x7f100317

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v0, p0, Lcom/oplus/camera/professional/n;->j:Ljava/util/ArrayList;

    const v1, 0x7f100312

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method public s()V
    .locals 0

    .line 691
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    if-eqz p0, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/oplus/camera/professional/s;->d()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 0

    .line 697
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    if-eqz p0, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/oplus/camera/professional/s;->e()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 0

    .line 703
    iget-object p0, p0, Lcom/oplus/camera/professional/n;->e:Lcom/oplus/camera/professional/s;

    if-eqz p0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/oplus/camera/professional/s;->f()V

    :cond_0
    return-void
.end method
