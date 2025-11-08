.class public Lc/f/b/l;
.super Ljava/lang/Object;
.source "ReflectionFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lc/i/a;
    .locals 0

    .line 30
    new-instance p0, Lc/f/b/d;

    invoke-direct {p0, p1}, Lc/f/b/d;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public a(Lc/f/b/g;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "kotlin.jvm.functions."

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public a(Lc/f/b/i;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lc/f/b/l;->a(Lc/f/b/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
