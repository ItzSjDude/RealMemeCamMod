.class public final Lorg/a/a/b$b;
.super Ljava/lang/Object;
.source "CombinableMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lorg/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/f<",
            "-TX;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/f<",
            "-TX;>;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/a/a/b$b;->a:Lorg/a/f;

    return-void
.end method
