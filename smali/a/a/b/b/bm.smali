.class public La/a/b/b/bm;
.super La/a/b/b/a/b;

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public q:La/a/b/c/d;

.field public r:La/a/b/c/d;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 1

    const-string v0, "bloom"

    invoke-static {v0}, La/a/b/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, La/a/b/b/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, La/a/b/b/bm;->q:La/a/b/c/d;

    invoke-virtual {p0, v0}, La/a/b/b/a/a;->a(La/a/b/c/d;)V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/b/b/bm;->q:La/a/b/c/d;

    iget-object v1, p0, La/a/b/b/bm;->r:La/a/b/c/d;

    invoke-virtual {p0, v1}, La/a/b/b/a/a;->a(La/a/b/c/d;)V

    iput-object v0, p0, La/a/b/b/bm;->r:La/a/b/c/d;

    return-void
.end method

.method public d(II)La/a/b/c/d;
    .locals 2

    iget-object v0, p0, La/a/b/b/bm;->q:La/a/b/c/d;

    if-eqz v0, :cond_1

    iget v1, v0, La/a/b/c/d;->b:I

    if-ne v1, p1, :cond_0

    iget v0, v0, La/a/b/c/d;->c:I

    if-eq v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, La/a/b/b/bm;->q:La/a/b/c/d;

    invoke-virtual {p0, v0}, La/a/b/b/a/a;->a(La/a/b/c/d;)V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/b/b/bm;->q:La/a/b/c/d;

    :cond_1
    iget-object v0, p0, La/a/b/b/bm;->q:La/a/b/c/d;

    if-nez v0, :cond_2

    const/16 v0, 0x1908

    invoke-virtual {p0, p1, p2, v0}, La/a/b/b/a/a;->a(III)La/a/b/c/d;

    move-result-object p1

    iput-object p1, p0, La/a/b/b/bm;->q:La/a/b/c/d;

    :cond_2
    iget-object p0, p0, La/a/b/b/bm;->q:La/a/b/c/d;

    return-object p0
.end method

.method public e(II)La/a/b/c/d;
    .locals 2

    iget-object v0, p0, La/a/b/b/bm;->r:La/a/b/c/d;

    if-eqz v0, :cond_1

    iget v1, v0, La/a/b/c/d;->b:I

    if-ne v1, p1, :cond_0

    iget v0, v0, La/a/b/c/d;->c:I

    if-eq v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, La/a/b/b/bm;->r:La/a/b/c/d;

    invoke-virtual {p0, v0}, La/a/b/b/a/a;->a(La/a/b/c/d;)V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/b/b/bm;->r:La/a/b/c/d;

    :cond_1
    iget-object v0, p0, La/a/b/b/bm;->r:La/a/b/c/d;

    if-nez v0, :cond_2

    const/16 v0, 0x1908

    invoke-virtual {p0, p1, p2, v0}, La/a/b/b/a/a;->a(III)La/a/b/c/d;

    move-result-object p1

    iput-object p1, p0, La/a/b/b/bm;->r:La/a/b/c/d;

    :cond_2
    iget-object p0, p0, La/a/b/b/bm;->r:La/a/b/c/d;

    return-object p0
.end method

.method public e()V
    .locals 2

    invoke-super {p0}, La/a/b/b/a/a;->e()V

    iget-object v0, p0, La/a/b/b/bm;->q:La/a/b/c/d;

    invoke-virtual {p0}, La/a/b/b/a/a;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, La/a/b/b/a/a;->a(La/a/b/c/d;I)V

    invoke-virtual {p0}, La/a/b/b/a/a;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "blurTex"

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public j()V
    .locals 0

    invoke-super {p0}, La/a/b/b/a/b;->j()V

    return-void
.end method
