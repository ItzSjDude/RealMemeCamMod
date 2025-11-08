.class public Lcom/heytap/accessory/Initializer;
.super Ljava/lang/Object;
.source "Initializer.java"


# static fields
.field private static final FW_SERVICE:Ljava/lang/String; = "com.heytap.accessory.action.FRAMEWORK_MANAGER"

.field private static final INIT_CLASS:Ljava/lang/String; = "com.heytap.accessory.platform.FrameworkInitializer"

.field private static final INIT_METHOD:Ljava/lang/String; = "init"

.field private static final OAF_FEATURE_11_2_SUPPORT_WATCH_VERION:I = 0x4ef6

.field private static final OAF_FEATURE_11_3_MIN_VERION:I = 0x4f4c

.field private static final OAF_FEATURE_11_3_SUPPORT_WATCH_VERION:I = 0x4f53

.field private static final OAF_FEATURE_12_SUPPORT_WATCH_VERION:I = 0x4fb0

.field public static final SDK_INTEGRATOR_ROLE_AF:I = 0x1

.field public static final SDK_INTEGRATOR_ROLE_APP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Initializer"

.field private static mSdkConfig:Lcom/heytap/accessory/b/g; = null

.field private static sContext:Landroid/content/Context; = null

.field private static sOAFSdkVersion:I = 0x0

.field private static sUseOAFApp:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSdkConfig()V
    .locals 1

    .line 83
    sget-object v0, Lcom/heytap/accessory/Initializer;->mSdkConfig:Lcom/heytap/accessory/b/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 84
    sput-object v0, Lcom/heytap/accessory/Initializer;->mSdkConfig:Lcom/heytap/accessory/b/g;

    :cond_0
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 97
    sget-object v0, Lcom/heytap/accessory/Initializer;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getOAFVersion()I
    .locals 1

    .line 105
    sget v0, Lcom/heytap/accessory/Initializer;->sOAFSdkVersion:I

    return v0
.end method

.method public static getSdkIntegratorRole()I
    .locals 3

    .line 155
    sget-object v0, Lcom/heytap/accessory/Initializer;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    invoke-static {}, Lcom/heytap/accessory/Initializer;->useOAFApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lcom/heytap/accessory/Initializer;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.heytap.accessory"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static initAFMAccessory(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/SdkUnsupportedException;
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/heytap/accessory/Initializer;->useOAFApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    sget-object p0, Lcom/heytap/accessory/Initializer;->TAG:Ljava/lang/String;

    const-string v0, "is not AppMode,ignore"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_2

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.heytap.accessory"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    .line 73
    :cond_1
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 74
    :goto_0
    sget-object v0, Lcom/heytap/accessory/Initializer;->TAG:Ljava/lang/String;

    const-string v1, "AF version: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 76
    :catch_0
    sget-object p0, Lcom/heytap/accessory/Initializer;->TAG:Ljava/lang/String;

    const-string v0, "AF not installed"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance p0, Lcom/heytap/accessory/bean/SdkUnsupportedException;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/heytap/accessory/bean/SdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal argument: context"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initBufferPool(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/SdkUnsupportedException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 50
    sget-object v0, Lcom/heytap/accessory/Initializer;->mSdkConfig:Lcom/heytap/accessory/b/g;

    if-nez v0, :cond_0

    .line 52
    :try_start_0
    new-instance v0, Lcom/heytap/accessory/b/g;

    invoke-direct {v0, p0}, Lcom/heytap/accessory/b/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/heytap/accessory/Initializer;->mSdkConfig:Lcom/heytap/accessory/b/g;
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    sget-object v0, Lcom/heytap/accessory/Initializer;->TAG:Ljava/lang/String;

    const-string v1, "Initializing AF"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {p0}, Lcom/heytap/accessory/b/a/c;->a(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 54
    new-instance v0, Lcom/heytap/accessory/bean/SdkUnsupportedException;

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/GeneralException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/GeneralException;->getErrorCode()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/heytap/accessory/bean/SdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal argument: context"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initContext(Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/heytap/accessory/Initializer;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static initFramework(Landroid/content/Context;Z)V
    .locals 4

    .line 115
    sget-object v0, Lcom/heytap/accessory/Initializer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/heytap/accessory/Initializer;->sContext:Landroid/content/Context;

    .line 120
    sput-boolean p1, Lcom/heytap/accessory/Initializer;->sUseOAFApp:Z

    :try_start_0
    const-string p0, "com.heytap.accessory.platform.FrameworkInitializer"

    .line 122
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "init"

    const/4 v0, 0x1

    .line 123
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 124
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/heytap/accessory/Initializer;->sContext:Landroid/content/Context;

    aput-object v1, v0, v3

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    return-void
.end method

.method public static setOAFSdkVersion(I)V
    .locals 0

    .line 101
    sput p0, Lcom/heytap/accessory/Initializer;->sOAFSdkVersion:I

    return-void
.end method

.method public static useOAFApp()Z
    .locals 1

    .line 89
    sget-boolean v0, Lcom/heytap/accessory/Initializer;->sUseOAFApp:Z

    return v0
.end method

.method public static useSystemOAF4Watch(Landroid/content/Context;)Z
    .locals 5

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.heytap.accessory"

    .line 136
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 137
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x4ef6

    if-le p0, v1, :cond_0

    const/16 v1, 0x4f4c

    if-lt p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x4f53

    if-lt p0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 145
    :goto_0
    sget-object v2, Lcom/heytap/accessory/Initializer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "useSystemOAF: versionCode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " support="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 148
    :catch_0
    sget-object p0, Lcom/heytap/accessory/Initializer;->TAG:Ljava/lang/String;

    const-string v1, "useSystemOAF: not find OAF"

    invoke-static {p0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
