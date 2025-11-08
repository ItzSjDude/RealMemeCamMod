.class public La/a/b/b/a;
.super La/a/b/b/a/b;


# instance fields
.field public q:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 1

    const-string v0, "lookup_export_filter"

    invoke-static {v0}, La/a/b/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, La/a/b/b/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    const/4 p1, 0x0

    iput p1, p0, La/a/b/b/a;->q:F

    return-void
.end method


# virtual methods
.method public j()V
    .locals 2

    invoke-super {p0}, La/a/b/b/a/b;->j()V

    iget v0, p0, La/a/b/b/a/a;->b:I

    const-string v1, "lut_color_space"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, La/a/b/b/a;->q:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, La/a/b/b/a/a;->b:I

    const-string v1, "img_size"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object p0, p0, Lco/polarr/renderer/entities/Context;->imageTexture:La/a/b/c/d;

    iget v1, p0, La/a/b/c/d;->b:I

    int-to-float v1, v1

    iget p0, p0, La/a/b/c/d;->c:I

    int-to-float p0, p0

    invoke-static {v0, v1, p0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method

.method public l()Z
    .locals 0

    iget-object p0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-boolean p0, p0, Lco/polarr/renderer/entities/Context;->isLutRender:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
