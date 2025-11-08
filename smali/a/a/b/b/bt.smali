.class public La/a/b/b/bt;
.super La/a/b/b/a/b;


# instance fields
.field public q:F

.field public r:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 1

    const-string v0, "gausspyd"

    invoke-static {v0}, La/a/b/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, La/a/b/b/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    return-void
.end method


# virtual methods
.method public d(II)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, La/a/b/b/bt;->q:F

    int-to-float p1, p2

    iput p1, p0, La/a/b/b/bt;->r:F

    return-void
.end method

.method public j()V
    .locals 2

    invoke-super {p0}, La/a/b/b/a/b;->j()V

    iget v0, p0, La/a/b/b/a/a;->b:I

    const-string v1, "size"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, La/a/b/b/bt;->q:F

    iget p0, p0, La/a/b/b/bt;->r:F

    invoke-static {v0, v1, p0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method
