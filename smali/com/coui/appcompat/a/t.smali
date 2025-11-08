.class public Lcom/coui/appcompat/a/t;
.super Ljava/lang/Object;
.source "COUIThemeOverlay.java"


# static fields
.field private static volatile a:Lcom/coui/appcompat/a/t;

.field private static d:Ljava/lang/String;


# instance fields
.field private b:Landroid/util/SparseIntArray;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/a/t;->b:Landroid/util/SparseIntArray;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/a/t;->c:Ljava/util/HashMap;

    return-void
.end method

.method private a(I)I
    .locals 3

    .line 264
    invoke-direct {p0}, Lcom/coui/appcompat/a/t;->e()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x2ee0

    if-ge p0, v2, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p0, :cond_2

    .line 276
    sget p0, Lcoui/support/appcompat/R$array;->coui_theme_arrays_fourth_compat:I

    goto :goto_1

    :cond_2
    sget p0, Lcoui/support/appcompat/R$array;->coui_theme_arrays_fourth:I

    :goto_1
    move v1, p0

    goto :goto_2

    :cond_3
    if-eqz p0, :cond_4

    .line 273
    sget p0, Lcoui/support/appcompat/R$array;->coui_theme_arrays_third_compat:I

    goto :goto_1

    :cond_4
    sget p0, Lcoui/support/appcompat/R$array;->coui_theme_arrays_third:I

    goto :goto_1

    :cond_5
    if-eqz p0, :cond_6

    .line 270
    sget p0, Lcoui/support/appcompat/R$array;->coui_theme_arrays_second_compat:I

    goto :goto_1

    :cond_6
    sget p0, Lcoui/support/appcompat/R$array;->coui_theme_arrays_second:I

    goto :goto_1

    :cond_7
    if-eqz p0, :cond_8

    .line 267
    sget p0, Lcoui/support/appcompat/R$array;->coui_theme_arrays_first_compat:I

    goto :goto_1

    :cond_8
    sget p0, Lcoui/support/appcompat/R$array;->coui_theme_arrays_first:I

    goto :goto_1

    :goto_2
    return v1
.end method

.method public static a()Lcom/coui/appcompat/a/t;
    .locals 2

    .line 53
    sget-object v0, Lcom/coui/appcompat/a/t;->a:Lcom/coui/appcompat/a/t;

    if-nez v0, :cond_1

    .line 54
    const-class v0, Lcom/coui/appcompat/a/t;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/coui/appcompat/a/t;->a:Lcom/coui/appcompat/a/t;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/coui/appcompat/a/t;

    invoke-direct {v1}, Lcom/coui/appcompat/a/t;-><init>()V

    sput-object v1, Lcom/coui/appcompat/a/t;->a:Lcom/coui/appcompat/a/t;

    .line 58
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 60
    :cond_1
    :goto_0
    sget-object v0, Lcom/coui/appcompat/a/t;->a:Lcom/coui/appcompat/a/t;

    return-object v0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 256
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;
    .locals 1

    .line 248
    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/a/t;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/OplusBaseConfiguration;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 252
    :cond_0
    iget-object p0, p0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    return-object p0
.end method

