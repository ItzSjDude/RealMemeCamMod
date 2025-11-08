.class public Lcom/oplus/compat/os/ParcelNative;
.super Ljava/lang/Object;
.source "ParcelNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParcelNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readArraySet(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/util/ArraySet<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0

    .line 46
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {p0, p1}, Lcom/oplus/inner/os/ParcelWrapper;->readArraySet(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0

    .line 48
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    invoke-static {p0, p1}, Lcom/oplus/compat/os/ParcelNative;->readArraySetCompat(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    return-object p0

    .line 51
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method private static readArraySetCompat(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-static {p0}, Lcom/oplus/inner/os/ParcelWrapper;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 27
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    invoke-static {p0}, Lcom/oplus/compat/os/ParcelNative;->readStringArrayCompat(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 29
    :cond_2
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_3
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method private static readStringArrayCompat(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static writeArraySet(Landroid/os/Parcel;Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArraySet<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-static {p0, p1}, Lcom/oplus/inner/os/ParcelWrapper;->writeArraySet(Landroid/os/Parcel;Landroid/util/ArraySet;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-static {p0, p1}, Lcom/oplus/compat/os/ParcelNative;->writeArraySetCompat(Landroid/os/Parcel;Landroid/util/ArraySet;)V

    :goto_0
    return-void

    .line 70
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method private static writeArraySetCompat(Landroid/os/Parcel;Landroid/util/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArraySet<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
