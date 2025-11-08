.class public Lcom/oplus/camera/t/g;
.super Ljava/lang/Object;
.source "StreetTrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/t/g$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/oplus/camera/t/h;

.field private c:Lcom/oplus/camera/ui/CameraUIInterface;

.field private d:Lcom/oplus/camera/capmode/a;

.field private e:Lcom/oplus/camera/t/a;

.field private f:Lcom/oplus/camera/t/g$a;

.field private g:Landroid/content/SharedPreferences;

.field private h:Lcom/oplus/camera/t/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/e/d;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/oplus/camera/t/g;->a:Landroid/app/Activity;

    .line 35
    iput-object v0, p0, Lcom/oplus/camera/t/g;->b:Lcom/oplus/camera/t/h;

    .line 36
    iput-object v0, p0, Lcom/oplus/camera/t/g;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 37
    iput-object v0, p0, Lcom/oplus/camera/t/g;->d:Lcom/oplus/camera/capmode/a;

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/t/g;->e:Lcom/oplus/camera/t/a;

    .line 39
    iput-object v0, p0, Lcom/oplus/camera/t/g;->f:Lcom/oplus/camera/t/g$a;

    .line 40
    iput-object v0, p0, Lcom/oplus/camera/t/g;->g:Landroid/content/SharedPreferences;

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/t/g;->h:Lcom/oplus/camera/t/f;

    .line 45
    iput-object p1, p0, Lcom/oplus/camera/t/g;->a:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/oplus/camera/t/g;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 47
    iput-object p3, p0, Lcom/oplus/camera/t/g;->d:Lcom/oplus/camera/capmode/a;

    .line 48
    iget-object v0, p0, Lcom/oplus/camera/t/g;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/t/g;->g:Landroid/content/SharedPreferences;

    .line 49
    new-instance v0, Lcom/oplus/camera/t/a;

    invoke-direct {v0, p4, p3, p1, p2}, Lcom/oplus/camera/t/a;-><init>(Lcom/oplus/camera/e/d;Lcom/oplus/camera/capmode/a;Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;)V

    iput-object v0, p0, Lcom/oplus/camera/t/g;->e:Lcom/oplus/camera/t/a;

    .line 50
    invoke-direct {p0}, Lcom/oplus/camera/t/g;->g()V

    return-void
.end method

.method private a(F)V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/oplus/camera/t/g;->h:Lcom/oplus/camera/t/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/t/g;->g:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "pref_street_trace_guide"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object p0, p0, Lcom/oplus/camera/t/g;->h:Lcom/oplus/camera/t/f;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/f;->a(F)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/t/g;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oplus/camera/t/g;->l()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/t/g;F)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/oplus/camera/t/g;->a(F)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/g$a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/camera/t/g;->f:Lcom/oplus/camera/t/g$a;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/camera/t/g;->d:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/camera/t/g;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/t/g;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oplus/camera/t/g;->i()V

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/t/g;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oplus/camera/t/g;->n()V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/h;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/camera/t/g;->b:Lcom/oplus/camera/t/h;

    return-object p0
.end method

