.class public Lcom/oplus/statistics/d/a;
.super Ljava/lang/Object;
.source "MemoryPreference.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/statistics/d/a;->a:Ljava/util/Map;

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/NumberFormatException;)Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInt key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", exception="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/NumberFormatException;)Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLong key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", exception="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$7TiW2JTjmCtRUrOfwBFxyKeuSEs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/NumberFormatException;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/statistics/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/NumberFormatException;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$KQpm2XCU6ZhIY0zoE370SZfZbNk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/NumberFormatException;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/statistics/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/NumberFormatException;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 2

    .line 43
    iget-object p0, p0, Lcom/oplus/statistics/d/a;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 49
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Lcom/oplus/statistics/d/-$$Lambda$a$7TiW2JTjmCtRUrOfwBFxyKeuSEs;

    invoke-direct {v1, p1, p0, v0}, Lcom/oplus/statistics/d/-$$Lambda$a$7TiW2JTjmCtRUrOfwBFxyKeuSEs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/NumberFormatException;)V

    const-string p0, "MemoryPreference"

    invoke-static {p0, v1}, Lcom/oplus/statistics/f/d;->b(Ljava/lang/String;Lcom/oplus/statistics/f/e;)V

    return p2
.end method

.method public a(Ljava/lang/String;J)J
    .locals 2

    .line 24
    iget-object p0, p0, Lcom/oplus/statistics/d/a;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p2

    .line 30
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception v0

    .line 32
    new-instance v1, Lcom/oplus/statistics/d/-$$Lambda$a$KQpm2XCU6ZhIY0zoE370SZfZbNk;

    invoke-direct {v1, p1, p0, v0}, Lcom/oplus/statistics/d/-$$Lambda$a$KQpm2XCU6ZhIY0zoE370SZfZbNk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/NumberFormatException;)V

    const-string p0, "MemoryPreference"

    invoke-static {p0, v1}, Lcom/oplus/statistics/f/d;->b(Ljava/lang/String;Lcom/oplus/statistics/f/e;)V

    return-wide p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/oplus/statistics/d/a;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p0, p2

    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/String;J)V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/statistics/d/a;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oplus/statistics/d/a;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;J)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oplus/statistics/d/a;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
