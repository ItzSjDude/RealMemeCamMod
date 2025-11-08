.class public Lcom/oplus/camera/filmvideomode/a;
.super Ljava/lang/Object;
.source "BaseFilmUIControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oplus/camera/filmvideomode/f$a;
.implements Lcom/oplus/camera/filmvideomode/k$a;
.implements Lcom/oplus/camera/filmvideomode/k$b;
.implements Lcom/oplus/camera/filmvideomode/k$c;
.implements Lcom/oplus/camera/filmvideomode/k$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/filmvideomode/a$a;
    }
.end annotation


# static fields
.field private static final s:[I


# instance fields
.field protected a:Lcom/oplus/camera/filmvideomode/k;

.field protected b:Landroid/app/Activity;

.field protected c:Lcom/oplus/camera/ui/RotateImageView;

.field protected d:Lcom/oplus/camera/capmode/a;

.field protected e:I

.field protected f:Lcom/oplus/camera/e/d;

.field protected g:Lcom/oplus/camera/filmvideomode/f;

.field protected h:Lcom/oplus/camera/filmvideomode/e;

.field protected i:Landroid/content/SharedPreferences;

.field protected j:Lcom/oplus/camera/ui/SwitchCameraBar;

.field protected k:Landroid/graphics/drawable/Drawable;

.field protected l:Lcom/oplus/camera/ui/control/ThumbImageView;

.field protected m:Lcom/oplus/camera/ui/control/MainShutterButton;

.field protected n:Landroid/view/ViewGroup;

.field protected o:Z

.field protected p:Z

.field protected q:Landroid/graphics/Rect;

.field protected r:Lcom/oplus/camera/filmvideomode/a$a;

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 64
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oplus/camera/filmvideomode/a;->s:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0806b1
        0x7f0806af
        0x7f0806b0
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    .line 67
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->c:Lcom/oplus/camera/ui/RotateImageView;

    .line 68
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    const/4 v1, -0x1

    .line 69
    iput v1, p0, Lcom/oplus/camera/filmvideomode/a;->e:I

    .line 70
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    .line 71
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->g:Lcom/oplus/camera/filmvideomode/f;

    .line 72
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->h:Lcom/oplus/camera/filmvideomode/e;

    .line 73
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    .line 74
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    .line 75
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->k:Landroid/graphics/drawable/Drawable;

    .line 76
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    .line 77
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->m:Lcom/oplus/camera/ui/control/MainShutterButton;

    .line 78
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->n:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 79
    iput-boolean v2, p0, Lcom/oplus/camera/filmvideomode/a;->o:Z

    .line 80
    iput-boolean v2, p0, Lcom/oplus/camera/filmvideomode/a;->p:Z

    .line 81
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/filmvideomode/a;->q:Landroid/graphics/Rect;

    .line 82
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->r:Lcom/oplus/camera/filmvideomode/a$a;

    .line 94
    iput-boolean v2, p0, Lcom/oplus/camera/filmvideomode/a;->t:Z

    const-string v0, ""

    .line 96
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->u:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->v:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->w:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->x:Ljava/lang/String;

    .line 101
    iput v1, p0, Lcom/oplus/camera/filmvideomode/a;->y:I

    .line 103
    new-instance v0, Lcom/oplus/camera/filmvideomode/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/filmvideomode/a$1;-><init>(Lcom/oplus/camera/filmvideomode/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->z:Landroid/os/Handler;

    const v0, 0x7f090261

    .line 142
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->c:Lcom/oplus/camera/ui/RotateImageView;

    .line 144
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->c:Lcom/oplus/camera/ui/RotateImageView;

    if-nez v1, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c017e

    const v3, 0x7f090096

    .line 146
    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 145
    invoke-virtual {v1, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/RotateImageView;

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->c:Lcom/oplus/camera/ui/RotateImageView;

    :cond_0
    return-void
.end method

.method private A()Ljava/lang/String;
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "camera_main"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "com.oplus.feature.wide.angle.open.default"

    .line 339
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    .line 341
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    const-string v1, "camera_ultra_wide"

    :cond_1
    const-string v0, "pref_switch_camera_bar_key"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private B()V
    .locals 2

    .line 598
    sget-boolean v0, Lcom/oplus/camera/Camera;->l:Z

    const-string v1, "off"

    if-nez v0, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "torch"

    .line 600
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v1}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v1}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private C()V
    .locals 2

    .line 976
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_0

    .line 977
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->r:Lcom/oplus/camera/filmvideomode/a$a;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    .line 978
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result p0

    invoke-interface {v1, p0}, Lcom/oplus/camera/filmvideomode/a$a;->a(I)Lcom/oplus/camera/e/h;

    move-result-object p0

    .line 977
    invoke-virtual {v0, p0}, Lcom/oplus/camera/filmvideomode/k;->a(Lcom/oplus/camera/e/h;)V

    :cond_0
    return-void
.end method

.method private D()V
    .locals 7

    .line 1225
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "pref_camera_film_mode_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1226
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v4, "pref_film_video_eis_menu"

    const-string v5, "on"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1228
    iget-object v5, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "pref_film_flash_mode_key"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1229
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "pref_film_eis_mode_key"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1230
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v3, 0x0

    const-string v5, "pref_film_video_eis_and_flash_enable"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1232
    invoke-virtual {p0, v3, v3}, Lcom/oplus/camera/filmvideomode/a;->b(ZZ)V

    .line 1233
    invoke-virtual {p0, v3, v3}, Lcom/oplus/camera/filmvideomode/a;->c(ZZ)V

    .line 1234
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1235
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private E()V
    .locals 6

    .line 1239
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "pref_film_flash_mode_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1240
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v2, "on"

    const-string v3, "pref_film_eis_mode_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1241
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "pref_film_video_eis_and_flash_enable"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v3, "torch"

    .line 1243
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p0, v3, v4}, Lcom/oplus/camera/filmvideomode/a;->b(ZZ)V

    .line 1244
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, v2, v4}, Lcom/oplus/camera/filmvideomode/a;->c(ZZ)V

    .line 1245
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_camera_film_mode_key"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1246
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_film_video_eis_menu"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic F()V
    .locals 2

    .line 184
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->C()V

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->g:Lcom/oplus/camera/filmvideomode/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;ZZ)V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1048
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-nez p0, :cond_0

    goto :goto_0

    .line 1049
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/filmvideomode/k;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    return-object p3
.end method

