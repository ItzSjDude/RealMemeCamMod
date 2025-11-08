.class public final Lcom/oplus/tblplayer/utils/AssertUtil;
.super Ljava/lang/Object;
.source "AssertUtil.java"


# static fields
.field public static final ASSERTIONS_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    sget-boolean v0, Lcom/oplus/tblplayer/config/Globals;->DEBUG:Z

    sput-boolean v0, Lcom/oplus/tblplayer/utils/AssertUtil;->ASSERTIONS_ENABLED:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkArgument(Z)V
    .locals 1

    .line 29
    sget-boolean v0, Lcom/oplus/tblplayer/utils/AssertUtil;->ASSERTIONS_ENABLED:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static checkArgument(ZLjava/lang/Object;)V
    .locals 1

    .line 43
    sget-boolean v0, Lcom/oplus/tblplayer/utils/AssertUtil;->ASSERTIONS_ENABLED:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static checkIndex(III)I
    .locals 0

    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    return p0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static checkMainThread()V
    .locals 2

    .line 163
    sget-boolean v0, Lcom/oplus/tblplayer/utils/AssertUtil;->ASSERTIONS_ENABLED:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not in applications main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 133
    sget-boolean v0, Lcom/oplus/tblplayer/utils/AssertUtil;->ASSERTIONS_ENABLED:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 150
    sget-boolean v0, Lcom/oplus/tblplayer/utils/AssertUtil;->ASSERTIONS_ENABLED:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 100
    sget-boolean v0, Lcom/oplus/tblplayer/utils/AssertUtil;->ASSERTIONS_ENABLED:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 118
    sget-boolean v0, Lcom/oplus/tblplayer/utils/AssertUtil;->ASSERTIONS_ENABLED:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static checkState(Z)V
    .locals 1

    .line 71
    sget-boolean v0, Lcom/oplus/tblplayer/utils/AssertUtil;->ASSERTIONS_ENABLED:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static checkState(ZLjava/lang/Object;)V
    .locals 1

    .line 85
    sget-boolean v0, Lcom/oplus/tblplayer/utils/AssertUtil;->ASSERTIONS_ENABLED:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
