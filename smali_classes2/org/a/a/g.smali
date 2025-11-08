.class public Lorg/a/a/g;
.super Lorg/a/e;
.source "IsInstanceOf.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/a/e<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lorg/a/e;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/a/a/g;->a:Ljava/lang/Class;

    .line 27
    invoke-static {p1}, Lorg/a/a/g;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/a/a/g;->b:Ljava/lang/Class;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lorg/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/a/f<",
            "TT;>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lorg/a/a/g;

    invoke-direct {v0, p0}, Lorg/a/a/g;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private static b(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 31
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 32
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 33
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 34
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 35
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 36
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 37
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 38
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-class p0, Ljava/lang/Short;

    :cond_7
    return-object p0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Lorg/a/d;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "null"

    .line 45
    invoke-interface {p2, p0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    return v0

    .line 49
    :cond_0
    iget-object p0, p0, Lorg/a/a/g;->b:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 50
    invoke-interface {p2, p1}, Lorg/a/d;->a(Ljava/lang/Object;)Lorg/a/d;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " is a "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public describeTo(Lorg/a/d;)V
    .locals 1

    const-string v0, "an instance of "

    .line 59
    invoke-interface {p1, v0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    move-result-object p1

    iget-object p0, p0, Lorg/a/a/g;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    return-void
.end method
