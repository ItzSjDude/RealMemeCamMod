.class public Lco/polarr/renderer/PolarrRender;
.super Ljava/lang/Object;


# static fields
.field public static final EXTERNAL_OES:I = 0x1

.field public static final TEXTURE_2D:I


# instance fields
.field public instance:La/a/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/b/d;

    invoke-direct {v0}, La/a/b/d;-><init>()V

    iput-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    return-void
.end method

.method public static SetStaticResPath(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, La/a/b/b/bo;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static Version()Ljava/lang/String;
    .locals 1

    const-string v0, "1.7.4_op_camera"

    return-object v0
.end method

.method public static clearTextureHelper(III)V
    .locals 0

    invoke-static {p0, p1, p2}, La/a/b/a;->a(III)V

    return-void
.end method

.method public static enableLogger(Z)V
    .locals 0

    invoke-static {p0}, La/a/b/a;->a(Z)V

    return-void
.end method

.method public static getRenderStatesFromJson(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, La/a/b/a;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static magicEraserOneTime(Landroid/content/res/Resources;IIILco/polarr/renderer/entities/MagicEraserPath;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lco/polarr/renderer/PolarrRender;->magicEraserOneTime(Landroid/content/res/Resources;IIILco/polarr/renderer/entities/MagicEraserPath;FFF)V

    return-void
.end method

.method public static magicEraserOneTime(Landroid/content/res/Resources;IIILco/polarr/renderer/entities/MagicEraserPath;FFF)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p7, v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lco/polarr/renderer/entities/MagicEraserPath;->copy()Lco/polarr/renderer/entities/MagicEraserPath;

    move-result-object p4

    iget-object v0, p4, Lco/polarr/renderer/entities/MagicEraserPath;->points:Ljava/util/List;

    invoke-static {v0, p5, p6, p7}, La/a/b/d;->a(Ljava/util/List;FFF)Ljava/util/List;

    move-result-object p5

    iput-object p5, p4, Lco/polarr/renderer/entities/MagicEraserPath;->points:Ljava/util/List;

    iget p5, p4, Lco/polarr/renderer/entities/MagicEraserPath;->radius:F

    div-float/2addr p5, p7

    iput p5, p4, Lco/polarr/renderer/entities/MagicEraserPath;->radius:F

    :cond_0
    move-object v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, La/a/b/a;->a(Landroid/content/res/Resources;IIILco/polarr/renderer/entities/MagicEraserPath;I)V

    return-void
.end method

.method public static magicEraserOneTimeCompatible(Landroid/content/res/Resources;IIILco/polarr/renderer/entities/MagicEraserPath;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, La/a/b/a;->a(Landroid/content/res/Resources;IIILco/polarr/renderer/entities/MagicEraserPath;I)V

    return-void
.end method

.method public static renderBitmaps(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, La/a/b/a;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static renderBitmaps(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/util/List;F)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;F)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, La/a/b/a;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/util/List;FF)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static renderBitmaps(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/util/List;FF)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;FF)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, La/a/b/a;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/util/List;FF)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static renderNV12(Landroid/content/Context;[BIILjava/lang/String;FZ)[B
    .locals 0

    invoke-static/range {p0 .. p6}, La/a/b/a;->b(Landroid/content/Context;[BIILjava/lang/String;FZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static renderNV21(Landroid/content/Context;[BIILjava/lang/String;FZ)[B
    .locals 0

    invoke-static/range {p0 .. p6}, La/a/b/a;->a(Landroid/content/Context;[BIILjava/lang/String;FZ)[B

    const/4 p0, 0x0

    throw p0
.end method

.method public static setupVignetteParams(FFFFFF)V
    .locals 0

    invoke-static/range {p0 .. p5}, La/a/b/a;->a(FFFFFF)V

    return-void
.end method

.method public static updateGlobalScreenOrientation(I)V
    .locals 1

    const-class v0, Lco/polarr/renderer/PolarrRender;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, La/a/b/a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class p0, Lco/polarr/renderer/PolarrRender;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p0

    const-class v0, Lco/polarr/renderer/PolarrRender;

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addBrushPathPoint(Lco/polarr/renderer/entities/BrushItem;Landroid/graphics/PointF;)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1, p2}, La/a/b/d;->a(Lco/polarr/renderer/entities/BrushItem;Landroid/graphics/PointF;)V

    return-void
.end method

.method public autoEnhanceFace(Ljava/util/Map;IFZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;IFZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1, p2, p3, p4}, La/a/b/d;->a(Ljava/util/Map;IFZ)V

    return-void
.end method

.method public autoEnhanceGlobal(F)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, La/a/b/d;->a(FLjava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public autoEnhanceGlobal(FLjava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1, p2}, La/a/b/d;->a(FLjava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public autoEnhanceGlobalForFace(F)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->a(F)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public brushPaintAdd(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->a(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public brushPaintFinish()V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->d()V

    return-void
.end method

.method public brushStart(Lco/polarr/renderer/entities/BrushItem;)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->a(Lco/polarr/renderer/entities/BrushItem;)V

    return-void
.end method

.method public clearTexture(III)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1, p2, p3}, La/a/b/d;->a(III)V

    return-void
.end method

.method public clearThumbCache()V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->e()V

    return-void
.end method

.method public combine(II)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1, p2}, La/a/b/d;->a(II)V

    return-void
.end method

.method public createInputTexture()V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->f()V

    return-void
.end method

.method public drawFiltersFrame(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;I)V"
        }
    .end annotation

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1, p2}, La/a/b/d;->a(Ljava/util/List;I)V

    return-void
.end method

.method public drawFiltersFrame(Ljava/util/List;IZFFF)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;IZFFF)V"
        }
    .end annotation

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, La/a/b/d;->a(Ljava/util/List;IZFFF)V

    return-void
.end method

.method public drawFrame()V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->h()V

    return-void
.end method

.method public drawFrameWithVignette()V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->i()V

    return-void
.end method

.method public enableBloom(Z)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->b(Z)V

    return-void
.end method

.method public enableCA(Z)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->c(Z)V

    return-void
.end method

.method public enableDemoire(Z)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->d(Z)V

    return-void
.end method

.method public enableGlitch(Z)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->e(Z)V

    return-void
.end method

.method public enablePacman(Z)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->f(Z)V

    return-void
.end method

.method public enableRealTimeAutoEnhancement(Z)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->g(Z)V

    return-void
.end method

.method public fastAutoEnhancement(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->h(Z)V

    return-void
.end method

.method public fastRenderBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1, p2}, La/a/b/d;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public fastRenderBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;F)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1, p2, p3}, La/a/b/d;->a(Landroid/graphics/Bitmap;Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public fastUpdateFilter(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public fastUpdateFilter(Ljava/lang/String;F)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1, p2}, La/a/b/d;->b(Ljava/lang/String;F)V

    return-void
.end method

.method public fastUpdateLutsFilter(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/LutItem;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->b(Ljava/util/List;)V

    return-void
.end method

.method public fastUseCombineLut()V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->l()V

    return-void
.end method

.method public getBrushLastPaint()I
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->m()I

    move-result p0

    return p0
.end method

.method public getGlitchSeed()I
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->n()I

    move-result p0

    return p0
.end method

.method public getLookup2DFilter()La/a/b/b/bo;
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->o()La/a/b/b/bo;

    move-result-object p0

    return-object p0
.end method

.method public getOutputId()I
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->p()I

    move-result p0

    return p0
.end method

.method public getPacmanFilter()Lco/polarr/renderer/PacmanFilter;
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->q()Lco/polarr/renderer/PacmanFilter;

    move-result-object p0

    return-object p0
.end method

.method public getTextureId()I
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->r()I

    move-result p0

    return p0
.end method

.method public initAllFilters()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->s()V

    return-void
.end method

.method public initRender(Landroid/content/res/Resources;IIZ)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1, p2, p3, p4}, La/a/b/d;->a(Landroid/content/res/Resources;IIZ)V

    return-void
.end method

.method public initRender(Landroid/content/res/Resources;IIZI)V
    .locals 6

    iget-object v0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, La/a/b/d;->a(Landroid/content/res/Resources;IIZI)V

    return-void
.end method

.method public isUseVignette()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public loadPacManResource()V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->t()V

    return-void
.end method

.method public magicEraserPathOverLay(Lco/polarr/renderer/entities/MagicEraserPath;III)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1, p2, p3, p4}, La/a/b/d;->a(Lco/polarr/renderer/entities/MagicEraserPath;III)V

    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->u()V

    return-void
.end method

.method public releaseGLRes()V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->x()V

    return-void
.end method

.method public releaseNonGLRes()V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->z()V

    return-void
.end method

.method public renderBitmap(Landroid/graphics/Bitmap;Ljava/util/Map;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1, p2}, La/a/b/d;->a(Landroid/graphics/Bitmap;Ljava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public setBrushLastPaintingTex(I)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->a(I)V

    return-void
.end method

.method public setFilterIntensity(F)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->b(F)V

    return-void
.end method

.method public setGlitchSeed(I)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->b(I)V

    return-void
.end method

.method public setGrainAmount(F)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->c(F)V

    return-void
.end method

.method public setInputTexture(I)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->c(I)V

    return-void
.end method

.method public setNeedDrawScreen(Z)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->j(Z)V

    return-void
.end method

.method public setOutputTexture(I)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->d(I)V

    return-void
.end method

.method public setUseVignette(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public updateBrushPoints(Lco/polarr/renderer/entities/BrushItem;)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->b(Lco/polarr/renderer/entities/BrushItem;)V

    return-void
.end method

.method public updateFaces(Ljava/util/List;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/FaceItem;",
            ">;F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1, p2}, La/a/b/d;->a(Ljava/util/List;F)V

    return-void
.end method

.method public updateInputTexture()V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->b()V

    return-void
.end method

.method public updateOffsetScale(FFF)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1, p2, p3}, La/a/b/d;->a(FFF)V

    return-void
.end method

.method public updateSize(II)V
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1, p2}, La/a/b/d;->c(II)V

    return-void
.end method

.method public updateStates(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public updateStates(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lco/polarr/renderer/PolarrRender;->instance:La/a/b/d;

    invoke-virtual {p0, p1}, La/a/b/d;->b(Ljava/util/Map;)V

    return-void
.end method
