.class public Lcom/oplus/ocs/camera/BlurFilterLibraryHelper;
.super Ljava/lang/Object;
.source "BlurFilterLibraryHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OESTo2DTexture(I[I)I
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/sensetime/blur/BlurFilterLibrary;->OESTo2DTexture(I[I)I

    move-result p0

    return p0
.end method

.method public static ResizeTexture(IIII)I
    .locals 0

    .line 79
    invoke-static {p0, p1, p2, p3}, Lcom/sensetime/blur/BlurFilterLibrary;->ResizeTexture(IIII)I

    move-result p0

    return p0
.end method

.method public static copy2DTexture(I[I)I
    .locals 0

    .line 75
    invoke-static {p0, p1}, Lcom/sensetime/blur/BlurFilterLibrary;->copy2DTexture(I[I)I

    move-result p0

    return p0
.end method

.method public static destroy()I
    .locals 1

    .line 87
    invoke-static {}, Lcom/sensetime/blur/BlurFilterLibrary;->destroy()I

    move-result v0

    return v0
.end method

.method public static getMaskTextureByFace([Landroid/graphics/Rect;Z[FIIIZ)I
    .locals 0

    .line 41
    invoke-static/range {p0 .. p6}, Lcom/sensetime/blur/BlurFilterLibrary;->getMaskTextureByFace([Landroid/graphics/Rect;Z[FIIIZ)I

    move-result p0

    return p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 91
    invoke-static {}, Lcom/sensetime/blur/BlurFilterLibrary;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(II)I
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/sensetime/blur/BlurFilterLibrary;->init(II)I

    move-result p0

    return p0
.end method

.method public static processMaskBuffer([BIIZ[I)I
    .locals 0

    .line 28
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sensetime/blur/BlurFilterLibrary;->processMaskBuffer([BIIZ[I)I

    move-result p0

    return p0
.end method

.method public static processMaskTexture(III[I)I
    .locals 0

    .line 24
    invoke-static {p0, p1, p2, p3}, Lcom/sensetime/blur/BlurFilterLibrary;->processMaskTexture(III[I)I

    move-result p0

    return p0
.end method

.method public static processOESTexture(I[Landroid/graphics/Rect;Z[FIIIZ[I)I
    .locals 0

    .line 15
    invoke-static/range {p0 .. p8}, Lcom/sensetime/blur/BlurFilterLibrary;->processOESTexture(I[Landroid/graphics/Rect;Z[FIIIZ[I)I

    move-result p0

    return p0
.end method

.method public static processOESTextureByMask(IIIIZ[I)I
    .locals 0

    .line 59
    invoke-static/range {p0 .. p5}, Lcom/sensetime/blur/BlurFilterLibrary;->processOESTextureByMask(IIIIZ[I)I

    move-result p0

    return p0
.end method

.method public static processOESTexureByMaskGradual(IIIIZI[F[I)I
    .locals 0

    .line 66
    invoke-static/range {p0 .. p7}, Lcom/sensetime/blur/BlurFilterLibrary;->processOESTexureByMaskGradual(IIIIZI[F[I)I

    move-result p0

    return p0
.end method

.method public static processTexture(I[Landroid/graphics/Rect;Z[FIIIZ[I)I
    .locals 0

    .line 20
    invoke-static/range {p0 .. p8}, Lcom/sensetime/blur/BlurFilterLibrary;->processTexture(I[Landroid/graphics/Rect;Z[FIIIZ[I)I

    move-result p0

    return p0
.end method

.method public static processTextureByMask(IIIIZ[I)I
    .locals 0

    .line 46
    invoke-static/range {p0 .. p5}, Lcom/sensetime/blur/BlurFilterLibrary;->processTextureByMask(IIIIZ[I)I

    move-result p0

    return p0
.end method

.method public static processTexureByMaskGradual(IIIIZI[F[I)I
    .locals 0

    .line 53
    invoke-static/range {p0 .. p7}, Lcom/sensetime/blur/BlurFilterLibrary;->processTexureByMaskGradual(IIIIZI[F[I)I

    move-result p0

    return p0
.end method

.method public static rotateGradualTexture(IZZ)I
    .locals 0

    .line 36
    invoke-static {p0, p1, p2}, Lcom/sensetime/blur/BlurFilterLibrary;->rotateGradualTexture(IZZ)I

    move-result p0

    return p0
.end method

.method public static rotateMaskTexture(IZZ)I
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/sensetime/blur/BlurFilterLibrary;->rotateMaskTexture(IZZ)I

    move-result p0

    return p0
.end method

.method public static setDebug(Z)I
    .locals 0

    .line 95
    invoke-static {p0}, Lcom/sensetime/blur/BlurFilterLibrary;->setDebug(Z)I

    move-result p0

    return p0
.end method

.method public static setDebugMask(Z)I
    .locals 0

    .line 99
    invoke-static {p0}, Lcom/sensetime/blur/BlurFilterLibrary;->setDebugMask(Z)I

    move-result p0

    return p0
.end method

.method public static setParam(IF)I
    .locals 0

    .line 83
    invoke-static {p0, p1}, Lcom/sensetime/blur/BlurFilterLibrary;->setParam(IF)I

    move-result p0

    return p0
.end method
