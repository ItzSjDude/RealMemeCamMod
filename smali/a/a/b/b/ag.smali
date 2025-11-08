.class public La/a/b/b/ag;
.super La/a/b/b/a/b;


# instance fields
.field public q:F

.field public r:Landroid/graphics/PointF;

.field public s:F

.field public t:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 1

    const-string v0, "fringing"

    invoke-static {v0}, La/a/b/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, La/a/b/b/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    const p1, 0x3e23d70a    # 0.16f

    iput p1, p0, La/a/b/b/ag;->q:F

    new-instance p1, Landroid/graphics/PointF;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, La/a/b/b/ag;->r:Landroid/graphics/PointF;

    const p1, 0x3f4ccccd    # 0.8f

    iput p1, p0, La/a/b/b/ag;->s:F

    const p1, 0x3ecccccd    # 0.4f

    iput p1, p0, La/a/b/b/ag;->t:F

    const-string p1, "fringing2_vertex"

    invoke-static {p1}, La/a/b/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La/a/b/b/a/b;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public j()V
    .locals 3

    invoke-super {p0}, La/a/b/b/a/b;->j()V

    iget v0, p0, La/a/b/b/ag;->q:F

    const-string v1, "fringing"

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    iget-object v0, p0, La/a/b/b/ag;->r:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const-string v2, "fringing_center"

    invoke-virtual {p0, v2, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;FF)V

    iget v0, p0, La/a/b/b/ag;->s:F

    const-string v1, "fringing_radius"

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    iget v0, p0, La/a/b/b/ag;->t:F

    const-string v1, "fringing_radius_inner"

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    return-void
.end method
