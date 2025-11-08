.class public Lcom/heytap/accessory/b/h;
.super Ljava/lang/Object;
.source "ServiceXmlReader.java"


# static fields
.field private static final a:Ljava/lang/String; = "h"

.field private static b:Lcom/heytap/accessory/b/h;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 51
    iput-object p1, p0, Lcom/heytap/accessory/b/h;->c:Landroid/content/Context;

    return-void

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid context:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/heytap/accessory/b/h;
    .locals 2

    const-class v0, Lcom/heytap/accessory/b/h;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/heytap/accessory/b/h;->b:Lcom/heytap/accessory/b/h;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/heytap/accessory/b/h;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/heytap/accessory/b/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/heytap/accessory/b/h;->b:Lcom/heytap/accessory/b/h;

    .line 60
    :cond_0
    sget-object p0, Lcom/heytap/accessory/b/h;->b:Lcom/heytap/accessory/b/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a([B)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/heytap/accessory/bean/ServiceProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/b/f;
        }
    .end annotation

    const-class v0, Lcom/heytap/accessory/b/h;

    monitor-enter v0

    .line 90
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    sget-object v2, Lcom/heytap/accessory/b/h;->a:Ljava/lang/String;

    const-string v3, "Start parseServicesXML"

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-class v2, Lcom/heytap/accessory/b/h;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    array-length v5, p0

    invoke-direct {v3, p0, v4, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p0

    const/4 v4, 0x1

    .line 98
    invoke-virtual {p0, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 99
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 101
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 108
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    .line 111
    :cond_1
    :try_start_4
    new-instance v3, Lcom/heytap/accessory/b/b/a;

    invoke-direct {v3}, Lcom/heytap/accessory/b/b/a;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    :try_start_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_0
    if-eq v5, v4, :cond_4

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 116
    invoke-virtual {v3, p0}, Lcom/heytap/accessory/b/b/a;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 117
    invoke-virtual {v3}, Lcom/heytap/accessory/b/b/a;->b()Lcom/heytap/accessory/bean/ServiceProfile;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v3}, Lcom/heytap/accessory/b/b/a;->a()V

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 124
    invoke-virtual {v3, p0}, Lcom/heytap/accessory/b/b/a;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 113
    :cond_3
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 131
    :cond_4
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 132
    :try_start_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    .line 136
    sget-object p0, Lcom/heytap/accessory/b/h;->a:Ljava/lang/String;

    const-string v2, "End parse profile:"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 137
    monitor-exit v0

    return-object v1

    .line 133
    :cond_5
    :try_start_8
    sget-object p0, Lcom/heytap/accessory/b/h;->a:Ljava/lang/String;

    const-string v1, "End parse profile: Unable to parse the accessory services configuration file"

    invoke-static {p0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance p0, Lcom/heytap/accessory/b/f;

    const-string v1, "Unable to parse the accessory services configuration file"

    invoke-direct {p0, v1}, Lcom/heytap/accessory/b/f;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_0
    move-exception p0

    .line 128
    :try_start_9
    new-instance v1, Lcom/heytap/accessory/b/f;

    invoke-direct {v1, p0}, Lcom/heytap/accessory/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 104
    :catch_1
    new-instance p0, Lcom/heytap/accessory/b/f;

    const-string v1, "XmlPullParserFactory Exception for Accssory Service profile XML file"

    invoke-direct {p0, v1}, Lcom/heytap/accessory/b/f;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 131
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/b/f;
        }
    .end annotation

    const/4 v0, 0x0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/b/h;->c:Landroid/content/Context;

    const-string v2, "InternalAccessoryServicesLocation"

    invoke-static {v1, p1, v2}, Lcom/heytap/accessory/b/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/heytap/accessory/b/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 146
    sget-object v2, Lcom/heytap/accessory/b/h;->a:Ljava/lang/String;

    const-string v3, "get internalServiceConfig failed"

    invoke-static {v2, v3, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 150
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/heytap/accessory/b/h;->c:Landroid/content/Context;

    const-string v2, "AccessoryServicesLocation"

    invoke-static {p0, p1, v2}, Lcom/heytap/accessory/b/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lcom/heytap/accessory/b/f; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 152
    sget-object p1, Lcom/heytap/accessory/b/h;->a:Ljava/lang/String;

    const-string v2, "get serviceConfig failed"

    invoke-static {p1, v2, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_1
    if-nez v1, :cond_0

    if-nez p0, :cond_0

    .line 156
    sget-object p0, Lcom/heytap/accessory/b/h;->a:Ljava/lang/String;

    const-string p1, "No meta data found with key:AccessoryServicesLocation"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const-string p1, "internalServiceConfig : "

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez p0, :cond_1

    .line 159
    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v2

    .line 161
    sget-object p0, Lcom/heytap/accessory/b/h;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    .line 163
    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v2

    .line 165
    sget-object p1, Lcom/heytap/accessory/b/h;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "serviceConfig : "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    .line 167
    new-array v3, v3, [Ljava/lang/String;

    aput-object p0, v3, v2

    aput-object v1, v3, v0

    .line 170
    sget-object v0, Lcom/heytap/accessory/b/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " serviceConfig : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :goto_2
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)[[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/b/f;
        }
    .end annotation

    monitor-enter p0

    .line 64
    :try_start_0
    invoke-direct {p0, p1}, Lcom/heytap/accessory/b/h;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/heytap/accessory/b/h;->a:Ljava/lang/String;

    const-string v1, "configFileLocationGroup is empty,config error with "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 67
    monitor-exit p0

    return-object p1

    .line 69
    :cond_0
    :try_start_1
    array-length v1, v0

    new-array v1, v1, [[B

    const/4 v2, 0x0

    .line 70
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 71
    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 75
    iget-object v4, p0, Lcom/heytap/accessory/b/h;->c:Landroid/content/Context;

    invoke-static {v4, p1, v3}, Lcom/heytap/accessory/b/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
