.class Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;
.super Landroid/view/animation/Animation;
.source "CameraScreenHintView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)V
    .locals 2

    .line 1284
    iput-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 1285
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1276
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->b:F

    const/4 v1, 0x0

    .line 1277
    iput v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->c:F

    const v1, 0x3f99999a    # 1.2f

    .line 1278
    iput v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->d:F

    .line 1279
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->e:F

    const/4 v0, 0x0

    .line 1280
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->f:I

    .line 1281
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->g:I

    .line 1282
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->h:I

    .line 1286
    invoke-virtual {p0, p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1287
    invoke-static {p1, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)Z

    return-void
.end method

.method private a(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 1418
    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->getScaleFactor()F

    move-result v0

    .line 1419
    iget v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->d:F

    .line 1420
    iget v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->e:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 1423
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->f:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->g:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-void
.end method

.method private b(II)V
    .locals 2

    int-to-long v0, p1

    .line 1413
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->setStartOffset(J)V

    int-to-long p1, p2

    .line 1414
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->setDuration(J)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 9

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startScreenAnimation, animationType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbAnimationRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 1292
    invoke-static {v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->l(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraScreenHintView"

    .line 1291
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_6

    const/16 v7, 0x12c

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    .line 1340
    invoke-direct {p0, v6, v7}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->b(II)V

    goto :goto_0

    .line 1327
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 1334
    :cond_1
    invoke-direct {p0, v6, v7}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->b(II)V

    .line 1335
    iput v5, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->c:F

    .line 1336
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->b:F

    goto :goto_0

    .line 1311
    :cond_2
    iget v8, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->h:I

    if-eqz v8, :cond_3

    if-ne v8, v2, :cond_5

    .line 1312
    :cond_3
    iget-object v8, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v8}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1313
    iget-object v8, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v8}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oplus/camera/ui/f;->g()V

    .line 1314
    iget-object v8, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v8, v4}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;I)V

    .line 1317
    :cond_4
    iget-object v8, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v8, v6}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)Z

    .line 1320
    :cond_5
    invoke-direct {p0, p2, v7}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->b(II)V

    .line 1321
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->c:F

    .line 1322
    iput v5, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->b:F

    goto :goto_0

    .line 1296
    :cond_6
    iget v7, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->h:I

    if-eq v7, v3, :cond_7

    if-ne v7, v1, :cond_9

    .line 1297
    :cond_7
    iget-object v7, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v7}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 1298
    iget-object v7, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v7}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/camera/ui/RotateImageView;->clearAnimation()V

    .line 1299
    iget-object v7, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v7}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1302
    :cond_8
    iget-object v7, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v7, v6}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)Z

    :cond_9
    const/16 v7, 0x1f4

    .line 1305
    invoke-direct {p0, p2, v7}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->b(II)V

    .line 1306
    iput v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->c:F

    .line 1307
    iput v5, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->b:F

    .line 1344
    :goto_0
    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->h:I

    .line 1347
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->l(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->m(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_1

    :cond_a
    move p1, v3

    goto :goto_2

    :cond_b
    :goto_1
    move p1, v6

    .line 1351
    :goto_2
    iget p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->h:I

    if-eqz p2, :cond_12

    if-eq p2, v3, :cond_10

    if-eq p2, v2, :cond_e

    if-eq p2, v1, :cond_10

    .line 1393
    iget-object p2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->m(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1394
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 1395
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1, v4}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;I)V

    .line 1396
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/oplus/camera/ui/f;->a(F)V

    .line 1399
    :cond_c
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 1400
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1401
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    goto/16 :goto_3

    :cond_d
    if-nez p1, :cond_14

    .line 1403
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 1404
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/f;->g()V

    .line 1405
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->c(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    move-result-object p0

    invoke-virtual {p1, p0, v6}, Lcom/oplus/camera/ui/f;->a(Landroid/view/animation/Animation;Z)V

    goto/16 :goto_3

    :cond_e
    if-nez p1, :cond_14

    .line 1366
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 1367
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->m(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1368
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1, v4}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;I)V

    .line 1369
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/f;->a(F)V

    goto/16 :goto_3

    .line 1371
    :cond_f
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/f;->g()V

    .line 1372
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->c(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    move-result-object p0

    invoke-virtual {p1, p0, v6}, Lcom/oplus/camera/ui/f;->a(Landroid/view/animation/Animation;Z)V

    goto :goto_3

    :cond_10
    if-nez p1, :cond_14

    .line 1381
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 1382
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->m(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1383
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->b:F

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_3

    .line 1385
    :cond_11
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->clearAnimation()V

    .line 1386
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->c(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 1353
    :cond_12
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 1354
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->m(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1355
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1, v4}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;I)V

    .line 1356
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/f;->a(F)V

    goto :goto_3

    .line 1358
    :cond_13
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/f;->g()V

    .line 1359
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->c(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lcom/oplus/camera/ui/f;->a(Landroid/view/animation/Animation;Z)V

    :cond_14
    :goto_3
    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .line 1428
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->m(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1433
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->h:I

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    move v0, p1

    goto :goto_0

    .line 1436
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->n(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1440
    :goto_0
    iget v2, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->c:F

    iget v3, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->b:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 1442
    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->h:I

    if-eqz v0, :cond_7

    const/4 p1, 0x1

    if-eq v0, p1, :cond_6

    if-eq v0, v1, :cond_5

    const/4 p1, 0x3

    if-eq v0, p1, :cond_6

    const/4 p1, 0x4

    if-eq v0, p1, :cond_2

    goto/16 :goto_1

    .line 1468
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->p(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->l(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1469
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1470
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/f;->a(F)V

    .line 1474
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1475
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_1

    .line 1453
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1454
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/f;->a(F)V

    goto :goto_1

    .line 1461
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1462
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_1

    .line 1444
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->o(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a(FLandroid/view/animation/Transformation;)V

    .line 1446
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1447
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/f;->a(F)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1487
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd(), mAnimationType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraScreenHintView"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    iget p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->h:I

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq p1, v1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1521
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->p(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1522
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1523
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1, v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;I)V

    .line 1524
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/oplus/camera/ui/f;->a(F)V

    .line 1527
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1528
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1529
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_0

    .line 1532
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1533
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/oplus/camera/ui/f;->a(F)V

    goto :goto_0

    .line 1513
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1514
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1515
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_0

    .line 1498
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1499
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1, v2, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;IZ)V

    .line 1500
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/oplus/camera/ui/f;->a(F)V

    goto :goto_0

    .line 1506
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1507
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->b:F

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_0

    .line 1491
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1492
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->b:F

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/f;->a(F)V

    .line 1543
    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1553
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationStart(), mbActivityPause: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->m(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraScreenHintView"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->m(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1559
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Z)Z

    .line 1561
    iget p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->h:I

    const/4 v1, 0x2

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto/16 :goto_1

    .line 1592
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1593
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->c:F

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/f;->a(F)V

    .line 1596
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1597
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->c:F

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    goto/16 :goto_1

    .line 1577
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1578
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->c:F

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/f;->a(F)V

    goto :goto_1

    .line 1585
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1586
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->e(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->c:F

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    goto :goto_1

    .line 1563
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1564
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->i(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)I

    move-result p1

    rem-int/lit16 p1, p1, 0xb4

    if-nez p1, :cond_6

    .line 1565
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/f;->i()I

    move-result p1

    div-int/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->f:I

    .line 1566
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/f;->j()I

    move-result p1

    div-int/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->g:I

    goto :goto_0

    .line 1568
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/f;->j()I

    move-result p1

    div-int/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->f:I

    .line 1569
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/f;->i()I

    move-result p1

    div-int/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->g:I

    .line 1571
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-static {p1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->b(Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;)Lcom/oplus/camera/ui/f;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView$a;->c:F

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/f;->a(F)V

    :cond_7
    :goto_1
    return-void
.end method