.method private g()V
    .locals 5

    .line 88
    new-instance v0, Lcom/oplus/camera/t/h;

    iget-object v1, p0, Lcom/oplus/camera/t/g;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/t/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/t/g;->b:Lcom/oplus/camera/t/h;

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/t/g;->b:Lcom/oplus/camera/t/h;

    invoke-virtual {v0}, Lcom/oplus/camera/t/h;->b()V

    .line 91
    iget-object v0, p0, Lcom/oplus/camera/t/g;->b:Lcom/oplus/camera/t/h;

    new-instance v1, Lcom/oplus/camera/t/g$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/t/g$1;-><init>(Lcom/oplus/camera/t/g;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/t/h;->setTrackListener(Lcom/oplus/camera/t/h$b;)V

    .line 191
    iget-object v0, p0, Lcom/oplus/camera/t/g;->g:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "pref_street_trace_guide"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "street"

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Lcom/oplus/camera/t/f;

    iget-object v3, p0, Lcom/oplus/camera/t/g;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/oplus/camera/t/g;->b:Lcom/oplus/camera/t/h;

    invoke-virtual {v4}, Lcom/oplus/camera/t/h;->getTrackMaxRadius()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/oplus/camera/t/f;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oplus/camera/t/g;->h:Lcom/oplus/camera/t/f;

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/t/g;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v3, p0, Lcom/oplus/camera/t/g;->h:Lcom/oplus/camera/t/f;

    const/4 v4, 0x5

    invoke-interface {v0, v3, v2, v4, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;Ljava/lang/String;IZ)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t/g;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/t/g;->b:Lcom/oplus/camera/t/h;

    const/4 v3, 0x3

    invoke-interface {v0, p0, v2, v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;Ljava/lang/String;IZ)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/oplus/camera/t/g;->h:Lcom/oplus/camera/t/f;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/oplus/camera/t/f;->a()V

    .line 209
    iget-object p0, p0, Lcom/oplus/camera/t/g;->g:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "pref_street_trace_guide"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/oplus/camera/t/g;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oplus/camera/t/g;->o()Z

    move-result p0

    return p0
.end method

.method private i()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/oplus/camera/t/g;->d:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/t/g;->g:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, "key_bubble_street_rocker_shutter"

    .line 215
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object p0, p0, Lcom/oplus/camera/t/g;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v0, 0x14

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/oplus/camera/t/g;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oplus/camera/t/g;->j()Z

    move-result p0

    return p0
.end method

.method private j()Z
    .locals 4

    const-string v0, "StreetTrackHelp"

    const-string v1, "zoomIn"

    .line 221
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/oplus/camera/t/g;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const/4 v2, 0x2

    const v3, 0x3cf5c28f    # 0.03f

    if-ge v0, v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/oplus/camera/t/g;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2, v1, v3}, Lcom/oplus/camera/capmode/a;->a(ZF)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/t/g;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v1, v3}, Lcom/oplus/camera/capmode/a;->a(ZF)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method static synthetic j(Lcom/oplus/camera/t/g;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oplus/camera/t/g;->k()Z

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/oplus/camera/t/g;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oplus/camera/t/g;->h()V

    return-void
.end method

.method private k()Z
    .locals 2

    const-string v0, "StreetTrackHelp"

    const-string v1, "fixFocusIn"

    .line 249
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/oplus/camera/t/g;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object p0, p0, Lcom/oplus/camera/t/g;->e:Lcom/oplus/camera/t/a;

    invoke-virtual {p0}, Lcom/oplus/camera/t/a;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private l()V
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/oplus/camera/t/g;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->ad()Lcom/oplus/camera/ae;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/oplus/camera/ae;->d()V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/oplus/camera/t/g;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oplus/camera/t/g;->p()V

    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/camera/t/g;->e:Lcom/oplus/camera/t/a;

    return-object p0
.end method

.method private m()Z
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/oplus/camera/t/g;->g:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/t/g;->a:Landroid/app/Activity;

    if-eqz p0, :cond_0

    const v1, 0x7f1006dc

    .line 283
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_none_sat_ultra_wide_angle_key"

    .line 282
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private n()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/oplus/camera/t/g;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object p0, p0, Lcom/oplus/camera/t/g;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->H()Z

    :cond_0
    return-void
.end method

.method private o()Z
    .locals 2

    .line 296
    iget-object p0, p0, Lcom/oplus/camera/t/g;->g:Landroid/content/SharedPreferences;

    const-string v0, "pref_raw_control_key"

    const-string v1, "off"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private p()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/oplus/camera/t/g;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->H()V

    .line 302
    iget-object v0, p0, Lcom/oplus/camera/t/g;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/t/g;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->i(ZZ)V

    .line 305
    iget-object v0, p0, Lcom/oplus/camera/t/g;->e:Lcom/oplus/camera/t/a;

    invoke-virtual {v0}, Lcom/oplus/camera/t/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object p0, p0, Lcom/oplus/camera/t/g;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/t/g$a;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/oplus/camera/t/g;->f:Lcom/oplus/camera/t/g$a;

    return-void
.end method

.method public a()Z
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oplus/camera/t/g;->b:Lcom/oplus/camera/t/h;

    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->f()Z

    move-result p0

    return p0
.end method

.method public b()Z
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/t/g;->e:Lcom/oplus/camera/t/a;

    invoke-virtual {p0}, Lcom/oplus/camera/t/a;->g()Z

    move-result p0

    return p0
.end method

.method public c()V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oplus/camera/t/g;->b:Lcom/oplus/camera/t/h;

    invoke-virtual {p0}, Lcom/oplus/camera/t/h;->c()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/oplus/camera/t/g;->b:Lcom/oplus/camera/t/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 81
    invoke-virtual {v0, v1}, Lcom/oplus/camera/t/h;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/oplus/camera/t/g;->b:Lcom/oplus/camera/t/h;

    invoke-virtual {v0}, Lcom/oplus/camera/t/h;->removeAllViewsInLayout()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/oplus/camera/t/g;->b:Lcom/oplus/camera/t/h;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 4

    const-string v0, "StreetTrackHelp"

    const-string v1, "zoomOut"

    .line 235
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-direct {p0}, Lcom/oplus/camera/t/g;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x2

    const v2, 0x3cf5c28f    # 0.03f

    const/4 v3, 0x1

    if-ge v1, v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/t/g;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v3, v2}, Lcom/oplus/camera/capmode/a;->a(ZF)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/t/g;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v3, v2}, Lcom/oplus/camera/capmode/a;->a(ZF)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public f()Z
    .locals 2

    const-string v0, "StreetTrackHelp"

    const-string v1, "fixFocusOut"

    .line 259
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/oplus/camera/t/g;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object p0, p0, Lcom/oplus/camera/t/g;->e:Lcom/oplus/camera/t/a;

    invoke-virtual {p0}, Lcom/oplus/camera/t/a;->c()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
