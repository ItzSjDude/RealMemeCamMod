.class public final Lcom/heytap/accessory/b/g;
.super Ljava/lang/Object;
.source "SdkConfig.java"


# static fields
.field private static a:I = 0x1

.field private static b:Ljava/lang/String; = ""

.field private static c:I = 0x0

.field private static d:I = 0x0

.field private static e:I = 0x0

.field private static f:I = 0x0

.field private static g:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    const-string v0, "Accessory Framework Not installed"

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 56
    invoke-static {}, Lcom/heytap/accessory/Initializer;->useOAFApp()Z

    move-result p1

    const-string v1, "SdkConfig"

    if-nez p1, :cond_0

    const-string p0, "is not AppMode,ignore"

    .line 57
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x2

    :try_start_0
    const-string v2, "com.heytap.accessory"

    const/4 v3, 0x0

    .line 61
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 67
    iget v2, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcom/heytap/accessory/b/g;->a:I

    .line 68
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/heytap/accessory/b/g;->b:Ljava/lang/String;

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Accessory Framework: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Accessory SDK: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/heytap/accessory/Config;->getSdkVersionName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/heytap/accessory/b/g;->g()V

    return-void

    .line 63
    :cond_1
    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance p0, Lcom/heytap/accessory/bean/GeneralException;

    invoke-direct {p0, p1, v0}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance p0, Lcom/heytap/accessory/bean/GeneralException;

    invoke-direct {p0, p1, v0}, Lcom/heytap/accessory/bean/GeneralException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a()I
    .locals 1

    .line 139
    sget v0, Lcom/heytap/accessory/b/g;->d:I

    return v0
.end method

.method public static a(I)V
    .locals 0

    .line 123
    sput p0, Lcom/heytap/accessory/b/g;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "SdkConfig"

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Package Manager is null"

    .line 85
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/16 v3, 0x1000

    .line 88
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "PackageInfo is null"

    .line 90
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 93
    :cond_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p0, :cond_2

    return v2

    :cond_2
    move v3, v2

    .line 99
    :goto_0
    array-length v4, p0

    const/4 v5, -0x1

    if-ge v3, v4, :cond_4

    const-string v4, "com.heytap.accessory.permission.ACCESSORY_FRAMEWORK"

    .line 100
    aget-object v6, p0, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move v3, v5

    :goto_1
    if-ne v3, v5, :cond_5

    const-string p0, "Accessory service permission not granted for Package"

    .line 107
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    const-string p0, "Accessory service permission available for Package"

    .line 110
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 117
    :catch_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Admin Permission check failed for Package"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static b()I
    .locals 1

    .line 143
    sget v0, Lcom/heytap/accessory/b/g;->e:I

    return v0
.end method

.method public static b(I)V
    .locals 0

    .line 131
    sput p0, Lcom/heytap/accessory/b/g;->d:I

    return-void
.end method

.method public static c()I
    .locals 1

    .line 151
    sget v0, Lcom/heytap/accessory/b/g;->f:I

    return v0
.end method

.method public static c(I)V
    .locals 0

    .line 135
    sput p0, Lcom/heytap/accessory/b/g;->e:I

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public static d(I)V
    .locals 0

    .line 147
    sput p0, Lcom/heytap/accessory/b/g;->f:I

    return-void
.end method

.method public static e(I)V
    .locals 0

    .line 175
    sput p0, Lcom/heytap/accessory/b/g;->g:I

    return-void
.end method

.method public static e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static f()I
    .locals 1

    .line 171
    sget v0, Lcom/heytap/accessory/b/g;->g:I

    return v0
.end method

.method public static g()V
    .locals 2

    const-string v0, "SdkConfig"

    const-string v1, "sdk version: commit id is 3bc035921 time is202111151652"

    .line 179
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
