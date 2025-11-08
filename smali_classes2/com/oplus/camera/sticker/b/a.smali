.class public Lcom/oplus/camera/sticker/b/a;
.super Ljava/lang/Object;
.source "HttpRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/sticker/b/a$a;,
        Lcom/oplus/camera/sticker/b/a$c;,
        Lcom/oplus/camera/sticker/b/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/sticker/b/a;->a:Landroid/content/Context;

    .line 52
    iput-object p1, p0, Lcom/oplus/camera/sticker/b/a;->a:Landroid/content/Context;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/multi_app/all_sticker.pb?audit_status="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a()Lokhttp3/OkHttpClient;
    .locals 1

    .line 69
    invoke-static {}, Lcom/oplus/camera/sticker/b/b;->a()Lcom/oplus/camera/sticker/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/b/b;->b()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-static {p1}, Lcom/oplus/camera/l/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 56
    invoke-virtual {p0, p1}, Lcom/oplus/camera/sticker/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/oplus/camera/sticker/b/a;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 0

    .line 292
    invoke-static {}, Lcom/oplus/camera/sticker/b/a;->a()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/oplus/camera/sticker/b/a$b;Ljava/lang/String;Ljava/util/Map;Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/camera/sticker/b/a$b;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            ")",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 88
    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 90
    sget-object p2, Lcom/oplus/camera/sticker/b/a$b;->POST:Lcom/oplus/camera/sticker/b/a$b;

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    .line 91
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 92
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 93
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p3, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_2

    .line 98
    invoke-virtual {p0, p4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    .line 104
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public a([B)Lokhttp3/RequestBody;
    .locals 0

    const-string p0, "application/x-protobuf"

    .line 108
    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    invoke-static {p0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public a(Lokhttp3/Call;Lcom/oplus/camera/sticker/b/a$c;)V
    .locals 1

    .line 161
    new-instance v0, Lcom/oplus/camera/sticker/b/a$1;

    invoke-direct {v0, p0, p2}, Lcom/oplus/camera/sticker/b/a$1;-><init>(Lcom/oplus/camera/sticker/b/a;Lcom/oplus/camera/sticker/b/a$c;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public a(Lokhttp3/Request;Lcom/oplus/camera/sticker/b/a$c;)V
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/oplus/camera/sticker/b/a;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/sticker/b/a;->a(Lokhttp3/Call;Lcom/oplus/camera/sticker/b/a$c;)V

    return-void
.end method

.method public a(Lokhttp3/Request;Ljava/lang/String;Lcom/oplus/camera/sticker/b/a$a;)V
    .locals 1

    .line 217
    invoke-static {}, Lcom/oplus/camera/sticker/b/a;->a()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/oplus/camera/sticker/b/a$2;

    invoke-direct {v0, p0, p3, p2}, Lcom/oplus/camera/sticker/b/a$2;-><init>(Lcom/oplus/camera/sticker/b/a;Lcom/oplus/camera/sticker/b/a$a;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
