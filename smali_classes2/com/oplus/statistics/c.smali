.class public Lcom/oplus/statistics/c;
.super Ljava/lang/Object;
.source "OTrackContext.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/statistics/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private d:Lcom/oplus/statistics/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/statistics/c;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/oplus/statistics/b;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/oplus/statistics/c;->b:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/oplus/statistics/c;->c:Landroid/content/Context;

    if-eqz p3, :cond_0

    .line 33
    iget-object p1, p0, Lcom/oplus/statistics/c;->c:Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1, p3}, Lcom/oplus/statistics/c;->a(Landroid/content/Context;Lcom/oplus/statistics/b;)Lcom/oplus/statistics/b;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oplus/statistics/c;->c:Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Lcom/oplus/statistics/c;->a(Landroid/content/Context;)Lcom/oplus/statistics/b;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/oplus/statistics/c;->d:Lcom/oplus/statistics/b;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/oplus/statistics/b;
    .locals 2

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 75
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    sget-object p1, Lcom/oplus/statistics/-$$Lambda$c$fbHcvn_5_wxf0tRDD0u7-FOxlUw;->INSTANCE:Lcom/oplus/statistics/-$$Lambda$c$fbHcvn_5_wxf0tRDD0u7-FOxlUw;

    const-string v0, "OTrackContext"

    invoke-static {v0, p1}, Lcom/oplus/statistics/f/d;->b(Ljava/lang/String;Lcom/oplus/statistics/f/e;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    .line 81
    sget-object p0, Lcom/oplus/statistics/b;->a:Lcom/oplus/statistics/b;

    return-object p0

    .line 84
    :cond_0
    new-instance v0, Lcom/oplus/statistics/b$a;

    invoke-direct {v0}, Lcom/oplus/statistics/b$a;-><init>()V

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Lcom/oplus/statistics/b$a;->a(Ljava/lang/String;)Lcom/oplus/statistics/b$a;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1}, Lcom/oplus/statistics/b$a;->b(Ljava/lang/String;)Lcom/oplus/statistics/b$a;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 87
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/statistics/b$a;->c(Ljava/lang/String;)Lcom/oplus/statistics/b$a;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Lcom/oplus/statistics/b$a;->a()Lcom/oplus/statistics/b;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/oplus/statistics/b;)Lcom/oplus/statistics/b;
    .locals 0

    .line 56
    invoke-virtual {p2}, Lcom/oplus/statistics/b;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 57
    invoke-static {p1}, Lcom/oplus/statistics/f/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/oplus/statistics/b;->a(Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-virtual {p2}, Lcom/oplus/statistics/b;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 61
    invoke-static {p1}, Lcom/oplus/statistics/f/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/oplus/statistics/b;->b(Ljava/lang/String;)V

    .line 64
    :cond_1
    invoke-virtual {p2}, Lcom/oplus/statistics/b;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 65
    invoke-static {p1}, Lcom/oplus/statistics/f/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/oplus/statistics/b;->c(Ljava/lang/String;)V

    :cond_2
    return-object p2
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/oplus/statistics/c;
    .locals 2

    const-class v0, Lcom/oplus/statistics/c;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/oplus/statistics/c;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/statistics/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Landroid/content/Context;Lcom/oplus/statistics/b;)Lcom/oplus/statistics/c;
    .locals 2

    const-class v0, Lcom/oplus/statistics/c;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-static {p0}, Lcom/oplus/statistics/c;->a(Ljava/lang/String;)Lcom/oplus/statistics/c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/oplus/statistics/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/statistics/c;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/oplus/statistics/b;)V

    .line 49
    sget-object p1, Lcom/oplus/statistics/c;->a:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static synthetic b()Ljava/lang/String;
    .locals 1

    const-string v0, "createDefaultConfig PackageManager.NameNotFoundException."

    return-object v0
.end method

.method public static synthetic lambda$fbHcvn_5_wxf0tRDD0u7-FOxlUw()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/oplus/statistics/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/oplus/statistics/b;
    .locals 2

    .line 98
    sget-object v0, Lcom/oplus/statistics/b;->a:Lcom/oplus/statistics/b;

    iget-object v1, p0, Lcom/oplus/statistics/c;->d:Lcom/oplus/statistics/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/oplus/statistics/c;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oplus/statistics/c;->a(Landroid/content/Context;)Lcom/oplus/statistics/b;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/statistics/c;->d:Lcom/oplus/statistics/b;

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/oplus/statistics/c;->d:Lcom/oplus/statistics/b;

    return-object p0
.end method