.method private c()Z
    .locals 0

    :try_start_0
    const-string p0, "com.oplus.inner.content.res.ConfigurationWrapper"

    .line 231
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private d(Landroid/content/Context;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/a/t;->a(Landroid/content/res/Configuration;)J

    move-result-wide v0

    const-wide/32 v2, 0xffff

    and-long/2addr v2, v0

    long-to-int v2, v2

    const-wide/32 v3, 0x30000

    and-long/2addr v3, v0

    long-to-int v3, v3

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_8

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x1

    .line 152
    new-array v1, v0, [I

    sget v4, Lcoui/support/appcompat/R$attr;->couiThemeIdentifier:I

    const/4 v5, 0x0

    aput v4, v1, v5

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 154
    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 156
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/a/t;->c(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    const/high16 v4, 0x20000

    if-ne v3, v4, :cond_3

    .line 160
    sget p1, Lcoui/support/appcompat/R$id;->coui_global_theme:I

    sget v0, Lcoui/support/appcompat/R$style;->SupportOverlay_Theme_Single_First:I

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/a/t;->a(II)V

    return-void

    :cond_3
    const/4 v4, -0x1

    if-nez v3, :cond_4

    .line 167
    invoke-direct {p0, v2}, Lcom/coui/appcompat/a/t;->a(I)I

    move-result v2

    add-int/lit8 v0, v1, -0x1

    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_0

    :cond_4
    const/high16 v0, 0x10000

    if-ne v3, v0, :cond_5

    .line 170
    sget v0, Lcoui/support/appcompat/R$array;->coui_theme_arrays_single:I

    goto :goto_0

    :cond_5
    move v2, v4

    move v0, v5

    :goto_0
    if-eqz v0, :cond_8

    if-ne v2, v4, :cond_6

    goto :goto_2

    .line 176
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    move v0, v5

    .line 177
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_8

    if-ne v0, v2, :cond_7

    .line 179
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 180
    sget v0, Lcoui/support/appcompat/R$id;->coui_global_theme:I

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/a/t;->a(II)V

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    return-void
.end method

.method private d()Z
    .locals 0

    :try_start_0
    const-string p0, "android.content.res.OplusBaseConfiguration"

    .line 240
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private e()I
    .locals 5

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 285
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    .line 286
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, p0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 287
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "ro.oplus.theme.version"

    aput-object v3, v1, p0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 289
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    if-nez v1, :cond_1

    .line 292
    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/coui/appcompat/a/c;->a()Lcom/coui/appcompat/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coui/appcompat/a/c;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, p0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 293
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move v1, p0

    .line 298
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompatVersion e: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "COUIThemeOverlay"

    invoke-static {v0, p0}, Lcom/coui/appcompat/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return v1
.end method

.method private e(Landroid/content/Context;)Z
    .locals 3

    .line 304
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/oplus/theme/OplusThemeUtil;->CUSTOM_THEME_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 308
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 313
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 314
    array-length p0, p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "custom_theme_path_setting"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 318
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 319
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method

.method private f(Landroid/content/Context;)Z
    .locals 2

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/a/t;->b(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 329
    iget p0, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "/data/theme/"

    if-lez p0, :cond_1

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)J
    .locals 7

    .line 188
    invoke-direct {p0}, Lcom/coui/appcompat/a/t;->d()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 191
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/a/t;->b(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    iget-wide v1, v0, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    goto :goto_1

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/a/t;->c()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "com.oplus.inner.content.res.ConfigurationWrapper"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/coui/appcompat/a/c;->a()Lcom/coui/appcompat/a/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/a/c;->e()Ljava/lang/String;

    move-result-object p0

    :goto_0
    sput-object p0, Lcom/coui/appcompat/a/t;->d:Ljava/lang/String;

    .line 197
    :try_start_0
    sget-object p0, Lcom/coui/appcompat/a/t;->d:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "getMaterialColor"

    const/4 v3, 0x1

    .line 200
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/res/Configuration;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    .line 201
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {p0, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCOUITheme e: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIThemeOverlay"

    invoke-static {p1, p0}, Lcom/coui/appcompat/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-wide v1
.end method

.method public a(II)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/coui/appcompat/a/t;->b:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/coui/appcompat/a/t;->b()V

    .line 72
    invoke-direct {p0, p1}, Lcom/coui/appcompat/a/t;->d(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/a/t;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/coui/appcompat/a/t;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->setTheme(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coui/appcompat/a/t;->b:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .locals 4

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/a/t;->a(Landroid/content/res/Configuration;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const-wide/32 v2, 0x1fffff

    and-long/2addr p0, v2

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(Landroid/content/Context;)Z
    .locals 10

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 107
    invoke-direct {p0}, Lcom/coui/appcompat/a/t;->d()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/coui/appcompat/a/t;->b(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_1

    .line 114
    iget-wide v6, v2, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    goto :goto_1

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/a/t;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.oplus.inner.content.res.ConfigurationWrapper"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/coui/appcompat/a/c;->a()Lcom/coui/appcompat/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coui/appcompat/a/c;->e()Ljava/lang/String;

    move-result-object v2

    :goto_0
    sput-object v2, Lcom/coui/appcompat/a/t;->d:Ljava/lang/String;

    .line 118
    :try_start_0
    sget-object v2, Lcom/coui/appcompat/a/t;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v6, "getThemeChangedFlags"

    .line 121
    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/content/res/Configuration;

    aput-object v8, v7, v1

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v6, 0x0

    .line 122
    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v1

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRejectTheme e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "COUIThemeOverlay"

    invoke-static {v6, v2}, Lcom/coui/appcompat/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-wide v6, v4

    :goto_1
    const-wide/16 v8, 0x1

    and-long/2addr v8, v6

    cmp-long v2, v8, v4

    if-eqz v2, :cond_5

    const-wide/16 v8, 0x100

    and-long/2addr v6, v8

    cmp-long v2, v6, v4

    if-eqz v2, :cond_4

    .line 130
    invoke-direct {p0, p1}, Lcom/coui/appcompat/a/t;->e(Landroid/content/Context;)Z

    move-result p0

    goto :goto_2

    .line 132
    :cond_4
    invoke-direct {p0, p1}, Lcom/coui/appcompat/a/t;->f(Landroid/content/Context;)Z

    move-result p0

    goto :goto_2

    :cond_5
    move p0, v1

    :goto_2
    if-eqz p0, :cond_6

    .line 135
    iget p0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 p1, 0x20

    if-eq p0, p1, :cond_6

    move v1, v3

    :cond_6
    :goto_3
    return v1
.end method
