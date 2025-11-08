.class public abstract Lc/c/b/a/j;
.super Lc/c/b/a/c;
.source "ContinuationImpl.kt"

# interfaces
.implements Lc/f/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/a/c;",
        "Lc/f/b/g<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, v0}, Lc/c/b/a/j;-><init>(ILc/c/d;)V

    return-void
.end method

.method public constructor <init>(ILc/c/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc/c/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p2}, Lc/c/b/a/c;-><init>(Lc/c/d;)V

    iput p1, p0, Lc/c/b/a/j;->arity:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 0

    .line 157
    iget p0, p0, Lc/c/b/a/j;->arity:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lc/c/b/a/j;->getCompletion()Lc/c/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    check-cast p0, Lc/f/b/g;

    invoke-static {p0}, Lc/f/b/k;->a(Lc/f/b/g;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Reflection.renderLambdaToString(this)"

    invoke-static {p0, v0}, Lc/f/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-super {p0}, Lc/c/b/a/c;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
