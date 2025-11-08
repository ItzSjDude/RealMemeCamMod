.class public La/a/b/f/o;
.super Ljava/lang/Object;


# instance fields
.field public a:[La/a/b/c/d;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [La/a/b/c/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iput-object v0, p0, La/a/b/f/o;->a:[La/a/b/c/d;

    iput v2, p0, La/a/b/f/o;->b:I

    return-void
.end method


# virtual methods
.method public a()La/a/b/c/d;
    .locals 1

    iget-object v0, p0, La/a/b/f/o;->a:[La/a/b/c/d;

    iget p0, p0, La/a/b/f/o;->b:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public a(La/a/b/c/d;La/a/b/c/d;)V
    .locals 2

    iget-object v0, p0, La/a/b/f/o;->a:[La/a/b/c/d;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    iput v1, p0, La/a/b/f/o;->b:I

    return-void
.end method

.method public b()La/a/b/c/d;
    .locals 2

    iget-object v0, p0, La/a/b/f/o;->a:[La/a/b/c/d;

    iget p0, p0, La/a/b/f/o;->b:I

    add-int/lit8 p0, p0, 0x1

    array-length v1, v0

    rem-int/2addr p0, v1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public c()V
    .locals 2

    iget v0, p0, La/a/b/f/o;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, La/a/b/f/o;->a:[La/a/b/c/d;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, La/a/b/f/o;->b:I

    return-void
.end method
