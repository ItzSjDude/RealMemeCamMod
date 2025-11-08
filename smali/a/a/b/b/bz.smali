.class public La/a/b/b/bz;
.super La/a/b/b/a/b;


# instance fields
.field public q:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 1

    const-string v0, "high_throughput"

    invoke-static {v0}, La/a/b/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, La/a/b/b/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    const p1, 0x3f666666    # 0.9f

    iput p1, p0, La/a/b/b/bz;->q:F

    return-void
.end method


# virtual methods
.method public j()V
    .locals 2

    invoke-super {p0}, La/a/b/b/a/b;->j()V

    iget v0, p0, La/a/b/b/bz;->q:F

    const-string v1, "threshold"

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    return-void
.end method
