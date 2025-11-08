.class public Lc/d/a;
.super Ljava/lang/Object;
.source "PlatformImplementations.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lc/g/c;
    .locals 0

    .line 45
    new-instance p0, Lc/g/b;

    invoke-direct {p0}, Lc/g/b;-><init>()V

    check-cast p0, Lc/g/c;

    return-object p0
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    const-string p0, "cause"

    invoke-static {p1, p0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "exception"

    invoke-static {p2, p0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object p0, Lc/d/a$a;->a:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
