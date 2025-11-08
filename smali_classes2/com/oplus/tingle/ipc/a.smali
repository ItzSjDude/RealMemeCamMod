.class public Lcom/oplus/tingle/ipc/a;
.super Ljava/lang/Object;
.source "Engine.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/oplus/tingle/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-static {p0}, Lcom/oplus/tingle/ipc/b;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    .line 27
    invoke-static {p0}, Lcom/oplus/tingle/ipc/a;->c(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29
    invoke-static {p0}, Lcom/oplus/tingle/ipc/a;->d(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static c(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 6

    const-string v0, "Engine"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {}, Lcom/oplus/tingle/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p0, :cond_1

    :try_start_1
    const-string v3, "Get query cursor null."

    .line 39
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/oplus/tingle/ipc/c/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 43
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    return-object v2

    .line 42
    :cond_1
    :try_start_3
    invoke-static {p0}, Lcom/oplus/tingle/ipc/a/a;->a(Landroid/database/Cursor;)Landroid/os/IBinder;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_2

    .line 43
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    return-object v3

    :catchall_0
    move-exception v3

    move-object v4, v2

    goto :goto_0

    :catch_0
    move-exception v3

    .line 35
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    :goto_0
    if-eqz p0, :cond_4

    if-eqz v4, :cond_3

    .line 43
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_7
    invoke-virtual {v4, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception p0

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Close cursor failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/oplus/tingle/ipc/c/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method private static d(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 3

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 51
    invoke-static {}, Lcom/oplus/tingle/a;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "sendBinder"

    invoke-virtual {p0, v0, v2, v1, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 53
    invoke-static {}, Lcom/oplus/tingle/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 55
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Engine"

    const-string v2, "Get Master IBinder from provider call is null"

    invoke-static {v0, v2, p0}, Lcom/oplus/tingle/ipc/c/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method
