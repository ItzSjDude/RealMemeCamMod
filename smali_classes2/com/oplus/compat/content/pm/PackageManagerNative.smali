.class public Lcom/oplus/compat/content/pm/PackageManagerNative;
.super Ljava/lang/Object;
.source "PackageManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/content/pm/PackageManagerNative$PackageDataObserver;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "PackageManagerNative"

    .line 84
    :try_start_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x400000

    .line 85
    sput v1, Lcom/oplus/compat/content/pm/PackageManagerNative;->a:I

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    new-instance v1, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v1}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v2, "android.content.pm.PackageManager"

    .line 89
    invoke-virtual {v1, v2}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v1

    const-string v2, "MATCH_ANY_USER"

    .line 90
    invoke-virtual {v1, v2}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object v1

    .line 88
    invoke-static {v1}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/compat/content/pm/PackageManagerNative;->a:I

    goto :goto_0

    .line 95
    :cond_1
    new-instance v1, Lcom/oplus/compat/b/a/b;

    const-string v2, "not supported before R"

    invoke-direct {v1, v2}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v1

    const/4 v2, -0x3

    const/4 v3, 0x1

    const/16 v4, 0x40

    const/4 v5, 0x2

    if-eqz v1, :cond_2

    .line 104
    sput v5, Lcom/oplus/compat/content/pm/PackageManagerNative;->b:I

    .line 105
    sput v4, Lcom/oplus/compat/content/pm/PackageManagerNative;->c:I

    .line 106
    sput v3, Lcom/oplus/compat/content/pm/PackageManagerNative;->d:I

    .line 107
    sput v5, Lcom/oplus/compat/content/pm/PackageManagerNative;->e:I

    .line 108
    sput v2, Lcom/oplus/compat/content/pm/PackageManagerNative;->f:I

    goto :goto_1

    .line 109
    :cond_2
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    sput v5, Lcom/oplus/compat/content/pm/PackageManagerNative;->b:I

    .line 111
    sput v4, Lcom/oplus/compat/content/pm/PackageManagerNative;->c:I

    .line 112
    sput v3, Lcom/oplus/compat/content/pm/PackageManagerNative;->d:I

    .line 113
    sput v5, Lcom/oplus/compat/content/pm/PackageManagerNative;->e:I

    .line 114
    sput v2, Lcom/oplus/compat/content/pm/PackageManagerNative;->f:I

    goto :goto_1

    .line 115
    :cond_3
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    invoke-static {}, Lcom/oplus/compat/content/pm/PackageManagerNative;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/oplus/compat/content/pm/PackageManagerNative;->b:I

    .line 117
    invoke-static {}, Lcom/oplus/compat/content/pm/PackageManagerNative;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/oplus/compat/content/pm/PackageManagerNative;->c:I

    .line 118
    invoke-static {}, Lcom/oplus/compat/content/pm/PackageManagerNative;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/oplus/compat/content/pm/PackageManagerNative;->d:I

    .line 119
    invoke-static {}, Lcom/oplus/compat/content/pm/PackageManagerNative;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/oplus/compat/content/pm/PackageManagerNative;->e:I

    .line 120
    invoke-static {}, Lcom/oplus/compat/content/pm/PackageManagerNative;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/oplus/compat/content/pm/PackageManagerNative;->f:I

    goto :goto_1

    .line 121
    :cond_4
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 122
    sput v5, Lcom/oplus/compat/content/pm/PackageManagerNative;->b:I

    goto :goto_1

    .line 124
    :cond_5
    new-instance v1, Lcom/oplus/compat/b/a/b;

    invoke-direct {v1}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v1

    .line 127
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private static a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static b()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static d()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static e()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
