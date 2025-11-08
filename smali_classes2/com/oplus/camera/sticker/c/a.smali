.class public Lcom/oplus/camera/sticker/c/a;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static volatile a:Lcom/oplus/camera/sticker/c/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/sticker/c/a;->b:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/oplus/camera/sticker/c/a;->c:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/oplus/camera/sticker/c/a;->d:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/oplus/camera/sticker/c/a;->e:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/oplus/camera/sticker/c/a;->f:Ljava/lang/String;

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/oplus/camera/sticker/c/a;->g:I

    return-void
.end method

.method public static a()Lcom/oplus/camera/sticker/c/a;
    .locals 2

    .line 49
    sget-object v0, Lcom/oplus/camera/sticker/c/a;->a:Lcom/oplus/camera/sticker/c/a;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/oplus/camera/sticker/c/a;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/oplus/camera/sticker/c/a;->a:Lcom/oplus/camera/sticker/c/a;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/oplus/camera/sticker/c/a;

    invoke-direct {v1}, Lcom/oplus/camera/sticker/c/a;-><init>()V

    sput-object v1, Lcom/oplus/camera/sticker/c/a;->a:Lcom/oplus/camera/sticker/c/a;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/camera/sticker/c/a;->a:Lcom/oplus/camera/sticker/c/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 3

    .line 77
    iget v0, p0, Lcom/oplus/camera/sticker/c/a;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 82
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x4000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_0

    .line 88
    iget p1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p1, p0, Lcom/oplus/camera/sticker/c/a;->g:I

    .line 92
    :cond_0
    iget p0, p0, Lcom/oplus/camera/sticker/c/a;->g:I

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/oplus/camera/sticker/c/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "ro.product.name"

    .line 67
    invoke-static {v0}, Lcom/oplus/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/sticker/c/a;->c:Ljava/lang/String;
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Lcom/oplus/compat/b/a/b;->printStackTrace()V

    .line 73
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/sticker/c/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/sticker/c/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 132
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 133
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 135
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v0, 0x438

    if-lt p1, v0, :cond_0

    const-string p1, "1080P"

    .line 136
    iput-object p1, p0, Lcom/oplus/camera/sticker/c/a;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "720P"

    .line 138
    iput-object p1, p0, Lcom/oplus/camera/sticker/c/a;->f:Ljava/lang/String;

    .line 142
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/sticker/c/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/oplus/camera/sticker/c/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/oplus/os/OplusBuild$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/sticker/c/a;->d:Ljava/lang/String;

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/sticker/c/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/oplus/camera/sticker/c/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "ro.build.version.ota"

    .line 106
    invoke-static {v0}, Lcom/oplus/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/sticker/c/a;->e:Ljava/lang/String;
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Lcom/oplus/compat/b/a/b;->printStackTrace()V

    .line 112
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/sticker/c/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 116
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-static {}, Lcom/oplus/camera/util/Util;->aw()Ljava/lang/String;

    move-result-object p0

    .line 122
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "CN"

    :cond_0
    return-object p0
.end method
