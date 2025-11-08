.class public Lcom/oplus/shield/b;
.super Ljava/lang/Object;
.source "PermissionCheck.java"


# static fields
.field private static volatile a:Lcom/oplus/shield/b;


# instance fields
.field private volatile b:Z

.field private c:Landroid/content/Context;

.field private d:Lcom/oplus/shield/authcode/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/oplus/shield/b;->b:Z

    return-void
.end method

.method public static b()Lcom/oplus/shield/b;
    .locals 2

    .line 237
    sget-object v0, Lcom/oplus/shield/b;->a:Lcom/oplus/shield/b;

    if-nez v0, :cond_1

    .line 238
    const-class v0, Lcom/oplus/shield/b;

    monitor-enter v0

    .line 239
    :try_start_0
    sget-object v1, Lcom/oplus/shield/b;->a:Lcom/oplus/shield/b;

    if-nez v1, :cond_0

    .line 240
    new-instance v1, Lcom/oplus/shield/b;

    invoke-direct {v1}, Lcom/oplus/shield/b;-><init>()V

    sput-object v1, Lcom/oplus/shield/b;->a:Lcom/oplus/shield/b;

    .line 242
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 244
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/shield/b;->a:Lcom/oplus/shield/b;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 233
    invoke-static {}, Lcom/oplus/shield/b/c;->b()Lcom/oplus/shield/b/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/shield/b/c;->a()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 13

    .line 57
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    return v1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/oplus/shield/b;->c:Landroid/content/Context;

    .line 61
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 60
    invoke-static {v0, v2, v3}, Lcom/oplus/shield/b/e;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Tingle Authentication Failed Cause Descriptor Empty : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/shield/b/d;->b(Ljava/lang/String;)V

    return v3

    .line 67
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start tingle verity descriptor : ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] method : ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {p1, p2}, Lcom/oplus/shield/a/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] caller package : ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v2}, Lcom/oplus/shield/b/d;->a(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/oplus/shield/b;->d:Lcom/oplus/shield/authcode/a;

    const-string v5, "728E6B5E6D3FAA00E2DE12CC464D027BFFE2DD87329967F72028F2FD13C122E9"

    invoke-virtual {v2, v5}, Lcom/oplus/shield/authcode/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Tingle verity SUCCESS cause local version, Caller Package ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/shield/b/d;->a(Ljava/lang/String;)V

    return v1

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/oplus/shield/b;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oplus/shield/b/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    iget-object v5, p0, Lcom/oplus/shield/b;->d:Lcom/oplus/shield/authcode/a;

    invoke-virtual {v5, v2}, Lcom/oplus/shield/authcode/a;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Tingle verity SUCCESS Caller Package ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is platform signature"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/shield/b/d;->a(Ljava/lang/String;)V

    return v1

    .line 85
    :cond_3
    iget-object v1, p0, Lcom/oplus/shield/b;->d:Lcom/oplus/shield/authcode/a;

    invoke-virtual {v1, v0, v2}, Lcom/oplus/shield/authcode/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v5, "] Method : ["

    const-string v6, "] Descriptor : ["

    const-string v7, " Caller : ["

    const-string v8, "SUCCESS"

    const-string v9, "FAILED"

    const-string v10, "Tingle verity "

    if-eqz v1, :cond_5

    .line 86
    iget-object p0, p0, Lcom/oplus/shield/b;->d:Lcom/oplus/shield/authcode/a;

    .line 87
    invoke-static {p1, p2}, Lcom/oplus/shield/a/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {p0, v1, v0}, Lcom/oplus/shield/authcode/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move-object v8, v9

    :goto_0
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {p1, p2}, Lcom/oplus/shield/a/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {p1}, Lcom/oplus/shield/b/d;->a(Ljava/lang/String;)V

    return p0

    .line 94
    :cond_5
    iget-object v1, p0, Lcom/oplus/shield/b;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oplus/shield/authcode/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/shield/authcode/a/a;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/oplus/shield/authcode/a/a;->b()I

    move-result v11

    const/16 v12, 0x3e9

    if-eq v11, v12, :cond_6

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Tingle Authentication Failed "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {v11}, Lcom/oplus/shield/authcode/c;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Package : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {p0}, Lcom/oplus/shield/b/d;->b(Ljava/lang/String;)V

    return v3

    .line 102
    :cond_6
    iget-object v3, p0, Lcom/oplus/shield/b;->d:Lcom/oplus/shield/authcode/a;

    invoke-virtual {v3, v0, v1, v2}, Lcom/oplus/shield/authcode/a;->a(Ljava/lang/String;Lcom/oplus/shield/authcode/a/a;Ljava/lang/String;)V

    .line 103
    iget-object p0, p0, Lcom/oplus/shield/b;->d:Lcom/oplus/shield/authcode/a;

    .line 104
    invoke-static {p1, p2}, Lcom/oplus/shield/a/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p0, v1, v0}, Lcom/oplus/shield/authcode/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    move-object v8, v9

    :goto_1
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {p1, p2}, Lcom/oplus/shield/a/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {p1}, Lcom/oplus/shield/b/d;->a(Ljava/lang/String;)V

    return p0
.end method