.method static synthetic a(Lcom/oplus/camera/filmvideomode/a;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->A()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 228
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->g:Lcom/oplus/camera/filmvideomode/f;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    if-gez p2, :cond_8

    .line 275
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/a;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_2
    :goto_0
    const p2, 0x7f090260

    .line 233
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/filmvideomode/f;

    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 239
    :cond_3
    new-instance v0, Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/filmvideomode/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->g:Lcom/oplus/camera/filmvideomode/f;

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/filmvideomode/f;->setId(I)V

    .line 241
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 244
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    const v1, 0x7f0707c2

    if-eqz v0, :cond_4

    const/16 v0, 0xe

    .line 245
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 246
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 247
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_4
    const/16 v0, 0xa

    .line 249
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 250
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 251
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_1
    const-string v0, "com.oplus.feature.landscape.camera.sensor.support"

    .line 254
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 255
    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a50

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 258
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 259
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v1, p0}, Lcom/oplus/camera/filmvideomode/f;->setMenuItemClickListener(Lcom/oplus/camera/filmvideomode/f$a;)V

    .line 260
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->a()V

    .line 261
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {v1}, Lcom/oplus/camera/filmvideomode/e;->getCount()I

    move-result v1

    .line 262
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x5

    if-ge v1, v3, :cond_6

    .line 265
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 268
    :cond_6
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 269
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_7
    mul-int/2addr v0, v1

    .line 272
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {v1}, Lcom/oplus/camera/filmvideomode/e;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 273
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->g:Lcom/oplus/camera/filmvideomode/f;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/f;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;ZZ)V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    const-string p0, "BaseFilmUIControl"

    const-string p1, "No need to display the selection SwitchCameraBar"

    .line 287
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 292
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    const v1, 0x7f090383

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0160

    invoke-virtual {v0, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 294
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/SwitchCameraBar;

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    .line 295
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    const/16 v0, 0x10e

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/SwitchCameraBar;->setItemRotation(I)V

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c015f

    invoke-virtual {v0, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 298
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/SwitchCameraBar;

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    .line 301
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->A()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oplus/camera/filmvideomode/a;->s:[I

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/oplus/camera/ui/SwitchCameraBar;->a(Ljava/lang/String;ZZ[I)V

    .line 302
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    const/high16 p2, 0x42b40000    # 90.0f

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/SwitchCameraBar;->setRotation(F)V

    .line 304
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    new-instance p2, Lcom/oplus/camera/filmvideomode/a$2;

    invoke-direct {p2, p0}, Lcom/oplus/camera/filmvideomode/a$2;-><init>(Lcom/oplus/camera/filmvideomode/a;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/SwitchCameraBar;->setClickListener(Lcom/oplus/camera/ui/SwitchCameraBar$a;)V

    .line 331
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private a(Lcom/oplus/camera/filmvideomode/FilmParam;)V
    .locals 2

    .line 773
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/FilmParam;->getCct()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->u:Ljava/lang/String;

    .line 774
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/FilmParam;->getIso()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->v:Ljava/lang/String;

    .line 775
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/FilmParam;->getExp()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->w:Ljava/lang/String;

    .line 776
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/FilmParam;->getEv()Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->x:Ljava/lang/String;

    .line 778
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-nez v0, :cond_0

    return-void

    .line 782
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/FilmParam;->getIso()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/k;->a(Ljava/lang/Integer;)V

    .line 783
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/FilmParam;->getExp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/k;->a(Ljava/lang/Long;)V

    .line 784
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/FilmParam;->getCct()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/k;->b(Ljava/lang/Integer;)V

    .line 785
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {p1}, Lcom/oplus/camera/filmvideomode/FilmParam;->getEv()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/k;->a(Ljava/lang/Float;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/filmvideomode/a;Lcom/oplus/camera/filmvideomode/FilmParam;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/a;->a(Lcom/oplus/camera/filmvideomode/FilmParam;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/filmvideomode/a;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/control/ThumbImageView;)V
    .locals 3

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeThumb, thumbImageView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFilmUIControl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    if-eqz p0, :cond_1

    .line 855
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 856
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v1, 0x7f0707f6

    .line 858
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const v1, 0x7f0707f1

    .line 859
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v1, 0x7f0707f5

    .line 860
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const v1, 0x7f0707f2

    .line 861
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const-string v1, "com.oplus.feature.landscape.camera.sensor.support"

    .line 863
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const v2, 0x7f070a50

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v1, p0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_0
    const/16 p0, 0xa

    .line 867
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0x9

    .line 868
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 869
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 870
    invoke-virtual {p1, p0, p0, p0, p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setPadding(IIII)V

    const/high16 p0, 0x42b40000    # 90.0f

    .line 871
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setRotation(F)V

    :cond_1
    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "41"

    return-object p0

    :cond_1
    const-string p0, "42"

    return-object p0

    :cond_2
    const-string p0, "43"

    return-object p0

    :cond_3
    const-string p0, "40"

    return-object p0

    :cond_4
    const-string p0, "44"

    return-object p0
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1053
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-nez p0, :cond_0

    goto :goto_0

    .line 1054
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/filmvideomode/k;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    return-object p3
.end method

.method static synthetic b(Lcom/oplus/camera/filmvideomode/a;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->C()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.oplus.feature.movie_ultra_wide_flash_eis_support"

    .line 1215
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "camera_ultra_wide"

    .line 1216
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1217
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->D()V

    goto :goto_0

    .line 1219
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->E()V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(I)V
    .locals 1

    .line 592
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->z:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 593
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 594
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private c(IZZ)V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 609
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->B()V

    .line 610
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    const/4 p1, -0x1

    invoke-interface {p0, p1, p3}, Lcom/oplus/camera/e/d;->b(IZ)V

    goto :goto_0

    .line 612
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setISOValue, back ISOValue: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BaseFilmUIControl"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->k()V

    .line 615
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    invoke-interface {p0, p1, p3}, Lcom/oplus/camera/e/d;->b(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private f(Z)V
    .locals 5

    .line 431
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    return-void

    .line 435
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string v0, "100"

    .line 436
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/oplus/camera/filmvideomode/a;->c(IZZ)V

    .line 437
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    const v3, 0x7f10013e

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 438
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v3, v4}, Lcom/oplus/camera/e/d;->a(J)V

    .line 439
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v3, v4, v2}, Lcom/oplus/camera/e/d;->a(JZ)V

    .line 440
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oplus/camera/a;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->i(Z)V

    if-eqz p1, :cond_1

    .line 444
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 447
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/oplus/camera/filmvideomode/a;->a(ZI)V

    const/4 p1, 0x2

    .line 448
    invoke-virtual {p0, v1, p1}, Lcom/oplus/camera/filmvideomode/a;->a(ZI)V

    const/4 p1, 0x5

    .line 449
    invoke-virtual {p0, v1, p1}, Lcom/oplus/camera/filmvideomode/a;->a(ZI)V

    const/4 p1, 0x4

    .line 450
    invoke-virtual {p0, v1, p1}, Lcom/oplus/camera/filmvideomode/a;->a(ZI)V

    .line 452
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/filmvideomode/a$3;

    invoke-direct {v0, p0}, Lcom/oplus/camera/filmvideomode/a$3;-><init>(Lcom/oplus/camera/filmvideomode/a;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$DWeponS_FIz_4hJQLp9kz94h8Rc(Lcom/oplus/camera/filmvideomode/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->F()V

    return-void
.end method

.method private z()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 208
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 209
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 212
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    const/16 v2, 0xc

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xe

    .line 214
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 215
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0704fd

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 218
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0707cf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 219
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0707d0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 220
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0707c7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 221
    invoke-static {}, Lcom/oplus/camera/util/Util;->aG()I

    move-result v0

    add-int/2addr p0, v0

    iput p0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_0
    return-object v1
.end method


# virtual methods
.method public a(Lcom/oplus/camera/statistics/model/VideoRecordMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 9

    .line 1011
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    .line 1012
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v0

    iput v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mCameraId:I

    .line 1013
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->af()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0x0"

    goto :goto_0

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->af()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mTouchXYValue:Ljava/lang/String;

    .line 1017
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    const-string v1, "off"

    const-string v2, "pref_camera_film_mode_key"

    .line 1018
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1019
    invoke-static {v0}, Lcom/oplus/camera/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mFlashTrigger:Ljava/lang/String;

    .line 1020
    iput-object v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mFlashMode:Ljava/lang/String;

    .line 1021
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->A()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mMovieCameraId:Ljava/lang/String;

    .line 1022
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v2, "pref_camera_mode_key"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mVideoMode:Ljava/lang/String;

    .line 1023
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "on"

    :cond_2
    iput-object v1, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mMovieSteady:Ljava/lang/String;

    .line 1025
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "auto"

    const-string v2, "pref_film_mode_iso"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1026
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v3, "pref_film_mode_shutter"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1027
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v4, "pref_film_mode_white_balance"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1028
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v5, "pref_film_mode_focus"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1029
    iget-object v5, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v6, "pref_film_mode_exposure"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 1031
    invoke-direct {p0, v6, v2, v1}, Lcom/oplus/camera/filmvideomode/a;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mMovieExpTime:Ljava/lang/String;

    const/4 v7, 0x1

    .line 1032
    invoke-direct {p0, v7, v0, v1}, Lcom/oplus/camera/filmvideomode/a;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mMovieIsoValue:Ljava/lang/String;

    const/4 v8, 0x4

    .line 1033
    invoke-direct {p0, v8, v4, v1}, Lcom/oplus/camera/filmvideomode/a;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mMovieFocusValue:Ljava/lang/String;

    const/4 v4, 0x3

    const-string v8, "0"

    .line 1034
    invoke-direct {p0, v4, v5, v8}, Lcom/oplus/camera/filmvideomode/a;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mMovieEvValue:Ljava/lang/String;

    const/4 v8, 0x5

    .line 1035
    invoke-direct {p0, v8, v3, v1}, Lcom/oplus/camera/filmvideomode/a;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mMovieWbValue:Ljava/lang/String;

    .line 1036
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->u:Ljava/lang/String;

    invoke-direct {p0, v8, v3, v1}, Lcom/oplus/camera/filmvideomode/a;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mCct:Ljava/lang/String;

    .line 1037
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->v:Ljava/lang/String;

    invoke-direct {p0, v7, v0, v1}, Lcom/oplus/camera/filmvideomode/a;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIso:Ljava/lang/String;

    .line 1038
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->w:Ljava/lang/String;

    invoke-direct {p0, v6, v2, v0}, Lcom/oplus/camera/filmvideomode/a;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mExp:Ljava/lang/String;

    .line 1039
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->x:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v0}, Lcom/oplus/camera/filmvideomode/a;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mTouchEVValue:Ljava/lang/String;

    .line 1042
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->e()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsAssistantLine:Ljava/lang/String;

    return-object p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(FZZ)V
    .locals 4

    .line 657
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    .line 662
    invoke-interface {v0}, Lcom/oplus/camera/e/d;->p()I

    move-result p1

    if-nez p1, :cond_1

    .line 665
    iput-boolean v3, p0, Lcom/oplus/camera/filmvideomode/a;->t:Z

    :cond_1
    const/4 p2, 0x3

    if-ne p2, p1, :cond_2

    .line 668
    iget-boolean p1, p0, Lcom/oplus/camera/filmvideomode/a;->t:Z

    if-eqz p1, :cond_5

    .line 669
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    .line 670
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    .line 669
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    if-eqz p3, :cond_5

    .line 673
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    goto :goto_0

    .line 677
    :cond_3
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->ac()V

    .line 679
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    if-eqz p2, :cond_5

    .line 680
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->z()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 681
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p2, v3, v3}, Lcom/oplus/camera/capmode/a;->b(ZZ)V

    .line 684
    :cond_4
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    invoke-interface {p2, p1, p3}, Lcom/oplus/camera/e/d;->a(FZ)V

    .line 685
    iput-boolean v2, p0, Lcom/oplus/camera/filmvideomode/a;->t:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 1280
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/a;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 0

    .line 545
    invoke-virtual {p0, p3, p2, p1}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;I)V

    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz p0, :cond_0

    .line 468
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/filmvideomode/k;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(IZZ)V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, -0x1

    const/4 v1, 0x0

    .line 643
    invoke-interface {v0, p2, v1}, Lcom/oplus/camera/e/d;->a(IZ)V

    .line 644
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    invoke-interface {p0, p3}, Lcom/oplus/camera/e/d;->i(Z)V

    goto :goto_0

    .line 647
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p3}, Lcom/oplus/camera/e/d;->a(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    :catch_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    invoke-interface {p0, p3}, Lcom/oplus/camera/e/d;->i(Z)V

    .line 653
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setWhiteBalance, whiteBalance: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseFilmUIControl"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(JZZ)V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 626
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->B()V

    .line 627
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10013e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 628
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    invoke-interface {p0, p1, p2, p4}, Lcom/oplus/camera/e/d;->a(JZ)V

    goto :goto_0

    :cond_1
    const-string p3, "BaseFilmUIControl"

    const-string v0, "setExposureTime, slow shutter"

    .line 630
    invoke-static {p3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->k()V

    .line 633
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    invoke-interface {p0, p1, p2, p4}, Lcom/oplus/camera/e/d;->a(JZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 505
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 509
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/k;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;IJ)V
    .locals 6

    .line 406
    invoke-virtual {p0, p2}, Lcom/oplus/camera/filmvideomode/a;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClick, position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFilmUIControl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p4

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 414
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/a;->f(Z)V

    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/filmvideomode/k;->a(Landroid/view/View;Landroid/view/View;IJ)V

    long-to-int p1, p4

    .line 419
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/a;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/oplus/camera/filmvideomode/a$a;)V
    .locals 0

    .line 1275
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->r:Lcom/oplus/camera/filmvideomode/a$a;

    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 6

    if-eqz p1, :cond_4

    .line 734
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_4

    .line 735
    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/k;->getModeBarCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 741
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    .line 745
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    sget-object v0, Lcom/oplus/camera/e/b;->T:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    .line 748
    :cond_1
    sget-object v0, Lcom/oplus/camera/e/b;->ah:Landroid/hardware/camera2/CaptureResult$Key;

    .line 751
    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 752
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x0

    .line 753
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 754
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 758
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    aget p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 760
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 764
    :cond_2
    :goto_1
    new-instance p1, Lcom/oplus/camera/filmvideomode/FilmParam;

    invoke-direct {p1, v4, v1, v2, v5}, Lcom/oplus/camera/filmvideomode/FilmParam;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Float;)V

    .line 766
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->z:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 767
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 768
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->z:Landroid/os/Handler;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void

    .line 736
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewCaptureResult, invalid previewResult: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseFilmUIControl"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 10

    .line 1058
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1062
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/FilmModeMsgData;-><init>(Landroid/content/Context;)V

    const-string v1, "funcValue_select"

    .line 1063
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->buildEventId(Ljava/lang/String;)V

    .line 1064
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyId:Ljava/lang/String;

    .line 1066
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_1

    .line 1067
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mCameraId:I

    .line 1070
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_a

    const-string v2, "pref_camera_mode_key"

    const-string v3, ""

    .line 1071
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mCaptureMode:Ljava/lang/String;

    const/4 v1, -0x1

    .line 1072
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x33

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x2

    if-eq v2, v3, :cond_5

    const/16 v3, 0x664

    if-eq v2, v3, :cond_4

    const/16 v3, 0x666

    if-eq v2, v3, :cond_3

    const/16 v3, 0x6a3

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v2, "44"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v1, 0x8

    goto :goto_0

    :pswitch_1
    const-string v2, "43"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x7

    goto :goto_0

    :pswitch_2
    const-string v2, "42"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x6

    goto :goto_0

    :pswitch_3
    const-string v2, "41"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v1, v7

    goto :goto_0

    :pswitch_4
    const-string v2, "40"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v1, v6

    goto :goto_0

    :cond_2
    const-string v2, "58"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v1, v8

    goto :goto_0

    :cond_3
    const-string v2, "39"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const-string v2, "37"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v1, v5

    goto :goto_0

    :cond_5
    const-string v2, "3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v1, v4

    :cond_6
    :goto_0
    const-string p1, "on"

    const-string v2, "0"

    const-string v3, "off"

    const-string v9, "auto"

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_3

    .line 1110
    :pswitch_5
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "pref_film_mode_iso"

    invoke-interface {p1, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1111
    invoke-direct {p0, v4, p1, v9}, Lcom/oplus/camera/filmvideomode/a;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyValue:Ljava/lang/String;

    goto :goto_3

    .line 1105
    :pswitch_6
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "pref_film_mode_exposure"

    invoke-interface {p1, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1106
    invoke-direct {p0, v5, p1, v2}, Lcom/oplus/camera/filmvideomode/a;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyValue:Ljava/lang/String;

    goto :goto_3

    .line 1100
    :pswitch_7
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "pref_film_mode_focus"

    invoke-interface {p1, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1101
    invoke-direct {p0, v6, p1, v9}, Lcom/oplus/camera/filmvideomode/a;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyValue:Ljava/lang/String;

    goto :goto_3

    .line 1095
    :pswitch_8
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "pref_film_mode_white_balance"

    invoke-interface {p1, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1096
    invoke-direct {p0, v7, p1, v9}, Lcom/oplus/camera/filmvideomode/a;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyValue:Ljava/lang/String;

    goto :goto_3

    .line 1090
    :pswitch_9
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "pref_film_mode_shutter"

    invoke-interface {p1, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1091
    invoke-direct {p0, v8, p1, v2}, Lcom/oplus/camera/filmvideomode/a;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyValue:Ljava/lang/String;

    goto :goto_3

    .line 1086
    :pswitch_a
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->e()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    move-object p1, v3

    :goto_1
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyValue:Ljava/lang/String;

    goto :goto_3

    .line 1082
    :pswitch_b
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->d()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    move-object p1, v3

    :goto_2
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyValue:Ljava/lang/String;

    goto :goto_3

    .line 1078
    :pswitch_c
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->c()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string v3, "torch"

    :cond_9
    iput-object v3, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyValue:Ljava/lang/String;

    goto :goto_3

    .line 1074
    :pswitch_d
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->A()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->mFuncKeyValue:Ljava/lang/String;

    .line 1119
    :cond_a
    :goto_3
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/FilmModeMsgData;->report()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x67c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public a(Z)V
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz p0, :cond_0

    .line 462
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/k;->setAFEnable(Z)V

    :cond_0
    return-void
.end method

.method public a(ZI)V
    .locals 0

    .line 728
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz p0, :cond_0

    .line 729
    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/filmvideomode/k;->c(IZ)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    .line 549
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;IZ)V

    return-void
.end method

.method public a(ZLjava/lang/String;IZ)V
    .locals 2

    .line 553
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p3, v0, :cond_5

    const/4 v0, 0x2

    if-eq p3, v0, :cond_4

    if-eq p3, v1, :cond_3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_2

    const/4 v0, 0x5

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 571
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2, p1, p4}, Lcom/oplus/camera/filmvideomode/a;->a(IZZ)V

    goto :goto_0

    .line 576
    :cond_2
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p0, p2, p1, p4}, Lcom/oplus/camera/filmvideomode/a;->a(FZZ)V

    goto :goto_0

    .line 581
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2, p1, p4}, Lcom/oplus/camera/filmvideomode/a;->b(IZZ)V

    goto :goto_0

    .line 565
    :cond_4
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/oplus/camera/filmvideomode/a;->a(JZZ)V

    .line 566
    invoke-direct {p0, v1}, Lcom/oplus/camera/filmvideomode/a;->c(I)V

    goto :goto_0

    .line 559
    :cond_5
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2, p1, p4}, Lcom/oplus/camera/filmvideomode/a;->c(IZZ)V

    .line 560
    invoke-direct {p0, v1}, Lcom/oplus/camera/filmvideomode/a;->c(I)V

    :goto_0
    const/4 p1, 0x0

    .line 588
    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/a;->c(I)V

    return-void
.end method

.method public a(ZZ)V
    .locals 8

    .line 151
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/filmvideomode/a;->y:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 156
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/filmvideomode/a;->y:I

    .line 158
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    const v3, 0x7f090263

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 159
    :cond_2
    new-instance v1, Lcom/oplus/camera/filmvideomode/k;

    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    iget-object v5, p0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    iget-object v6, p0, Lcom/oplus/camera/filmvideomode/a;->r:Lcom/oplus/camera/filmvideomode/a$a;

    .line 160
    invoke-interface {v5}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/oplus/camera/filmvideomode/a$a;->a(I)Lcom/oplus/camera/e/h;

    move-result-object v6

    invoke-direct {v1, v4, v5, p0, v6}, Lcom/oplus/camera/filmvideomode/k;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/filmvideomode/k$b;Lcom/oplus/camera/e/h;)V

    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    .line 161
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v1, p0}, Lcom/oplus/camera/filmvideomode/k;->setFilmParamsStateChangeListener(Lcom/oplus/camera/filmvideomode/k$a;)V

    .line 162
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/filmvideomode/k;->setId(I)V

    .line 163
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v1, p0}, Lcom/oplus/camera/filmvideomode/k;->setOnItemClickListener(Lcom/oplus/camera/filmvideomode/k$d;)V

    .line 164
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v1, p0}, Lcom/oplus/camera/filmvideomode/k;->setStatisticDataWriter(Lcom/oplus/camera/filmvideomode/k$c;)V

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->n:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    .line 170
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->n:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 172
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/a;->n:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 173
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->n:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 176
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->z()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 177
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v3, v1}, Lcom/oplus/camera/filmvideomode/k;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/oplus/camera/filmvideomode/k;->setVisibility(I)V

    .line 179
    invoke-virtual {p0, v2}, Lcom/oplus/camera/filmvideomode/a;->b(Z)V

    .line 181
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->n:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/filmvideomode/a;->a(Landroid/view/ViewGroup;Z)V

    .line 183
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->z:Landroid/os/Handler;

    new-instance v3, Lcom/oplus/camera/filmvideomode/-$$Lambda$a$DWeponS_FIz_4hJQLp9kz94h8Rc;

    invoke-direct {v3, p0}, Lcom/oplus/camera/filmvideomode/-$$Lambda$a$DWeponS_FIz_4hJQLp9kz94h8Rc;-><init>(Lcom/oplus/camera/filmvideomode/a;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    goto :goto_2

    .line 196
    :cond_6
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->A()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/SwitchCameraBar;->getSelectValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 197
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->A()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/SwitchCameraBar;->setSelectValue(Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->A()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/SwitchCameraBar;->setSelectBg(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->A()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/filmvideomode/a;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 189
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->n:Landroid/view/ViewGroup;

    const v1, 0x7f09020d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_8

    .line 192
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->n:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 195
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->n:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1, p2}, Lcom/oplus/camera/filmvideomode/a;->a(Landroid/view/ViewGroup;ZZ)V

    .line 202
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/a;->z:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->z:Landroid/os/Handler;

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public a(IIZ)Z
    .locals 8

    .line 1123
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-boolean v2, p0, Lcom/oplus/camera/filmvideomode/a;->p:Z

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 1127
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070452

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1128
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/a;->g:Lcom/oplus/camera/filmvideomode/f;

    invoke-virtual {v2}, Lcom/oplus/camera/filmvideomode/f;->getBottom()I

    move-result v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    .line 1129
    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result v3

    .line 1130
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070b91

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1131
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v5

    iget-object v6, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0707c2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    .line 1133
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1135
    iget-object v7, p0, Lcom/oplus/camera/filmvideomode/a;->m:Lcom/oplus/camera/ui/control/MainShutterButton;

    if-eqz v7, :cond_1

    .line 1136
    invoke-virtual {v7, v6}, Lcom/oplus/camera/ui/control/MainShutterButton;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1137
    iget v3, v6, Landroid/graphics/Rect;->top:I

    .line 1138
    iget v7, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v0

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1141
    :cond_1
    iget-object v7, p0, Lcom/oplus/camera/filmvideomode/a;->q:Landroid/graphics/Rect;

    invoke-virtual {v7, v4, v2, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1143
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1145
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v3, :cond_2

    .line 1146
    invoke-virtual {v3, v2}, Lcom/oplus/camera/filmvideomode/k;->a(Landroid/graphics/Rect;)V

    .line 1147
    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1150
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1152
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    if-eqz v4, :cond_3

    .line 1153
    invoke-virtual {v4}, Lcom/oplus/camera/ui/SwitchCameraBar;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/SwitchCameraBar;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 1154
    iget-object v5, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/SwitchCameraBar;->getX()F

    move-result v5

    int-to-float v4, v4

    add-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 1155
    iget-object v5, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/SwitchCameraBar;->getY()F

    move-result v5

    sub-float/2addr v5, v4

    float-to-int v5, v5

    sub-int/2addr v5, v0

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 1156
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {v7}, Lcom/oplus/camera/ui/SwitchCameraBar;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    add-int/2addr v5, v0

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 1157
    iget-object v5, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/SwitchCameraBar;->getY()F

    move-result v5

    sub-float/2addr v5, v4

    float-to-int v4, v5

    iget-object v5, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/SwitchCameraBar;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :cond_3
    if-eqz p3, :cond_4

    .line 1161
    iget p3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/a;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr p3, v4

    iput p3, v3, Landroid/graphics/Rect;->top:I

    .line 1164
    :cond_4
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 1166
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/a;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz v4, :cond_5

    .line 1167
    invoke-virtual {v4}, Lcom/oplus/camera/ui/control/ThumbImageView;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p3, Landroid/graphics/Rect;->left:I

    .line 1168
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/a;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/control/ThumbImageView;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v4, v0

    iput v4, p3, Landroid/graphics/Rect;->top:I

    .line 1169
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/a;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/control/ThumbImageView;->getRight()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/oplus/camera/filmvideomode/a;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    .line 1170
    invoke-virtual {v5}, Lcom/oplus/camera/ui/control/ThumbImageView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/graphics/Rect;->right:I

    .line 1171
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/a;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/control/ThumbImageView;->getBottom()I

    move-result v4

    add-int/2addr v4, v0

    iput v4, p3, Landroid/graphics/Rect;->bottom:I

    .line 1174
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->q:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1175
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_6

    .line 1176
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_6

    .line 1177
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_6

    .line 1178
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_6

    const/4 v1, 0x1

    :cond_6
    :goto_0
    return v1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/view/View;)Z
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    if-eqz p0, :cond_0

    .line 427
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aX()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(IZZ)V
    .locals 5

    .line 691
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "setExposureCompensation, e: "

    const-string v2, "BaseFilmUIControl"

    if-eqz p2, :cond_2

    .line 697
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f10013b

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 698
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v3, v4, p2}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    .line 701
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 704
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setExposureCompensation, defaultValue: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 706
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 710
    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz p3, :cond_3

    .line 713
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 716
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setExposureCompensation, evValue: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 718
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz p0, :cond_0

    .line 474
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/k;->setParamsBarEnable(Z)V

    :cond_0
    return-void
.end method

.method public b(ZZ)V
    .locals 0

    return-void
.end method

.method protected b()Z
    .locals 2

    .line 348
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    const-string v0, "pref_film_video_log"

    const-string v1, "off"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public c(ZZ)V
    .locals 0

    return-void
.end method

.method protected c()Z
    .locals 2

    .line 352
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    const-string v0, "pref_camera_film_mode_key"

    const-string v1, "off"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "torch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method protected d()Z
    .locals 2

    .line 356
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    const-string v0, "pref_film_video_histogram"

    const-string v1, "off"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method

.method protected e()Z
    .locals 2

    .line 360
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    const-string v0, "pref_film_video_guide_line"

    const-string v1, "off"

    .line 361
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "grid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected f()Z
    .locals 2

    .line 365
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    const-string v0, "on"

    const-string v1, "pref_film_video_eis_menu"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected g()Z
    .locals 2

    .line 369
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    const-string v0, "pref_film_video_hdr"

    const-string v1, "off"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 374
    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/k;->a(Z)V

    .line 375
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->d()V

    :cond_0
    return-void
.end method

.method public i()Landroid/content/Context;
    .locals 0

    .line 789
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    .line 810
    iput-boolean v0, p0, Lcom/oplus/camera/filmvideomode/a;->o:Z

    .line 812
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz p0, :cond_0

    .line 813
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->h()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    .line 819
    iput-boolean v0, p0, Lcom/oplus/camera/filmvideomode/a;->o:Z

    .line 821
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz p0, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->i()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 5

    .line 827
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 831
    iput-boolean v0, p0, Lcom/oplus/camera/filmvideomode/a;->p:Z

    .line 833
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v1, :cond_1

    .line 834
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->z()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/filmvideomode/k;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->m:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 838
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/content/res/Resources;)I

    move-result v1

    .line 839
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/a;->m:Lcom/oplus/camera/ui/control/MainShutterButton;

    new-array v4, v2, [F

    int-to-float v1, v1

    aput v1, v4, v0

    const-string v0, "translationY"

    invoke-static {v3, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 840
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 841
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 844
    :cond_3
    invoke-virtual {p0, v2}, Lcom/oplus/camera/filmvideomode/a;->b(Z)V

    .line 846
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->l:Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_4

    .line 847
    invoke-direct {p0, v0}, Lcom/oplus/camera/filmvideomode/a;->a(Lcom/oplus/camera/ui/control/ThumbImageView;)V

    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 3

    const/4 v0, 0x1

    .line 876
    iput-boolean v0, p0, Lcom/oplus/camera/filmvideomode/a;->p:Z

    .line 878
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v1, :cond_0

    .line 879
    iget v1, p0, Lcom/oplus/camera/filmvideomode/a;->e:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1}, Lcom/oplus/camera/filmvideomode/a;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 880
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v1}, Lcom/oplus/camera/filmvideomode/k;->d()V

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->z:Landroid/os/Handler;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 884
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->j()V

    :cond_1
    return-void
.end method

.method public q()V
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/a;->h()V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .line 895
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/filmvideomode/k;->c(IZ)V

    return-void
.end method

.method public s()V
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->z:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 901
    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->z:Landroid/os/Handler;

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_1

    .line 905
    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/k;->setOnItemClickListener(Lcom/oplus/camera/filmvideomode/k$d;)V

    .line 906
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/k;->setStatisticDataWriter(Lcom/oplus/camera/filmvideomode/k$c;)V

    .line 909
    :cond_1
    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    .line 910
    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    .line 911
    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->d:Lcom/oplus/camera/capmode/a;

    .line 912
    iput-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->f:Lcom/oplus/camera/e/d;

    return-void
.end method

.method public t()V
    .locals 10

    .line 916
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    .line 920
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/a;->b(Z)V

    .line 921
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v2, "auto"

    const-string v3, "pref_film_mode_iso"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 922
    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v4, "pref_film_mode_shutter"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 923
    iget-object v4, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v5, "pref_film_mode_white_balance"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 924
    iget-object v5, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v6, "pref_film_mode_focus"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 925
    iget-object v6, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const/4 v7, 0x0

    const-string v8, "pref_film_mode_exposure"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 927
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBeforeStartPreview, iso: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", shutter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", wb: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", af: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", ev: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BaseFilmUIControl"

    invoke-static {v8, v7}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "0"

    const/4 v9, 0x0

    if-nez v7, :cond_1

    .line 931
    invoke-virtual {p0, v9, v1, v0, v9}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;IZ)V

    goto :goto_0

    .line 933
    :cond_1
    invoke-virtual {p0, v0, v8, v0, v9}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;IZ)V

    .line 936
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x2

    if-nez v1, :cond_2

    .line 937
    invoke-virtual {p0, v9, v3, v7, v9}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;IZ)V

    goto :goto_1

    .line 939
    :cond_2
    invoke-virtual {p0, v0, v8, v7, v9}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;IZ)V

    .line 942
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x5

    if-nez v1, :cond_3

    .line 943
    invoke-virtual {p0, v9, v4, v3, v9}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;IZ)V

    goto :goto_2

    .line 945
    :cond_3
    invoke-virtual {p0, v0, v8, v3, v9}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;IZ)V

    .line 948
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_4

    .line 949
    invoke-virtual {p0, v9, v5, v2, v9}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;IZ)V

    goto :goto_3

    .line 951
    :cond_4
    invoke-virtual {p0, v0, v8, v2, v9}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;IZ)V

    :goto_3
    const/4 v1, 0x3

    if-eqz v6, :cond_5

    .line 955
    invoke-virtual {p0, v9, v6, v1, v9}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;IZ)V

    goto :goto_4

    .line 957
    :cond_5
    invoke-virtual {p0, v0, v8, v1, v9}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;IZ)V

    :cond_6
    :goto_4
    return-void
