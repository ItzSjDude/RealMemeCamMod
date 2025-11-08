.class public Lorg/junit/AssumptionViolatedException;
.super Lorg/junit/internal/AssumptionViolatedException;
.source "AssumptionViolatedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/a/f<",
            "TT;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/junit/internal/AssumptionViolatedException;-><init>(Ljava/lang/Object;Lorg/a/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/junit/internal/AssumptionViolatedException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lorg/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lorg/a/f<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/junit/internal/AssumptionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/a/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/junit/internal/AssumptionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
