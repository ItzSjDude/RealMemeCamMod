.class Lcom/oplus/camera/o/a/g;
.super Ljava/lang/Object;
.source "RevGrayScale.java"

# interfaces
.implements Lcom/oplus/camera/o/a/a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)[B
    .locals 1

    const/4 p0, 0x0

    :goto_0
    mul-int v0, p2, p3

    if-ge p0, v0, :cond_0

    .line 14
    aget-byte v0, p1, p0

    rsub-int v0, v0, 0xff

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
