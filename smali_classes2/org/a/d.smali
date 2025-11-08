.class public interface abstract Lorg/a/d;
.super Ljava/lang/Object;
.source "Description.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/a/d$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lorg/a/d$a;

    invoke-direct {v0}, Lorg/a/d$a;-><init>()V

    sput-object v0, Lorg/a/d;->a:Lorg/a/d;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Lorg/a/d;
.end method

.method public abstract a(Ljava/lang/String;)Lorg/a/d;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/a/d;
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
.end method

.method public abstract a(Lorg/a/h;)Lorg/a/d;
.end method