.end method

.method public u()V
    .locals 3

    .line 966
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "auto"

    const-string v2, "pref_film_mode_focus"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 968
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 969
    invoke-virtual {p0, v1, v0, v2}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "0"

    .line 971
    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public v()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 983
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/filmvideomode/a;->a(ZI)V

    const/4 v1, 0x2

    .line 984
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/filmvideomode/a;->a(ZI)V

    .line 985
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/filmvideomode/a;->a(ZI)V

    const/4 v1, 0x5

    .line 986
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/filmvideomode/a;->a(ZI)V

    return-void
.end method

.method public w()V
    .locals 3

    .line 990
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BaseFilmUIControl"

    const-string v1, "resetFilmModeParams"

    .line 994
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_film_mode_iso"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 997
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_film_mode_shutter"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 998
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_film_mode_white_balance"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 999
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_film_mode_focus"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1000
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_film_mode_exposure"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1001
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_film_show_ui_default"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1002
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_switch_camera_bar_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "0"

    const/4 v1, 0x1

    .line 1003
    invoke-virtual {p0, v1, v0, v1}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;I)V

    const/4 v2, 0x2

    .line 1004
    invoke-virtual {p0, v1, v0, v2}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;I)V

    const/4 v2, 0x5

    .line 1005
    invoke-virtual {p0, v1, v0, v2}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;I)V

    const/4 v2, 0x4

    .line 1006
    invoke-virtual {p0, v1, v0, v2}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;I)V

    const/4 v2, 0x3

    .line 1007
    invoke-virtual {p0, v1, v0, v2}, Lcom/oplus/camera/filmvideomode/a;->a(ZLjava/lang/String;I)V

    return-void
