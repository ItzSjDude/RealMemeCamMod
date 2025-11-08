.class public La/a/b/b/r;
.super La/a/b/b/a/b;


# instance fields
.field public q:F

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 1

    const-string v0, "vertical_stripes"

    invoke-static {v0}, La/a/b/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, La/a/b/b/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, La/a/b/b/r;->q:F

    const/4 p1, 0x0

    iput-boolean p1, p0, La/a/b/b/r;->r:Z

    return-void
.end method


# virtual methods
.method public j()V
    .locals 3

    invoke-super {p0}, La/a/b/b/a/b;->j()V

    iget-object v0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    invoke-static {v0}, La/a/b/f/h;->b(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    const-string v2, "imageSize"

    invoke-virtual {p0, v2, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;FF)V

    iget v0, p0, La/a/b/b/r;->q:F

    const-string v1, "strength"

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    iget-boolean v0, p0, La/a/b/b/r;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const-string v1, "axis"

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    return-void
.end method
