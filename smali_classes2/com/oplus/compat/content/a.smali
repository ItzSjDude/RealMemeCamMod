.class public Lcom/oplus/compat/content/a;
.super Ljava/lang/Object;
.source "ContextNative.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:I

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    :try_start_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v1, 0x4000000

    const/high16 v2, 0x2000000

    const-string v3, "statusbar"

    if-eqz v0, :cond_0

    .line 53
    :try_start_1
    sput-object v3, Lcom/oplus/compat/content/a;->a:Ljava/lang/String;

    .line 54
    sput v2, Lcom/oplus/compat/content/a;->b:I

    .line 55
    sput v1, Lcom/oplus/compat/content/a;->c:I

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-static {}, Lcom/oplus/compat/content/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/compat/content/a;->a:Ljava/lang/String;

    .line 58
    sput v2, Lcom/oplus/compat/content/a;->b:I

    .line 59
    sput v1, Lcom/oplus/compat/content/a;->c:I

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    sput-object v3, Lcom/oplus/compat/content/a;->a:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_2
    new-instance v0, Lcom/oplus/compat/b/a/b;

    invoke-direct {v0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/view/Display;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 181
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    .line 183
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-static {p0}, Lcom/oplus/inner/content/ContextWrapper;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    return-object p0

    .line 185
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-static {p0}, Lcom/oplus/compat/content/a;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Display;

    return-object p0

    .line 187
    :cond_2
    invoke-static {}, Lcom/oplus/compat/b/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    .line 190
    :cond_3
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method private static a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.content.Context"

    .line 116
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "startActivity"

    .line 117
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "intent"

    .line 118
    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 120
    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    .line 121
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 125
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
