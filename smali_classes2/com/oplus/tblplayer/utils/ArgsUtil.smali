.class public Lcom/oplus/tblplayer/utils/ArgsUtil;
.super Ljava/lang/Object;
.source "ArgsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static safeGet([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 16
    array-length v0, p0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
