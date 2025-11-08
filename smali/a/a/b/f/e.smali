.class public La/a/b/f/e;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/b/f/e;->a:I

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, La/a/b/f/e;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    iget v0, p0, La/a/b/f/e;->a:I

    iget v1, p0, La/a/b/f/e;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iput v2, p0, La/a/b/f/e;->a:I

    return v3

    :cond_0
    add-int/2addr v0, v3

    iput v0, p0, La/a/b/f/e;->a:I

    return v2
.end method
