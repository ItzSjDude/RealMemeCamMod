.class public final Lorg/a/d$a;
.super Ljava/lang/Object;
.source "Description.java"

# interfaces
.implements Lorg/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lorg/a/d;
    .locals 0

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lorg/a/d;
    .locals 0

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/a/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/a/h;",
            ">;)",
            "Lorg/a/d;"
        }
    .end annotation

    return-object p0
.end method

.method public a(Lorg/a/h;)Lorg/a/d;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
