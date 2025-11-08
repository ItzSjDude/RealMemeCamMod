.class public abstract Lcom/oplus/camera/ui/menu/levelcontrol/b;
.super Landroid/view/TextureView;
.source "BaseScrollBar.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/levelcontrol/b$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/os/Handler;

.field protected b:Lcom/oplus/camera/gl/m;

.field protected c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

.field protected d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

.field protected e:Z

.field protected f:I

.field protected final g:Landroid/view/animation/Interpolator;

.field protected h:I

.field protected i:I

.field protected j:F

.field protected k:F

.field protected l:F

.field protected m:F

.field protected n:F

.field protected o:F

.field protected p:F

.field protected q:F

.field protected r:Z

.field protected s:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

.field protected t:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

.field protected u:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

.field v:Lcom/oplus/camera/ui/menu/levelcontrol/j$a;

.field private w:I

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 194
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 202
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->a:Landroid/os/Handler;

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    const/4 v1, 0x1

    .line 39
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->w:I

    .line 40
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->e:Z

    .line 43
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->x:Z

    .line 44
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->y:Z

    .line 46
    sget v2, Lcom/oplus/camera/ui/preview/a/j;->a:I

    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->f:I

    .line 47
    new-instance v2, Lcom/oplus/camera/ui/menu/levelcontrol/b$1;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b$1;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/b;)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->g:Landroid/view/animation/Interpolator;

    .line 63
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->r:Z

    .line 65
    new-instance v2, Lcom/oplus/camera/ui/menu/levelcontrol/b$3;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b$3;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/b;)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->s:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    .line 103
    new-instance v2, Lcom/oplus/camera/ui/menu/levelcontrol/b$4;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b$4;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/b;)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->t:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    .line 126
    new-instance v2, Lcom/oplus/camera/ui/menu/levelcontrol/b$5;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b$5;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/b;)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->u:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    .line 162
    new-instance v2, Lcom/oplus/camera/ui/menu/levelcontrol/b$6;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b$6;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/b;)V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->v:Lcom/oplus/camera/ui/menu/levelcontrol/j$a;

    .line 204
    sget-object v2, Lcom/oplus/camera/R$styleable;->BaseScrollBar:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 205
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->h:I

    const/4 p2, 0x5

    .line 206
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->i:I

    const/16 p2, 0x8

    .line 207
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->j:F

    const/16 p2, 0x9

    .line 208
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->k:F

    const/4 p2, 0x2

    .line 209
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->l:F

    const/4 p2, 0x3

    .line 210
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->m:F

    const/4 p2, 0x4

    .line 211
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->n:F

    .line 212
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->o:F

    const/4 p2, 0x6

    .line 213
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->p:F

    const/4 p2, 0x7

    .line 214
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->q:F

    .line 215
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setOpaque(Z)V

    .line 218
    invoke-virtual {p0, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 219
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/m;->d()V

    :cond_0
    return-void
.end method

.method protected abstract a(F)V
.end method

.method protected a(FZ)V
    .locals 8

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToPosition, position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->getCurrPosition()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseScrollBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    .line 527
    invoke-virtual/range {v2 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(FFILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)V

    .line 529
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Lcom/oplus/camera/gl/m;->d()V

    :cond_0
    if-eqz p2, :cond_1

    .line 534
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c(I)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    if-eqz v0, :cond_0

    .line 376
    new-instance v1, Lcom/oplus/camera/ui/menu/levelcontrol/b$9;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b$9;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/b;I)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/m;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 3

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPreviewSizeChanged, Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseScrollBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 290
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 292
    invoke-static {p2, p1}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a([F)V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    if-eqz v0, :cond_2

    .line 301
    new-instance v1, Lcom/oplus/camera/ui/menu/levelcontrol/b$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/b$7;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/b;II)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/m;->a(Ljava/lang/Runnable;)V

    .line 308
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/m;->d()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    if-eqz v0, :cond_0

    .line 370
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(IZ)V
    .locals 2

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemChanged, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasTexturesInited: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFromSlide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseScrollBar"

    .line 398
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->f:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(I)V

    .line 403
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    invoke-interface {v0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/b$a;->a(IZ)V

    .line 404
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->f:I

    :cond_0
    return-void
.end method

.method protected abstract a(Landroid/view/MotionEvent;)V
.end method

.method public a(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V
    .locals 2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTextures, mGLProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseScrollBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    if-eqz v0, :cond_0

    .line 356
    new-instance v1, Lcom/oplus/camera/ui/menu/levelcontrol/b$8;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b$8;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/b;Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/m;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z
    .locals 7

    .line 499
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->getCurrPosition()F

    move-result v0

    sub-float v3, p1, v0

    .line 501
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->r:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 502
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setScrolling(Z)V

    .line 503
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->getCurrPosition()F

    move-result v2

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(FFILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)V

    .line 505
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/gl/m;->b(I)V

    .line 507
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    new-instance p3, Lcom/oplus/camera/ui/menu/levelcontrol/b$2;

    invoke-direct {p3, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b$2;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/b;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 519
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->e:Z

    return p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->r:Z

    .line 315
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    if-eqz p0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/oplus/camera/gl/m;->g()V

    :cond_0
    return-void
.end method

.method protected abstract b(F)V
.end method

.method public b(I)V
    .locals 1

    .line 387
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->f:I

    .line 389
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->j()V

    .line 390
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->d(I)F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->a(FZ)V

    return-void
.end method

.method protected abstract b(Landroid/view/MotionEvent;)V
.end method

.method protected abstract c(F)I
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    .line 321
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->r:Z

    .line 323
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    if-eqz v0, :cond_1

    .line 324
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(Lcom/oplus/camera/gl/m;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/m;->f()V

    .line 329
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/m;->h()V

    :cond_1
    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->e:Z

    .line 333
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setScrolling(Z)V

    return-void
.end method

.method protected c(I)V
    .locals 1

    const/4 v0, 0x1

    .line 394
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->a(IZ)V

    return-void
.end method

.method protected abstract d(I)F
.end method

.method public d()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    if-eqz p0, :cond_0

    .line 338
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->b(Lcom/oplus/camera/gl/m;)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 0

    .line 349
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->x:Z

    return p0
.end method

.method public f()V
    .locals 4

    const/4 v0, 0x0

    .line 409
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->e:Z

    .line 411
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->k()Z

    move-result v0

    const-string v1, "BaseScrollBar"

    if-nez v0, :cond_0

    const-string p0, "slideToNextItem, texture not init, so return"

    .line 412
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 417
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->f:I

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->getModelNum()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    return-void

    .line 421
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->f:I

    add-int/lit8 v0, v0, 0x1

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slideToNextItem, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->j()V

    .line 426
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->d(I)F

    move-result v0

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->g:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->s:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    return-void
.end method

.method public g()V
    .locals 4

    const/4 v0, 0x0

    .line 430
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->e:Z

    .line 432
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->k()Z

    move-result v0

    const-string v1, "BaseScrollBar"

    if-nez v0, :cond_0

    const-string p0, "slideToPreviousItem, texture not init, so return"

    .line 433
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 438
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->f:I

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    invoke-interface {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/b$a;->d()I

    move-result v2

    if-gt v0, v2, :cond_1

    return-void

    .line 442
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->f:I

    add-int/lit8 v0, v0, -0x1

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slideToPreviousItem, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->j()V

    .line 447
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->d(I)F

    move-result v0

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->g:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->s:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    return-void
.end method

.method protected getCurrPosition()F
    .locals 0

    .line 567
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->b()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getElementGap()F
    .locals 0

    .line 579
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->C()F

    move-result p0

    return p0
.end method

.method protected getElementHeight()F
    .locals 0

    .line 575
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->B()F

    move-result p0

    return p0
.end method

.method protected getElementImageSize()F
    .locals 0

    .line 583
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->z()F

    move-result p0

    return p0
.end method

.method protected getElementWidth()F
    .locals 0

    .line 571
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->A()F

    move-result p0

    return p0
.end method

.method protected getModelNum()I
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->g()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x0

    .line 451
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->e:Z

    .line 452
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->getCurrPosition()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->d(I)F

    move-result v0

    .line 454
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->getCurrPosition()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceScrollNearWithNoAnim, position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->getCurrPosition()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseScrollBar"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->j()V

    const/4 v1, 0x1

    .line 458
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->a(FZ)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 477
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->y:Z

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    new-instance v1, Lcom/oplus/camera/ui/menu/levelcontrol/b$10;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b$10;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/b;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/m;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "BaseScrollBar"

    const-string v0, "notifyGLModelParam, GLProducer has not been init."

    .line 488
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected j()V
    .locals 2

    const-string v0, "BaseScrollBar"

    const-string v1, "cancelScrollAnim"

    .line 540
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 543
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 546
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->e:Z

    .line 547
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setScrolling(Z)V

    .line 549
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    if-eqz v1, :cond_1

    .line 550
    invoke-virtual {v1, v0}, Lcom/oplus/camera/gl/m;->b(I)V

    .line 553
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    if-eqz p0, :cond_2

    .line 554
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a()V

    :cond_2
    return-void
.end method

.method protected k()Z
    .locals 0

    .line 559
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->getModelNum()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract l()V
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 9

    const-string v0, "BaseScrollBar"

    const-string v1, "onSurfaceTextureAvailable"

    .line 224
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/oplus/camera/gl/m;

    invoke-direct {v0, p1}, Lcom/oplus/camera/gl/m;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    .line 228
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->w:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 229
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/gl/m;->a(Z)V

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/oplus/camera/gl/m;->a(I)V

    .line 233
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/oplus/camera/gl/m;->a(IIIIII)V

    .line 236
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/gl/m;->a(Lcom/oplus/camera/gl/m$m;)V

    .line 237
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/oplus/camera/gl/m;->b(I)V

    .line 238
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/oplus/camera/gl/m;->a(Landroid/view/SurfaceHolder;)V

    .line 239
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    invoke-virtual {p1, v2, v1, p2, p3}, Lcom/oplus/camera/gl/m;->a(Landroid/view/SurfaceHolder;III)V

    .line 240
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->y:Z

    .line 241
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b$a;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b(I)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "BaseScrollBar"

    const-string v0, "onSurfaceTextureDestroyed"

    .line 254
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/gl/m;->b(Landroid/view/SurfaceHolder;)V

    .line 257
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/m;->e()V

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string p1, "BaseScrollBar"

    const-string v0, "onSurfaceTextureSizeChanged"

    .line 246
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/oplus/camera/gl/m;->a(Landroid/view/SurfaceHolder;III)V

    .line 249
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/m;->d()V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public setCameraEntryType(I)V
    .locals 0

    .line 270
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->w:I

    return-void
.end method

.method public setFilterCategory(Lcom/oplus/camera/ui/preview/a/l$a;)V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(Lcom/oplus/camera/ui/preview/a/l$a;)V

    return-void
.end method

.method public setScrollBarTextureViewCallback(Lcom/oplus/camera/ui/menu/levelcontrol/b$a;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    return-void
.end method

.method public setScrolling(Z)V
    .locals 2

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScrolling, isScrolling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseScrollBar"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->x:Z

    return-void
.end method