.end method

.method public x()V
    .locals 5

    const-string v0, "BaseFilmUIControl"

    const-string v1, "restoreDefaultMode, Restore UI"

    .line 1185
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->b:Landroid/app/Activity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->h:Lcom/oplus/camera/filmvideomode/e;

    if-nez v0, :cond_0

    goto :goto_2

    .line 1191
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->C()V

    .line 1193
    instance-of v0, p0, Lcom/oplus/camera/filmvideomode/p;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1194
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->h:Lcom/oplus/camera/filmvideomode/e;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/filmvideomode/e;->a(I)Lcom/oplus/camera/filmvideomode/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    goto :goto_1

    .line 1195
    :cond_1
    instance-of v0, p0, Lcom/oplus/camera/filmvideomode/q;

    if-eqz v0, :cond_3

    .line 1196
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->h:Lcom/oplus/camera/filmvideomode/e;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/filmvideomode/g;

    const/4 v3, 0x4

    .line 1197
    invoke-virtual {v2}, Lcom/oplus/camera/filmvideomode/g;->b()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1198
    invoke-virtual {v2, v1}, Lcom/oplus/camera/filmvideomode/g;->a(Z)Lcom/oplus/camera/filmvideomode/g;

    goto :goto_0

    .line 1203
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->h:Lcom/oplus/camera/filmvideomode/e;

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->g:Lcom/oplus/camera/filmvideomode/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/oplus/camera/filmvideomode/e;->a(Lcom/oplus/camera/filmvideomode/f;ZZ)V

    .line 1204
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/k;->e()V

    .line 1206
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->A()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/SwitchCameraBar;->getSelectValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1207
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/SwitchCameraBar;->setSelectValue(Ljava/lang/String;)V

    .line 1208
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/a;->j:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/SwitchCameraBar;->setSelectBg(Ljava/lang/String;)V

    .line 1211
    :cond_4
    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/a;->A()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/filmvideomode/a;->b(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public y()V
    .locals 0

    return-void
.end method
