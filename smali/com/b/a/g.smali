.class public Lcom/b/a/g;
.super Ljava/lang/Object;
.source "O3DPHOTO_MODEL.java"


# instance fields
.field public a:[F

.field public b:[B

.field public c:[I

.field public d:[B

.field public e:I

.field public f:Z

.field public g:Z

.field public h:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/b/a/g;->a:[F

    .line 7
    iput-object v0, p0, Lcom/b/a/g;->b:[B

    .line 9
    iput-object v0, p0, Lcom/b/a/g;->c:[I

    .line 10
    iput-object v0, p0, Lcom/b/a/g;->d:[B

    const/4 v0, 0x3

    .line 11
    iput v0, p0, Lcom/b/a/g;->e:I

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/b/a/g;->f:Z

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/b/a/g;->g:Z

    return-void
.end method

.method public constructor <init>(Lcom/b/a/g;)V
    .locals 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/b/a/g;->a:[F

    .line 7
    iput-object v0, p0, Lcom/b/a/g;->b:[B

    .line 9
    iput-object v0, p0, Lcom/b/a/g;->c:[I

    .line 10
    iput-object v0, p0, Lcom/b/a/g;->d:[B

    const/4 v0, 0x3

    .line 11
    iput v0, p0, Lcom/b/a/g;->e:I

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/b/a/g;->f:Z

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/b/a/g;->g:Z

    .line 20
    iget-object v1, p1, Lcom/b/a/g;->a:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/b/a/g;->a:[F

    .line 21
    iget-object v1, p1, Lcom/b/a/g;->a:[F

    iget-object v2, p0, Lcom/b/a/g;->a:[F

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget-object v1, p1, Lcom/b/a/g;->b:[B

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/b/a/g;->b:[B

    .line 24
    iget-object v1, p1, Lcom/b/a/g;->b:[B

    iget-object v2, p0, Lcom/b/a/g;->b:[B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    iget-object v1, p1, Lcom/b/a/g;->d:[B

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/b/a/g;->d:[B

    .line 27
    iget-object v1, p1, Lcom/b/a/g;->d:[B

    iget-object v2, p0, Lcom/b/a/g;->d:[B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget v0, p1, Lcom/b/a/g;->e:I

    iput v0, p0, Lcom/b/a/g;->e:I

    .line 32
    iget-boolean p1, p1, Lcom/b/a/g;->f:Z

    iput-boolean p1, p0, Lcom/b/a/g;->f:Z

    return-void
.end method
