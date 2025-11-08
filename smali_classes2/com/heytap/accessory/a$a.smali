.class final Lcom/heytap/accessory/a$a;
.super Ljava/lang/Object;
.source "RegistrationTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/a;


# direct methods
.method private constructor <init>(Lcom/heytap/accessory/a;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/heytap/accessory/a$a;->a:Lcom/heytap/accessory/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/accessory/a;B)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/heytap/accessory/a$a;-><init>(Lcom/heytap/accessory/a;)V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/heytap/accessory/a$a;->a:Lcom/heytap/accessory/a;

    invoke-static {v0}, Lcom/heytap/accessory/a;->a(Lcom/heytap/accessory/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/accessory/BaseAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/heytap/accessory/BaseAdapter;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V

    .line 78
    iget-object v1, p0, Lcom/heytap/accessory/a$a;->a:Lcom/heytap/accessory/a;

    invoke-static {v1}, Lcom/heytap/accessory/a;->a(Lcom/heytap/accessory/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/accessory/b/h;->a(Landroid/content/Context;)Lcom/heytap/accessory/b/h;

    move-result-object v1

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/heytap/accessory/a$a;->a:Lcom/heytap/accessory/a;

    invoke-static {v2}, Lcom/heytap/accessory/a;->a(Lcom/heytap/accessory/a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/b/h;->a(Ljava/lang/String;)[[B

    move-result-object v1
    :try_end_0
    .catch Lcom/heytap/accessory/b/f; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 88
    invoke-static {}, Lcom/heytap/accessory/a;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "xmlArray is null"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 91
    :cond_0
    invoke-static {}, Lcom/heytap/accessory/a;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xmlArray.length="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 92
    :goto_0
    array-length v6, v1

    if-ge v4, v6, :cond_4

    .line 94
    :try_start_1
    aget-object v6, v1, v4

    invoke-virtual {v0, v6}, Lcom/heytap/accessory/BaseAdapter;->registerServices([B)V

    .line 95
    invoke-static {}, Lcom/heytap/accessory/a;->c()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Services Registered successfully!"

    invoke-static {v6, v7}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    array-length v5, v1
    :try_end_1
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v3

    .line 101
    :goto_1
    iget-object v6, p0, Lcom/heytap/accessory/a$a;->a:Lcom/heytap/accessory/a;

    monitor-enter v6

    if-eqz v5, :cond_2

    .line 103
    :try_start_2
    iget-object v7, p0, Lcom/heytap/accessory/a$a;->a:Lcom/heytap/accessory/a;

    invoke-static {v7}, Lcom/heytap/accessory/a;->b(Lcom/heytap/accessory/a;)Z

    .line 105
    :cond_2
    monitor-exit v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 98
    :try_start_3
    invoke-static {}, Lcom/heytap/accessory/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Registration failed!"

    invoke-static {v1, v2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    :goto_2
    iget-object v1, p0, Lcom/heytap/accessory/a$a;->a:Lcom/heytap/accessory/a;

    monitor-enter v1

    if-eqz v5, :cond_3

    .line 103
    :try_start_4
    iget-object p0, p0, Lcom/heytap/accessory/a$a;->a:Lcom/heytap/accessory/a;

    invoke-static {p0}, Lcom/heytap/accessory/a;->b(Lcom/heytap/accessory/a;)Z

    .line 105
    :cond_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 106
    throw v0

    :catchall_2
    move-exception p0

    .line 105
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_4
    return-object v2

    :catch_1
    move-exception p0

    .line 83
    invoke-static {}, Lcom/heytap/accessory/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/heytap/accessory/a$a;->a()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
