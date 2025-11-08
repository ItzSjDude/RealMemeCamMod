.class public Lcom/oplus/compat/content/pm/c;
.super Ljava/lang/Object;
.source "UserInfoNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/content/pm/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Landroid/content/pm/UserInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/oplus/compat/content/pm/c;->b:Landroid/content/pm/UserInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    :try_start_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iput-object p1, p0, Lcom/oplus/compat/content/pm/c;->a:Ljava/lang/Object;

    .line 40
    sget-object p1, Lcom/oplus/compat/content/pm/c$a;->user:Lcom/oplus/utils/reflect/RefObject;

    iget-object v0, p0, Lcom/oplus/compat/content/pm/c;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;

    iput-object p1, p0, Lcom/oplus/compat/content/pm/c;->b:Landroid/content/pm/UserInfo;

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iput-object p1, p0, Lcom/oplus/compat/content/pm/c;->a:Ljava/lang/Object;

    .line 43
    iget-object p1, p0, Lcom/oplus/compat/content/pm/c;->a:Ljava/lang/Object;

    invoke-static {p1}, Lcom/oplus/compat/content/pm/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;

    iput-object p1, p0, Lcom/oplus/compat/content/pm/c;->b:Landroid/content/pm/UserInfo;

    goto :goto_0

    .line 45
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserInfoNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
