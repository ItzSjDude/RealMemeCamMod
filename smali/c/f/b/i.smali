.class public abstract Lc/f/b/i;
.super Ljava/lang/Object;
.source "Lambda.kt"

# interfaces
.implements Lc/f/b/g;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/f/b/g<",
        "TR;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/f/b/i;->arity:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 0

    .line 10
    iget p0, p0, Lc/f/b/i;->arity:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 11
    invoke-static {p0}, Lc/f/b/k;->a(Lc/f/b/i;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Reflection.renderLambdaToString(this)"

    invoke-static {p0, v0}, Lc/f/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
