.class public Lcom/oplus/camera/photo3d/ui/g;
.super Ljava/lang/Object;
.source "ThreeDPhotoUIControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/photo3d/ui/g$a;,
        Lcom/oplus/camera/photo3d/ui/g$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/oplus/camera/ui/CameraUIInterface;

.field private c:Lcom/oplus/camera/photo3d/ui/e;

.field private final d:Lcom/oplus/camera/capmode/a;

.field private final e:Landroid/widget/RelativeLayout;

.field private f:Lcom/oplus/camera/ui/RotateImageView;

.field private g:Lcom/oplus/camera/photo3d/ui/g$a;

.field private h:Lcom/oplus/camera/photo3d/ui/c;

.field private final i:Landroid/app/Activity;

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/oplus/camera/photo3d/ui/g;->j:I

    .line 58
    iput v0, p0, Lcom/oplus/camera/photo3d/ui/g;->k:I

    .line 62
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/g;->i:Landroid/app/Activity;

    .line 63
    iput-object p2, p0, Lcom/oplus/camera/photo3d/ui/g;->d:Lcom/oplus/camera/capmode/a;

    .line 64
    iput-object p3, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 65
    iget-object p3, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p3}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/oplus/camera/photo3d/ui/g;->e:Landroid/widget/RelativeLayout;

    .line 66
    new-instance p3, Lcom/oplus/camera/photo3d/ui/g$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/oplus/camera/photo3d/ui/g$b;-><init>(Lcom/oplus/camera/photo3d/ui/g;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/oplus/camera/photo3d/ui/g;->a:Landroid/os/Handler;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/photo3d/ui/g;->a(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;)V

    .line 69
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/g;->i()Lcom/oplus/camera/photo3d/ui/c;

    .line 70
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/g;->a()V

    return-void
.end method

.method private a(Z)I
    .locals 0

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/photo3d/ui/e;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->c:Lcom/oplus/camera/photo3d/ui/e;

    return-object p0
.end method

.method private a(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;)V
    .locals 1

    .line 91
    new-instance v0, Lcom/oplus/camera/photo3d/ui/e;

    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/oplus/camera/photo3d/ui/e;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->c:Lcom/oplus/camera/photo3d/ui/e;

    .line 92
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/g;->c:Lcom/oplus/camera/photo3d/ui/e;

    new-instance p2, Lcom/oplus/camera/photo3d/ui/g$2;

    invoke-direct {p2, p0}, Lcom/oplus/camera/photo3d/ui/g$2;-><init>(Lcom/oplus/camera/photo3d/ui/g;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/photo3d/ui/e;->a(Lcom/oplus/camera/photo3d/ui/e$a;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/photo3d/ui/g;ZZ)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/photo3d/ui/g;->d(ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/photo3d/ui/g;I)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/oplus/camera/photo3d/ui/g;->c(I)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->d:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method private c(I)Z
    .locals 0

    if-lez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/photo3d/ui/g$a;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->g:Lcom/oplus/camera/photo3d/ui/g$a;

    return-object p0
.end method

.method private d(ZZ)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/g;->h:Lcom/oplus/camera/photo3d/ui/c;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/oplus/camera/photo3d/ui/c;->b(ZZ)V

    .line 312
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/g;->f:Lcom/oplus/camera/ui/RotateImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 313
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->c:Lcom/oplus/camera/photo3d/ui/e;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/photo3d/ui/e;->b(Z)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 315
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/g;->h:Lcom/oplus/camera/photo3d/ui/c;

    invoke-virtual {p1, v0, v0}, Lcom/oplus/camera/photo3d/ui/c;->a(ZZ)V

    .line 316
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->f:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/photo3d/ui/g;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/g;->j()V

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/photo3d/ui/g;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/g;->l()V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/photo3d/ui/g;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/g;->m()V

    return-void
.end method

.method static synthetic h(Lcom/oplus/camera/photo3d/ui/g;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/g;->n()V

    return-void
.end method

.method private i()Lcom/oplus/camera/photo3d/ui/c;
    .locals 3

    .line 75
    new-instance v0, Lcom/oplus/camera/photo3d/ui/c;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/g;->i:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/g;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/photo3d/ui/c;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V

    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->h:Lcom/oplus/camera/photo3d/ui/c;

    .line 76
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->h:Lcom/oplus/camera/photo3d/ui/c;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/g;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/photo3d/ui/c;->a(I)V

    .line 78
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->h:Lcom/oplus/camera/photo3d/ui/c;

    new-instance v1, Lcom/oplus/camera/photo3d/ui/g$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/photo3d/ui/g$1;-><init>(Lcom/oplus/camera/photo3d/ui/g;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/photo3d/ui/c;->a(Lcom/oplus/camera/photo3d/ui/c$a;)V

    .line 87
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->h:Lcom/oplus/camera/photo3d/ui/c;

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/photo3d/ui/c;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->h:Lcom/oplus/camera/photo3d/ui/c;

    return-object p0
.end method

.method static synthetic j(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/ui/RotateImageView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->f:Lcom/oplus/camera/ui/RotateImageView;

    return-object p0
.end method

.method private j()V
    .locals 7

    .line 205
    iget-boolean v0, p0, Lcom/oplus/camera/photo3d/ui/g;->l:Z

    if-nez v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f100072

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lcom/oplus/camera/photo3d/ui/g;->l:Z

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/g;->k()V

    .line 212
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f100075

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 214
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->h:Lcom/oplus/camera/photo3d/ui/c;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/photo3d/ui/c;->a(ZZ)V

    return-void
.end method

.method private k()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_show_3d_guide"

    const/4 v2, 0x1

    .line 219
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v2, 0x9

    invoke-interface {p0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->k(I)V

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/oplus/camera/photo3d/ui/g;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/g;->o()V

    return-void
.end method

.method private l()V
    .locals 5

    .line 233
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v0}, Lcom/oplus/camera/ui/control/b;-><init>()V

    const-string v1, "button_color_inside_none"

    .line 234
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    const/16 v1, 0xd

    .line 235
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 236
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    iget v2, p0, Lcom/oplus/camera/photo3d/ui/g;->j:I

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->h(I)V

    .line 237
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/g;->i:Landroid/app/Activity;

    .line 241
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0708d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 240
    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->i(I)V

    .line 242
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    iget v2, p0, Lcom/oplus/camera/photo3d/ui/g;->j:I

    int-to-long v2, v2

    invoke-interface {v0, v2, v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(JZ)V

    .line 243
    iget v0, p0, Lcom/oplus/camera/photo3d/ui/g;->j:I

    iput v0, p0, Lcom/oplus/camera/photo3d/ui/g;->k:I

    .line 244
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->a:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->a:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 247
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 248
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 249
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    .line 250
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->j(ZZ)V

    .line 251
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->d:Lcom/oplus/camera/capmode/a;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2, v2}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 252
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f100075

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 253
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->c:Lcom/oplus/camera/photo3d/ui/e;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/photo3d/ui/e;->b(Z)V

    .line 254
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->h:Lcom/oplus/camera/photo3d/ui/c;

    invoke-virtual {v0, v2, v2}, Lcom/oplus/camera/photo3d/ui/c;->b(ZZ)V

    .line 255
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->f:Lcom/oplus/camera/ui/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    return-void
.end method

.method private m()V
    .locals 10

    .line 263
    iget v0, p0, Lcom/oplus/camera/photo3d/ui/g;->k:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Z)V

    .line 265
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->a:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    :cond_0
    iput v1, p0, Lcom/oplus/camera/photo3d/ui/g;->j:I

    .line 269
    iput v1, p0, Lcom/oplus/camera/photo3d/ui/g;->k:I

    .line 271
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v2, 0x1

    const-string v3, "button_color_inside_none"

    const-string v4, "button_shape_ring_none"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 276
    iget-object v3, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 277
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 279
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f100076

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 280
    iget-object v4, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const v5, 0x7f100075

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 282
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 283
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 284
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    .line 285
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    .line 286
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 287
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->h:Lcom/oplus/camera/photo3d/ui/c;

    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/photo3d/ui/c;->a(ZZ)V

    .line 288
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->f:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    return-void
.end method

.method private n()V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->c:Lcom/oplus/camera/photo3d/ui/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/photo3d/ui/e;->b(Z)V

    .line 297
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->h:Lcom/oplus/camera/photo3d/ui/c;

    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/photo3d/ui/c;->b(ZZ)V

    .line 298
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->e(IZ)V

    .line 299
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 300
    iput v1, p0, Lcom/oplus/camera/photo3d/ui/g;->k:I

    .line 301
    iput v1, p0, Lcom/oplus/camera/photo3d/ui/g;->j:I

    return-void
.end method

.method private o()V
    .locals 4

    .line 321
    iget v0, p0, Lcom/oplus/camera/photo3d/ui/g;->k:I

    add-int/lit16 v0, v0, -0x3e8

    iput v0, p0, Lcom/oplus/camera/photo3d/ui/g;->k:I

    .line 322
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    iget v1, p0, Lcom/oplus/camera/photo3d/ui/g;->k:I

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(JZ)V

    .line 324
    iget v0, p0, Lcom/oplus/camera/photo3d/ui/g;->k:I

    if-lez v0, :cond_0

    .line 325
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->a:Landroid/os/Handler;

    const/16 v0, 0x6e

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/g;->p()V

    :goto_0
    return-void
.end method

.method private p()V
    .locals 3

    .line 332
    iget v0, p0, Lcom/oplus/camera/photo3d/ui/g;->j:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 335
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v0}, Lcom/oplus/camera/ui/control/b;-><init>()V

    const-string v2, "button_color_inside_none"

    .line 336
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 337
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 339
    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 340
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 105
    new-instance v0, Lcom/oplus/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/g;->i:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->f:Lcom/oplus/camera/ui/RotateImageView;

    .line 106
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->f:Lcom/oplus/camera/ui/RotateImageView;

    const v1, 0x7f09022d

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setId(I)V

    .line 107
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->f:Lcom/oplus/camera/ui/RotateImageView;

    const v1, 0x7f0805cc

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setImageResource(I)V

    .line 109
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 110
    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/g;->i:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706b0

    .line 111
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 112
    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/g;->i:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706af

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 115
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    .line 116
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x15

    .line 117
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v0, 0x0

    .line 118
    invoke-virtual {v3, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 119
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 120
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/g;->f:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/g;->f:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/g;->f:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/g;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 124
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/g;->f:Lcom/oplus/camera/ui/RotateImageView;

    new-instance v2, Lcom/oplus/camera/photo3d/ui/g$3;

    invoke-direct {v2, p0}, Lcom/oplus/camera/photo3d/ui/g$3;-><init>(Lcom/oplus/camera/photo3d/ui/g;)V

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/g;->f:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/g;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 136
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->f:Lcom/oplus/camera/ui/RotateImageView;

    const-string v1, "3dPhoto"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;Ljava/lang/String;IZ)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 141
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->a:Landroid/os/Handler;

    const/16 v0, 0x6b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/oplus/camera/photo3d/ui/g$a;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/g;->g:Lcom/oplus/camera/photo3d/ui/g$a;

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->a:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/oplus/camera/photo3d/ui/g;->a(Z)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/oplus/camera/photo3d/ui/g;->a(Z)I

    move-result p0

    const/16 p2, 0x6c

    invoke-virtual {v0, p2, p1, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 306
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "ThreeDPhotoUIControl"

    const-string v1, "onSingleTapUp"

    .line 357
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/g;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 363
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 364
    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/g;->g()V

    .line 368
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/g;->h:Lcom/oplus/camera/photo3d/ui/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/oplus/camera/photo3d/ui/c;->a(ZZ)V

    .line 370
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/g;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    .line 371
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/g;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v0, v0}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 372
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v0}, Lcom/oplus/camera/capmode/a;->d(Z)V

    return v0

    :cond_1
    return v1
.end method

.method public b()V
    .locals 1

    .line 201
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->a:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 228
    iput p1, p0, Lcom/oplus/camera/photo3d/ui/g;->j:I

    .line 229
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->a:Landroid/os/Handler;

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b(ZZ)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->a:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/oplus/camera/photo3d/ui/g;->a(Z)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/oplus/camera/photo3d/ui/g;->a(Z)I

    move-result p0

    const/16 p2, 0x68

    invoke-virtual {v0, p2, p1, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 259
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->a:Landroid/os/Handler;

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public c(ZZ)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->a:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/oplus/camera/photo3d/ui/g;->a(Z)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/oplus/camera/photo3d/ui/g;->a(Z)I

    move-result p0

    const/16 p2, 0x69

    invoke-virtual {v0, p2, p1, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 292
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->a:Landroid/os/Handler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public e()Z
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->c:Lcom/oplus/camera/photo3d/ui/e;

    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/e;->a()Z

    move-result p0

    return p0
.end method

.method public f()Z
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->f:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()V
    .locals 1

    .line 353
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->a:Landroid/os/Handler;

    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public h()V
    .locals 2

    .line 401
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/g;->d()V

    const/4 v0, 0x0

    .line 402
    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->g:Lcom/oplus/camera/photo3d/ui/g$a;

    .line 404
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/g;->f:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g;->h:Lcom/oplus/camera/photo3d/ui/c;

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/ui/c;->a()V

    .line 412
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g;->c:Lcom/oplus/camera/photo3d/ui/e;

    if-eqz p0, :cond_2

    .line 413
    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/e;->b()V

    :cond_2
    return-void
.end method
