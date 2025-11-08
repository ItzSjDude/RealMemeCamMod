.class public Lcom/oplus/camera/g/a/h;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# direct methods
.method public static a(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static a(I)J
    .locals 2

    and-int/lit8 p0, p0, -0x1

    int-to-long v0, p0

    return-wide v0
.end method

.method public static a(J)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 19
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "[0x%X ; %d]"

    if-eqz v0, :cond_1

    .line 20
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p0, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 24
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p0, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 27
    :cond_2
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    .line 28
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p0, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 31
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/g/a/b;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/g/a/b;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/g/a/b;

    .line 58
    new-instance v2, Lcom/oplus/camera/g/a/b;

    invoke-direct {v2, v1}, Lcom/oplus/camera/g/a/b;-><init>(Lcom/oplus/camera/g/a/b;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/util/List;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 47
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
