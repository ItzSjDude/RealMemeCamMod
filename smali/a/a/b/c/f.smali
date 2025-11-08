.class public La/a/b/c/f;
.super La/a/b/c/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/b/c/f$a;
    }
.end annotation


# instance fields
.field public e:La/a/b/c/f$a;

.field public f:La/a/b/f/y$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/b/c/d;-><init>()V

    return-void
.end method

.method public static a(La/a/b/c/d;)La/a/b/c/f;
    .locals 2

    new-instance v0, La/a/b/c/f;

    invoke-direct {v0}, La/a/b/c/f;-><init>()V

    iget v1, p0, La/a/b/c/d;->a:I

    iput v1, v0, La/a/b/c/d;->a:I

    iget v1, p0, La/a/b/c/d;->b:I

    iput v1, v0, La/a/b/c/d;->b:I

    iget v1, p0, La/a/b/c/d;->c:I

    iput v1, v0, La/a/b/c/d;->c:I

    iget p0, p0, La/a/b/c/d;->d:I

    iput p0, v0, La/a/b/c/d;->d:I

    return-object v0
.end method
