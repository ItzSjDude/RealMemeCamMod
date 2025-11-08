.class public Lcom/oplus/epona/internal/AppFinder;
.super Ljava/lang/Object;
.source "AppFinder.java"


# static fields
.field private static final META_DATA_KEY:Ljava/lang/String; = "epona_components"

.field private static final META_PACKAGE_KEY:Ljava/lang/String; = "epona_packages"

.field private static final SEPARATOR:Ljava/lang/String; = "\\|"

.field private static final TAG:Ljava/lang/String; = "AppFinder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findApplicationInfo(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 43
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v0, "epona_components"

    .line 44
    invoke-direct {p0, p2, v0}, Lcom/oplus/epona/internal/AppFinder;->splitMetaData(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 45
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAuthority(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".oplus.epona"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPackages(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "epona_packages"

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/oplus/epona/internal/AppFinder;->splitMetaData(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    .line 59
    new-array p1, p0, [Ljava/lang/Object;

    const-string v0, "AppFinder"

    const-string v1, "not find application info"

    invoke-static {v0, v1, p1}, Lcom/oplus/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private splitMetaData(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 67
    new-array p0, p0, [Ljava/lang/String;

    .line 68
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p1, :cond_0

    return-object p0

    .line 72
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    const-string p0, "\\|"

    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public findApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 7

    .line 19
    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    invoke-direct {p0, v0}, Lcom/oplus/epona/internal/AppFinder;->getPackages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 22
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 23
    invoke-direct {p0, v4}, Lcom/oplus/epona/internal/AppFinder;->getAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    .line 25
    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 28
    invoke-direct {p0, p1, v4}, Lcom/oplus/epona/internal/AppFinder;->findApplicationInfo(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
