.class public Lcom/heytap/accessory/b/d;
.super Ljava/lang/Object;
.source "ConfigUtil.java"


# static fields
.field private static final a:Ljava/lang/String; = "d"

.field private static b:Lcom/heytap/accessory/b/d;


# instance fields
.field private final c:Landroid/content/Context;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/heytap/accessory/bean/ServiceProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/heytap/accessory/b/d;->c:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/heytap/accessory/b/d;
    .locals 2

    const-class v0, Lcom/heytap/accessory/b/d;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/heytap/accessory/b/d;->b:Lcom/heytap/accessory/b/d;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcom/heytap/accessory/b/d;

    invoke-direct {v1, p0}, Lcom/heytap/accessory/b/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/heytap/accessory/b/d;->b:Lcom/heytap/accessory/b/d;

    .line 87
    :cond_0
    sget-object p0, Lcom/heytap/accessory/b/d;->b:Lcom/heytap/accessory/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized a()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/b/f;
        }
    .end annotation

    monitor-enter p0

    .line 49
    :try_start_0
    const-class v0, Lcom/heytap/accessory/b/d;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v1, p0, Lcom/heytap/accessory/b/d;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/heytap/accessory/b/h;->a(Landroid/content/Context;)Lcom/heytap/accessory/b/h;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/heytap/accessory/b/d;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/b/h;->a(Ljava/lang/String;)[[B

    move-result-object v1

    if-eqz v1, :cond_5

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-static {v5}, Lcom/heytap/accessory/b/h;->a([B)Ljava/util/List;

    move-result-object v5
    :try_end_2
    .catch Lcom/heytap/accessory/b/f; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_0

    .line 63
    :try_start_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 64
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 61
    new-instance v2, Lcom/heytap/accessory/b/f;

    invoke-direct {v2, v1}, Lcom/heytap/accessory/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 67
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heytap/accessory/bean/ServiceProfile;

    .line 68
    iget-object v3, p0, Lcom/heytap/accessory/b/d;->d:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 69
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/heytap/accessory/b/d;->d:Ljava/util/HashMap;

    .line 71
    :cond_2
    iget-object v3, p0, Lcom/heytap/accessory/b/d;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/heytap/accessory/bean/ServiceProfile;->getServiceImpl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 73
    :cond_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    :try_start_4
    sget-object v0, Lcom/heytap/accessory/b/d;->a:Ljava/lang/String;

    const-string v1, "End document"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/heytap/accessory/b/d;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 78
    sget-object v0, Lcom/heytap/accessory/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse the accessory services size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heytap/accessory/b/d;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 79
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 76
    :cond_4
    :try_start_5
    new-instance v0, Lcom/heytap/accessory/b/f;

    const-string v1, "Unable to parse the accessory services configuration file"

    invoke-direct {v0, v1}, Lcom/heytap/accessory/b/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 53
    :cond_5
    :try_start_6
    new-instance v1, Lcom/heytap/accessory/b/f;

    const-string v2, "readXml failed"

    invoke-direct {v1, v2}, Lcom/heytap/accessory/b/f;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 73
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/heytap/accessory/bean/ServiceProfile;
    .locals 2

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/b/d;->d:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 97
    :try_start_1
    invoke-direct {p0}, Lcom/heytap/accessory/b/d;->a()Z
    :try_end_1
    .catch Lcom/heytap/accessory/b/f; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    :try_start_2
    sget-object v1, Lcom/heytap/accessory/b/d;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/heytap/accessory/b/d;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heytap/accessory/b/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/heytap/accessory/b/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/accessory/bean/ServiceProfile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 106
    :cond_1
    :try_start_3
    sget-object v0, Lcom/heytap/accessory/b/d;->a:Ljava/lang/String;

    const-string v1, "fetchServicesDescription: Class not found in registered list"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, 0x0

    .line 107
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
