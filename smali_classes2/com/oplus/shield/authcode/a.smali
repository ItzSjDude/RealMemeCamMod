.class public Lcom/oplus/shield/authcode/a;
.super Ljava/lang/Object;
.source "AuthCache.java"


# instance fields
.field private a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/oplus/shield/authcode/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# virtual methods
.method public a(Ljava/lang/String;Lcom/oplus/shield/authcode/a/a;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-virtual {p2}, Lcom/oplus/shield/authcode/a/a;->f()V

    .line 56
    invoke-virtual {p2}, Lcom/oplus/shield/authcode/a/a;->c()V

    .line 57
    invoke-virtual {p2, p3}, Lcom/oplus/shield/authcode/a/a;->a(Ljava/lang/String;)V

    .line 58
    iget-object p0, p0, Lcom/oplus/shield/authcode/a;->a:Landroid/util/LruCache;

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/shield/authcode/a;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/oplus/shield/authcode/a;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oplus/shield/b/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/oplus/shield/authcode/a;->b:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/oplus/shield/authcode/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/shield/authcode/a/a;

    move-result-object v0

    .line 41
    iget-object p0, p0, Lcom/oplus/shield/authcode/a;->a:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/shield/authcode/a/a;

    const/4 p1, 0x0

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/shield/authcode/a/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    return p1

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/shield/authcode/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    return p1

    .line 51
    :cond_2
    invoke-virtual {v0}, Lcom/oplus/shield/authcode/a/a;->a()[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/shield/authcode/a/a;->a()[B

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oplus/shield/authcode/a;->a:Landroid/util/LruCache;

    invoke-virtual {p0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/shield/authcode/a/a;

    if-eqz p0, :cond_0

    const-string p2, "tingle"

    .line 64
    invoke-virtual {p0, p2, p1}, Lcom/oplus/shield/authcode/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
