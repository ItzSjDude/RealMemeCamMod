.class public La/a/b/f/z$c;
.super La/a/b/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/f/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/b/c/d;-><init>()V

    return-void
.end method

.method public static a(La/a/b/c/d;)La/a/b/f/z$c;
    .locals 2

    new-instance v0, La/a/b/f/z$c;

    invoke-direct {v0}, La/a/b/f/z$c;-><init>()V

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
