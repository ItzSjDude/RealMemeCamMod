.class Lcom/oplus/camera/CameraManager$49;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/capmode/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 14197
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(JJLandroid/media/Image;)V
    .locals 9

    .line 14366
    iget-object p5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p5}, Lcom/oplus/camera/CameraManager;->ck(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v0

    cmp-long p5, v0, p3

    if-nez p5, :cond_0

    .line 14367
    iget-object p5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p5}, Lcom/oplus/camera/CameraManager;->cq(Lcom/oplus/camera/CameraManager;)I

    :cond_0
    const/4 p5, 0x2

    .line 14370
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cr(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    if-ne p5, v0, :cond_1

    iget-object p5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p5}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result p5

    if-nez p5, :cond_1

    const-string p5, "CameraManager"

    const-string v0, "updateBurstShotThumbnail, don\'t update first picture if just burstshot one picture"

    .line 14371
    invoke-static {p5, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14373
    iget-object p5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x0

    invoke-static {p5, v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/ui/control/e;)Lcom/oplus/camera/ui/control/e;

    .line 14376
    :cond_1
    iget-object p5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p5}, Lcom/oplus/camera/CameraManager;->ck(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v0

    cmp-long p3, v0, p3

    if-nez p3, :cond_8

    .line 14377
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->cr(Lcom/oplus/camera/CameraManager;)I

    move-result p4

    invoke-static {p3, p4}, Lcom/oplus/camera/CameraManager;->q(Lcom/oplus/camera/CameraManager;I)I

    .line 14379
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->cr(Lcom/oplus/camera/CameraManager;)I

    move-result p3

    const/4 p4, 0x1

    if-ne p4, p3, :cond_3

    .line 14380
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->cs(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/e;

    move-result-object p5

    invoke-static {p3, p5}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/ui/control/e;)Lcom/oplus/camera/ui/control/e;

    .line 14382
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->w(Lcom/oplus/camera/CameraManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p3

    if-nez p3, :cond_2

    .line 14383
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    new-instance p5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-static {p3, p5}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0

    .line 14385
    :cond_2
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->w(Lcom/oplus/camera/CameraManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 14389
    :cond_3
    :goto_0
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->cs(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/e;

    move-result-object p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->w(Lcom/oplus/camera/CameraManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 14390
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->w(Lcom/oplus/camera/CameraManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p3

    iget-object p5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p5}, Lcom/oplus/camera/CameraManager;->cs(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/e;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14393
    :cond_4
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->cr(Lcom/oplus/camera/CameraManager;)I

    move-result p3

    if-ne p4, p3, :cond_5

    .line 14394
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p3

    const/16 p5, 0x14

    invoke-virtual {p3, p5}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    .line 14395
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/oplus/camera/w/b;->sendEmptyMessage(I)Z

    .line 14398
    :cond_5
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 14399
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x23

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/capmode/ModeManager;->a([BIIIZI)V

    .line 14402
    :cond_6
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->cr(Lcom/oplus/camera/CameraManager;)I

    move-result p3

    if-le p3, p4, :cond_7

    .line 14403
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/camera/capmode/ModeManager;->dc()J

    move-result-wide v0

    invoke-static {v0, v1, p4}, Lcom/oplus/camera/util/Util;->a(JZ)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move-wide v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/oplus/camera/CameraManager$49;->a(JLjava/lang/String;ZZZ)V

    .line 14406
    :cond_7
    sget p1, Lcom/oplus/camera/util/Util;->d:I

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->cr(Lcom/oplus/camera/CameraManager;)I

    move-result p2

    if-ne p1, p2, :cond_9

    .line 14407
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ct(Lcom/oplus/camera/CameraManager;)V

    goto :goto_1

    .line 14410
    :cond_8
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ct(Lcom/oplus/camera/CameraManager;)V

    :cond_9
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/CameraManager$49;JJLandroid/media/Image;)V
    .locals 0

    .line 14197
    invoke-direct/range {p0 .. p5}, Lcom/oplus/camera/CameraManager$49;->a(JJLandroid/media/Image;)V

    return-void
.end method

.method private a([Landroid/graphics/PointF;)[F
    .locals 4

    if-eqz p1, :cond_2

    .line 14415
    array-length p0, p1

    if-gtz p0, :cond_0

    goto :goto_1

    .line 14419
    :cond_0
    array-length p0, p1

    mul-int/lit8 p0, p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    move v1, v0

    .line 14421
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 14422
    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, p0, v1

    add-int/lit8 v1, v2, 0x1

    .line 14423
    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14426
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "convertVertices, result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraManager"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private ba()V
    .locals 6

    .line 15067
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 15069
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bh()Z

    move-result v0

    .line 15070
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->di()Z

    move-result v2

    .line 15072
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/entry/b;->J()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15073
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->h()Z

    move-result v3

    if-nez v3, :cond_5

    .line 15074
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_5

    if-nez v2, :cond_5

    .line 15077
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->aU()Lcom/oplus/camera/screen/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v3

    if-eq v4, v3, :cond_0

    .line 15078
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->J()Z

    move-result v3

    if-nez v3, :cond_5

    .line 15079
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->aU()Lcom/oplus/camera/screen/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v3

    if-eq v4, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    .line 15081
    :goto_0
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/oplus/camera/ui/d;->b(ZI)V

    goto :goto_1

    .line 15084
    :cond_2
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    .line 15086
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->aU()Lcom/oplus/camera/screen/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v3

    if-eq v4, v3, :cond_3

    .line 15087
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->J()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15088
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->bh()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15089
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->bi()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15090
    :cond_4
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Lcom/oplus/camera/ui/d;->a(II)V

    .line 15095
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 15096
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ag;->e()V

    .line 15099
    :cond_6
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->dp()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 15100
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oplus/camera/ui/d;->a(Z)V

    .line 15103
    :cond_7
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/ui/d;->x(ZZ)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 0

    .line 14838
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->av()Z

    move-result p0

    return p0
.end method

.method public B()V
    .locals 0

    return-void
.end method

.method public C()Z
    .locals 0

    .line 14847
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->at(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public D()V
    .locals 0

    .line 14852
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->t()V

    return-void
.end method

.method public E()Z
    .locals 0

    .line 14857
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public F()Z
    .locals 0

    .line 14862
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public G()Z
    .locals 0

    .line 14882
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aH()Z

    move-result p0

    return p0
.end method

.method public H()Z
    .locals 0

    .line 14887
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aw()Z

    move-result p0

    return p0
.end method

.method public I()Z
    .locals 1

    .line 14892
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->s(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/u/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14893
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->s(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/u/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/u/d;->c()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public J()Z
    .locals 0

    .line 14905
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aN()Z

    move-result p0

    return p0
.end method

.method public K()Z
    .locals 3

    .line 14910
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 14912
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cc()V

    .line 14913
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->D()V

    .line 14915
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->aD()V

    .line 14916
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->L(Z)V

    .line 14917
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const v2, 0x7f100070

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/d;->a(I)V

    .line 14919
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14920
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cw()V

    .line 14923
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 14924
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cJ(Lcom/oplus/camera/CameraManager;)V

    :cond_1
    return v1
.end method

.method public L()V
    .locals 10

    .line 14932
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "func_sat_camera"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14933
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->isSatOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.feature.flash.full.zoom.support"

    .line 14934
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14935
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->ak()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->b(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14936
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->ak()F

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14937
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14938
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "pref_camera_torch_mode_key"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 14939
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14940
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aW(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14941
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14945
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 14946
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oplus/camera/watch/b$b;->a(IJ)V

    .line 14949
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->a()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 14950
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->aU()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    if-eq v1, v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 14952
    :goto_1
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/oplus/camera/ui/d;->c(ZI)V

    goto :goto_2

    .line 14954
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/oplus/camera/ui/d;->a(II)V

    .line 14957
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->aA()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14958
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->J(Z)V

    .line 14961
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->K()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 14962
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->af()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const-string v3, "pref_front_zoom_key"

    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 14965
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/oplus/camera/ui/d;->a(ZZZZ)V

    goto :goto_4

    .line 14963
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2, v1}, Lcom/oplus/camera/ui/d;->a(ZZZZ)V

    .line 14969
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->O()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 14970
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/oplus/camera/ui/d;->b(ZZZZ)V

    .line 14973
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const-string v4, "key_short_video"

    invoke-virtual {v3, v4}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const-string v4, "key_intelligent_high_frame_usage_key"

    .line 14974
    invoke-virtual {v3, v4}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const-string v4, "key_support_time_lapse_pro"

    .line 14975
    invoke-virtual {v3, v4}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14976
    invoke-virtual {v3}, Lcom/oplus/camera/CameraManager;->aD()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14977
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->dp()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14978
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->bu()Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v1

    goto :goto_5

    :cond_b
    move v3, v2

    .line 14973
    :goto_5
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/d;->ac(Z)V

    .line 14980
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cV()V

    .line 14981
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/d;->w(Z)V

    .line 14982
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->N()V

    .line 14983
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cQ()V

    .line 14984
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->C(ZZ)V

    .line 14986
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v2, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 14987
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cK(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 14988
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ag;->b(I)V

    goto :goto_7

    .line 14990
    :cond_c
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->al()F

    move-result v0

    .line 14991
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->am()F

    move-result v2

    .line 14993
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    const-string v4, "pref_none_sat_tele_angle_key"

    invoke-virtual {v3, v4}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14994
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->bb()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->bc()Z

    move-result v3

    if-nez v3, :cond_e

    .line 14995
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->bZ(Lcom/oplus/camera/CameraManager;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_6

    :cond_d
    const v0, 0x3ff33333    # 1.9f

    :cond_e
    :goto_6
    move v5, v0

    move v4, v2

    .line 15002
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ag;->a()F

    move-result v6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15003
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->d()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cu()Lcom/oplus/camera/af;

    move-result-object v8

    const/4 v9, 0x0

    .line 15002
    invoke-virtual/range {v3 .. v9}, Lcom/oplus/camera/ag;->a(FFFLandroid/graphics/Rect;Lcom/oplus/camera/af;Z)V

    .line 15007
    :cond_f
    :goto_7
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;I)I

    .line 15008
    invoke-static {v1}, Lcom/oplus/camera/util/AndroidTestHelper;->onReadyToVideo(Z)V

    return-void
.end method

.method public M()V
    .locals 1

    .line 15027
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->I(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15028
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->I(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/w;->e()V

    :cond_0
    return-void
.end method

.method public N()V
    .locals 5

    .line 15034
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15035
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    .line 15038
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const-string v1, "key_intelligent_high_frame_usage_key"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 15039
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->ch()V

    .line 15041
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/b;->a()Lcom/oplus/camera/ui/modepanel/b;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15042
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/camera/ui/menu/a/c;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/oplus/camera/ui/menu/a/c;->e(I)I

    move-result v3

    .line 15041
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/modepanel/b;->a(I)Lcom/oplus/camera/ui/modepanel/i;

    move-result-object v0

    .line 15042
    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/i;->c()Ljava/lang/String;

    move-result-object v0

    const-string v3, "position_headline"

    .line 15041
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15043
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->a(II)V

    goto :goto_0

    .line 15045
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/oplus/camera/ui/d;->b(ZI)V

    .line 15048
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 15049
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 15051
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/CameraManager$49;->ba()V

    .line 15052
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/d;->au(Z)V

    .line 15054
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->da()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15055
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const v2, 0x7f100070

    const v3, 0x7f0805e9

    const v4, 0x7f0604ff

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/oplus/camera/ui/d;->b(III[Ljava/lang/Object;)V

    .line 15061
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aF()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15062
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object p0

    const/4 v0, 0x6

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/oplus/camera/watch/b$b;->a(IJ)V

    :cond_4
    return-void
.end method

.method public O()V
    .locals 10

    .line 15108
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->i(Z)V

    .line 15109
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;Z)V

    .line 15111
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const-string v3, "key_intelligent_high_frame_usage_key"

    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15112
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/o;->p()V

    .line 15114
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/o;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15115
    invoke-virtual {p0, v2}, Lcom/oplus/camera/CameraManager$49;->l(Z)V

    .line 15118
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->ci()V

    .line 15121
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bh()Z

    move-result v0

    if-nez v0, :cond_f

    .line 15122
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->K()Z

    move-result v0

    const-string v3, "com.oplus.feature.ultra.night.video.wide.angle.support"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->A()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15123
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->O()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15124
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v4, "pref_zoom_key"

    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15125
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bY(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15126
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cL()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15127
    :cond_4
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15128
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cJ()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cK()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15129
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->am()F

    move-result v4

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->al()F

    move-result v5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ag;->a()F

    move-result v6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15130
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->d()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cu()Lcom/oplus/camera/af;

    move-result-object v8

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15131
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bS()Z

    move-result v9

    .line 15129
    invoke-virtual/range {v3 .. v9}, Lcom/oplus/camera/ag;->a(FFFLandroid/graphics/Rect;Lcom/oplus/camera/af;Z)V

    :cond_6
    const/4 v0, 0x0

    .line 15134
    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/camera/CameraManager$49;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    goto/16 :goto_1

    .line 15136
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->H()Z

    .line 15137
    invoke-virtual {p0, v1}, Lcom/oplus/camera/CameraManager$49;->d(Z)V

    .line 15139
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v4, "key_slow_video_frame_seek_bar_menu_key"

    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15140
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->D(Z)V

    .line 15143
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v4, "pref_video_super_eis_key"

    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15144
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 15146
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dV()Z

    move-result v0

    if-nez v0, :cond_9

    .line 15147
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->M()V

    .line 15151
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 15152
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->r(Z)V

    .line 15155
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 15156
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bY(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15157
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cL()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 15158
    :cond_c
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15159
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cJ()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cK()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_0

    .line 15163
    :cond_d
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->am()F

    move-result v2

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->al()F

    move-result v3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ag;->a()F

    move-result v4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15164
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->d()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cu()Lcom/oplus/camera/af;

    move-result-object v6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15165
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bS()Z

    move-result v7

    .line 15163
    invoke-virtual/range {v1 .. v7}, Lcom/oplus/camera/ag;->a(FFFLandroid/graphics/Rect;Lcom/oplus/camera/af;Z)V

    goto :goto_1

    .line 15160
    :cond_e
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ag;->d()V

    .line 15161
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ag;->b(I)V

    .line 15171
    :cond_f
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cd(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/d;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cd(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/d;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 15172
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cd(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/d;->c()V

    .line 15175
    :cond_10
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->F()V

    .line 15176
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->L()V

    return-void
.end method

.method public P()Z
    .locals 4

    .line 15252
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->Q()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/m/b;->a(Landroid/app/Activity;J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Q()V
    .locals 1

    .line 15261
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15262
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/f;->m()V

    :cond_0
    return-void
.end method

.method public R()Z
    .locals 0

    .line 15268
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->e()Z

    move-result p0

    return p0
.end method

.method public S()Z
    .locals 0

    .line 15273
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bQ(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public T()V
    .locals 3

    .line 15278
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cy(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;II)V

    .line 15279
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cy(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/d;->m(I)V

    return-void
.end method

.method public U()V
    .locals 0

    .line 15289
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->H()V

    return-void
.end method

.method public V()I
    .locals 0

    .line 15294
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cM(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    return p0
.end method

.method public W()V
    .locals 2

    .line 15311
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    .line 15312
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/w/b;->sendEmptyMessage(I)Z

    return-void
.end method

.method public X()V
    .locals 0

    .line 15317
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cN(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method

.method public Y()Z
    .locals 0

    .line 15368
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->L()Z

    move-result p0

    return p0
.end method

.method public Z()V
    .locals 1

    .line 15380
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15381
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->B()V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;)Landroid/net/Uri;
    .locals 1

    .line 14786
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cE(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ThumbnailProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14787
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->l(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/f;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mContentOperatedCallback:Lcom/oplus/camera/capmode/f;

    .line 14788
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cE(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ThumbnailProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->addQueue(Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()V
    .locals 1

    .line 14200
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/o;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14201
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/o;->f(I)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 14549
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;I)V

    return-void
.end method

.method public a(III)V
    .locals 3

    .line 14737
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14738
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_AIS_BRACKET:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 14739
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_AIS_DCT_SUPPORT:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 14740
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_AIS_DCT_AINR_SUPPORT:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 14741
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 14743
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAISBracket, aisBracket: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", setDCTSupport, isSupportDCT: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", setDCTAndAINRSupport, isSupportDCTAndAINR: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraManager"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V
    .locals 6

    const-string v0, "captureX burstCapture"

    .line 14258
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 14260
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14261
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/oplus/camera/aps/service/ApsService;->setCaptureCallback(Lcom/oplus/camera/e/d$a;)V

    .line 14262
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->cj(Lcom/oplus/camera/CameraManager;)Lcom/oplus/ocs/camera/CameraPictureCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/aps/service/ApsService;->setCameraPictureListener(Lcom/oplus/ocs/camera/CameraPictureCallback;)V

    .line 14265
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 14266
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->D()V

    .line 14268
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->aE()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14269
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->v(Lcom/oplus/camera/CameraManager;Z)Z

    .line 14272
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 14273
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/capmode/ModeManager;->dc()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;J)J

    .line 14274
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->ck(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/oplus/camera/Storage;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 14276
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    const-string v4, "pref_sticker_process_key"

    invoke-virtual {v1, v4}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14277
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oplus/camera/capmode/ModeManager;->c(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14278
    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/ui/d;->cu()I

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_0

    :cond_3
    move v5, v2

    .line 14277
    :goto_0
    invoke-interface {v1, v4, v5}, Lcom/oplus/camera/ui/preview/a/t;->a(Landroid/util/Size;Z)V

    .line 14282
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v1

    new-instance v4, Lcom/oplus/camera/CameraManager$49$2;

    invoke-direct {v4, p0}, Lcom/oplus/camera/CameraManager$49$2;-><init>(Lcom/oplus/camera/CameraManager$49;)V

    iput-object v4, v1, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mBurstShotThumbnailCallBack:Lcom/oplus/camera/ui/control/e$a;

    .line 14289
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result v4

    iput v4, v1, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mCaptureOrientation:I

    .line 14290
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ui/d;->bF()I

    move-result v4

    iput v4, v1, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mThumbWidth:I

    .line 14291
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->cm(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$a;

    move-result-object v4

    iput-object v4, v1, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mApsServiceListener:Lcom/oplus/camera/CameraManager$a;

    .line 14292
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v1

    iput-boolean v2, v1, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mbSuperTextOpen:Z

    .line 14293
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v1

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mSuperTextResultProcessor:Lcom/oplus/camera/a/e;

    .line 14294
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v1

    iput-object v4, v1, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mPictureTakenCallback:Lcom/oplus/camera/a/d;

    .line 14296
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/e/h;->D()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14297
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/aps/service/ApsService;->setCaptureRequestParam(Lcom/oplus/camera/aps/service/CaptureRequestParam;)V

    .line 14298
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    invoke-interface {p0, v3, p2, p3}, Lcom/oplus/camera/e/d;->a(ZLcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V

    goto/16 :goto_3

    .line 14300
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->bW()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14301
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/capmode/ModeManager;->bW()Z

    move-result v4

    iput-boolean v4, v1, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mbSuperTextOpen:Z

    .line 14302
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->cn(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/a/e;

    move-result-object v4

    iput-object v4, v1, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mSuperTextResultProcessor:Lcom/oplus/camera/a/e;

    .line 14303
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->co(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/a/d;

    move-result-object v4

    iput-object v4, v1, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mPictureTakenCallback:Lcom/oplus/camera/a/d;

    .line 14306
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 14307
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14308
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v2

    const-string v3, "pref_video_size_key"

    invoke-static {v3, v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 14307
    invoke-virtual {v1, v3, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 14310
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v3

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14311
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v2

    const-string v3, "common"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "video_size_4kuhd"

    .line 14312
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->af()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    .line 14314
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->aW()V

    .line 14317
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->cl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/aps/service/ApsService;->setCaptureRequestParam(Lcom/oplus/camera/aps/service/CaptureRequestParam;)V

    .line 14319
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/camera/e/d;->a(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V

    goto/16 :goto_3

    .line 14321
    :cond_9
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->SUPER_TEXT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/capmode/ModeManager;->bW()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 14323
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->bW()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->s(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/u/d;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 14324
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->s(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/u/d;

    move-result-object v1

    .line 14325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 14324
    invoke-virtual {v1, v4, v5}, Lcom/oplus/camera/u/d;->a(J)Lcom/oplus/camera/u/a;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 14326
    invoke-virtual {v1}, Lcom/oplus/camera/u/a;->c()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 14327
    invoke-virtual {v1}, Lcom/oplus/camera/u/a;->a()[Landroid/graphics/PointF;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/camera/CameraManager$49;->a([Landroid/graphics/PointF;)[F

    move-result-object v1

    .line 14329
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 14330
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/oplus/camera/e/d;->a(Ljava/lang/String;)V

    .line 14335
    :cond_a
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const-string v4, "func_bokeh"

    invoke-virtual {v1, v4}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 14336
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->KEY_SINGLE_BLUR_SHOW:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    iget v5, p2, Lcom/oplus/camera/e/c;->S:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 14337
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->KEY_SINGLE_BLUR_LEVEL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    iget v5, p2, Lcom/oplus/camera/e/c;->R:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 14340
    :cond_b
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ui/d;->bF()I

    move-result v4

    iput v4, v1, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mThumbWidth:I

    .line 14341
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->cm(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$a;

    move-result-object v4

    iput-object v4, v1, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mApsServiceListener:Lcom/oplus/camera/CameraManager$a;

    .line 14343
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v1

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->cl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oplus/camera/aps/service/ApsService;->setCaptureRequestParam(Lcom/oplus/camera/aps/service/CaptureRequestParam;)V

    .line 14345
    invoke-static {v3}, Lcom/oplus/camera/util/AndroidTestHelper;->onReadyToCapture(Z)V

    .line 14347
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/oplus/camera/e/d;->a(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V

    .line 14349
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->cp(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/a/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/a/b;->a()V

    .line 14351
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->i()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14352
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->aD()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14353
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->S()Ljava/lang/String;

    move-result-object p1

    const-string p2, "torch"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14354
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->p(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 14355
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/oplus/camera/e/d;->F(Z)V

    .line 14356
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, v3}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Z)Z

    .line 14362
    :cond_d
    :goto_3
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 15863
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15864
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object p0

    const/4 v0, 0x7

    invoke-interface {p0, v0, p1, p2}, Lcom/oplus/camera/watch/b$b;->a(IJ)V

    :cond_0
    return-void
.end method

.method public a(JII)V
    .locals 9

    .line 15422
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15423
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bV()V

    :cond_0
    const/4 v0, 0x1

    .line 15426
    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraManager$49;->f(Z)V

    .line 15427
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v0}, Lcom/oplus/camera/CameraManager;->v(Lcom/oplus/camera/CameraManager;Z)Z

    .line 15428
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Z)Z

    .line 15430
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 15431
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/ModeManager;->t(Z)V

    .line 15434
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object v1

    if-eqz v1, :cond_2

    if-lt p3, v0, :cond_2

    .line 15435
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object p0

    new-instance v8, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    move-object v0, v8

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;-><init>(IJJII)V

    invoke-virtual {p0, v8}, Lcom/oplus/camera/aps/service/ApsService;->notifyErrorType(Lcom/oplus/camera/aps/service/ApsService$ApsFailure;)V

    :cond_2
    return-void
.end method

.method public a(JLjava/lang/String;ZZZ)V
    .locals 7

    .line 15491
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;JLjava/lang/String;ZZZ)V

    return-void
.end method

.method public a(Landroid/animation/AnimatorListenerAdapter;ZZ)V
    .locals 0

    .line 14872
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/CameraManager;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/aps/service/CameraCaptureResult;)V
    .locals 0

    .line 15953
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->bs(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15954
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bs(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d$e;

    move-result-object p0

    invoke-virtual {p2}, Lcom/oplus/camera/aps/service/CameraCaptureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    invoke-virtual {p2}, Lcom/oplus/camera/aps/service/CameraCaptureResult;->getRequestTag()Lcom/oplus/camera/e/c;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/e/d$e;->a(Landroid/hardware/camera2/CaptureResult;Lcom/oplus/camera/e/c;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 3

    .line 15823
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15824
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->al(Lcom/oplus/camera/CameraManager;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/e/h;->d()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/oplus/camera/ui/d;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;)V

    .line 15828
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15829
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->al(Lcom/oplus/camera/CameraManager;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->d()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p1}, Lcom/oplus/camera/ui/preview/o;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/camera/Storage$CameraPicture;)V
    .locals 0

    .line 14780
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/Storage$CameraPicture;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/Storage$CameraPicture;Z)V
    .locals 0

    .line 14775
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/Storage$CameraPicture;Z)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/e$d;)V
    .locals 2

    .line 15239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateThumbnail, mediaInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15241
    invoke-static {}, Lcom/oplus/camera/ui/control/g;->a()V

    .line 15242
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/control/e$d;Z)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/e$d;ZZ)V
    .locals 6

    .line 15181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopVideoRecordingProcess, failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15183
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 15184
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/entry/b;->J()I

    move-result p1

    if-ne p1, v3, :cond_0

    if-nez p2, :cond_0

    .line 15185
    invoke-virtual {p0, v2, v5, v4}, Lcom/oplus/camera/CameraManager$49;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 15186
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/ModeManager;->j(I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/d;->c(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    .line 15192
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    if-ne v0, v3, :cond_3

    if-nez p2, :cond_2

    .line 15194
    invoke-virtual {p0, v2, v5, v4}, Lcom/oplus/camera/CameraManager$49;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 15195
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p2

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/oplus/camera/capmode/ModeManager;->j(I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/d;->c(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 15197
    :cond_2
    invoke-virtual {p0, v5, v4}, Lcom/oplus/camera/CameraManager$49;->a(ZZ)V

    .line 15198
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/ModeManager;->g()Lcom/oplus/camera/ui/control/b;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->bS(Lcom/oplus/camera/CameraManager;)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/oplus/camera/ui/d;->c(Lcom/oplus/camera/ui/control/b;Z)V

    .line 15201
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->cw(Lcom/oplus/camera/CameraManager;)V

    goto/16 :goto_2

    .line 15203
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cL(Lcom/oplus/camera/CameraManager;)V

    .line 15205
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->dp()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->S()Z

    move-result v0

    if-nez v0, :cond_4

    .line 15206
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    :cond_4
    if-nez p2, :cond_6

    if-eqz p3, :cond_6

    .line 15210
    invoke-static {}, Lcom/oplus/camera/ui/control/g;->a()V

    .line 15211
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p2

    invoke-virtual {p2, p1, v5}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/control/e$d;Z)V

    .line 15213
    iget-object p2, p1, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 15214
    iget-object p2, p1, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    invoke-static {p2}, Lcom/oplus/camera/util/Util;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 15215
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p3

    iget p1, p1, Lcom/oplus/camera/ui/control/e$d;->b:I

    invoke-virtual {p3, p2, p1}, Lcom/oplus/camera/ui/d;->a(Ljava/lang/String;I)V

    :cond_5
    const-string p1, "CameraTest Video Thumbnail Saved"

    .line 15218
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 15221
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/CameraManager;->k(I)V

    .line 15223
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->C()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/o;->A()Z

    move-result p1

    if-nez p1, :cond_8

    .line 15224
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->aM()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15225
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p1

    const/16 p2, 0x1a

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p2, v0, v1}, Lcom/oplus/camera/w/b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 15227
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/d;->ab(Z)V

    .line 15231
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->cw(Lcom/oplus/camera/CameraManager;)V

    .line 15234
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/f;->p()V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/e;)V
    .locals 0

    .line 14581
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/ui/control/e;)Lcom/oplus/camera/ui/control/e;

    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraPictureCallback;)V
    .locals 0

    .line 15742
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/ocs/camera/CameraPictureCallback;)Lcom/oplus/ocs/camera/CameraPictureCallback;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 15475
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 14576
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->m(Z)V

    return-void
.end method

.method public a(ZIZIZ)V
    .locals 10

    .line 15607
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cR(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ad;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15608
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    new-instance v1, Lcom/oplus/camera/ad;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/entry/b;->J()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/camera/ad;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;I)V

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/ad;)Lcom/oplus/camera/ad;

    .line 15611
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cR(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ad;->a(Z)V

    .line 15612
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cR(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ad;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/oplus/camera/ad;->b(Z)V

    const/4 p5, 0x0

    .line 15617
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15618
    iget-object p4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p4

    iget-object p5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p5}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/oplus/camera/capmode/ModeManager;->c(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p5

    goto :goto_1

    .line 15619
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "type_still_capture_yuv_main"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->isSatOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p5, 0x1

    if-ne p5, p4, :cond_2

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    const-string v1, "type_still_capture_yuv_sub"

    goto :goto_0

    :cond_3
    const/4 p5, 0x2

    if-ne p5, p4, :cond_4

    const-string v1, "type_still_capture_yuv_third"

    .line 15628
    :cond_4
    :goto_0
    iget-object p4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p4

    iget-object p5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p5}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object p5

    invoke-virtual {p4, v1, p5}, Lcom/oplus/camera/capmode/ModeManager;->a(Ljava/lang/String;Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p5

    goto :goto_1

    .line 15629
    :cond_5
    iget-object p4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p4

    if-eqz p4, :cond_6

    .line 15630
    iget-object p4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p4

    iget-object p5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p5}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object p5

    invoke-virtual {p4, v1, p5}, Lcom/oplus/camera/capmode/ModeManager;->a(Ljava/lang/String;Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p5

    :cond_6
    :goto_1
    move-object v1, p5

    .line 15633
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 15635
    iget-object p4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p4}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object p4

    if-eqz p4, :cond_7

    .line 15636
    iget-object p4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p4}, Lcom/oplus/camera/CameraManager;->bl(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ApsService;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/camera/aps/service/ApsService;->getSloganPathsInUse()Ljava/util/HashSet;

    move-result-object p4

    invoke-virtual {v3, p4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_7
    if-eqz v1, :cond_c

    .line 15639
    iget-object p4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p4}, Lcom/oplus/camera/CameraManager;->cR(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ad;

    move-result-object p4

    if-eqz p4, :cond_c

    iget-object p4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p4}, Lcom/oplus/camera/CameraManager;->ay()Z

    move-result p4

    if-eqz p4, :cond_c

    .line 15642
    iget-object p4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const-string p5, "key_support_makeup"

    invoke-virtual {p4, p5}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8

    iget-object p4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/camera/capmode/ModeManager;->h()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 15643
    iget-object p4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/camera/capmode/ModeManager;->bK()I

    move-result p4

    .line 15645
    iget-object p5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p5}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p5

    const-string v0, "pref_watermark_makeup_function_key"

    const-string v2, "off"

    invoke-virtual {p5, v0, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-string v0, "on"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_8

    if-eqz p4, :cond_8

    .line 15647
    sget-object p4, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    iget-object p5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p5}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/oplus/camera/capmode/ModeManager;->bK()I

    move-result p5

    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string p4, ""

    :goto_2
    move-object v9, p4

    .line 15651
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "updateSlogan, mSloganBuffer starts to generate, makeupKey: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "CameraManager"

    invoke-static {p5, p4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15653
    iget-object p4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p4}, Lcom/oplus/camera/CameraManager;->cR(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ad;

    move-result-object v0

    iget-object p4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p4}, Lcom/oplus/camera/CameraManager;->cT(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/q$a;

    move-result-object v2

    if-eqz p3, :cond_9

    const/16 p3, 0x10e

    goto :goto_3

    .line 15654
    :cond_9
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result p3

    :goto_3
    move v5, p3

    .line 15655
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p3}, Lcom/oplus/camera/CameraManager;->aD()Z

    move-result p3

    if-eqz p3, :cond_a

    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->cR(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ad;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/camera/ad;->j()Z

    move-result p3

    if-eqz p3, :cond_a

    goto :goto_4

    :cond_a
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result p3

    goto :goto_5

    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->as()I

    move-result p3

    :goto_5
    move v7, p3

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15656
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result v8

    move v4, p1

    move v6, p2

    .line 15653
    invoke-virtual/range {v0 .. v9}, Lcom/oplus/camera/ad;->a(Landroid/util/Size;Lcom/oplus/camera/q$a;Ljava/util/HashSet;ZIIIZLjava/lang/String;)V

    const-string p0, "updateSlogan, mSloganBuffer generated x"

    .line 15658
    invoke-static {p5, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public a(ZLjava/util/List;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 15300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEffectMenuData, currMenuName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currItemIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15302
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/oplus/camera/ui/d;->a(Ljava/util/List;Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    .line 15304
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    const-string p2, "pref_filter_process_key"

    invoke-virtual {p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15305
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->I()Lcom/oplus/camera/ui/preview/a/p;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/ui/preview/a/p;)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .line 14877
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/CameraManager;->e(ZZ)V

    return-void
.end method

.method public a([B)V
    .locals 1

    const-string p1, "CameraManager"

    const-string v0, "beforePictureTaken"

    .line 14444
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14446
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 14450
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->W()Z

    move-result p1

    if-nez p1, :cond_1

    .line 14451
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    .line 14452
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->g()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14453
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->bI(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14454
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/CameraManager;->j(I)V

    .line 14457
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/entry/b;->J()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14458
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14459
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14460
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->am()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14461
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->g()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bS(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/control/b;Z)V

    :cond_2
    return-void
.end method

.method public a([BZI)V
    .locals 3

    const-string p1, "CameraManager"

    const-string v0, "afterPictureTaken"

    .line 14468
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14470
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 14474
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->cu(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 14475
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->V(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14476
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->V(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->c(Z)V

    .line 14479
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/CameraManager;->e(Z)V

    .line 14484
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const-string v1, "key_support_zsl"

    invoke-virtual {p1, v1}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-string p1, "com.oplus.request.zsl.mode"

    .line 14485
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x1e

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v2, :cond_4

    .line 14486
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14487
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->m(Z)V

    .line 14488
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 14491
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->cv(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14493
    :try_start_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 14494
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 14495
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;Z)Z

    .line 14496
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    const-string v0, "off"

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 14497
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 14498
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->bc(Lcom/oplus/camera/CameraManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14502
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    if-nez p2, :cond_7

    if-eqz p3, :cond_7

    .line 14507
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    const/16 p2, 0x23

    if-ne p2, p3, :cond_6

    const/16 p2, 0x20

    :cond_6
    invoke-interface {p1, p2}, Lcom/oplus/camera/e/d;->c(I)V

    .line 14511
    :cond_7
    sget p1, Lcom/oplus/camera/Storage;->w:I

    if-nez p1, :cond_8

    .line 14512
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cw(Lcom/oplus/camera/CameraManager;)V

    :cond_8
    return-void
.end method

.method public a(F)Z
    .locals 0

    .line 15516
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->d(F)Z

    move-result p0

    return p0
.end method

.method public a(FF)Z
    .locals 2

    .line 15708
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const-string v1, "func_sat_camera"

    .line 15709
    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15710
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->b(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oplus/camera/capmode/ModeManager;->b(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15711
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager$49;->a(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/oplus/camera/CameraManager$49;->a(F)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15712
    invoke-virtual {v0, p1}, Lcom/oplus/camera/CameraManager;->e(F)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/CameraManager;->e(F)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public a(ZF)Z
    .locals 1

    .line 15891
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/e/f;

    invoke-virtual {v0}, Lcom/oplus/camera/e/f;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bQ(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15892
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/camera/ag;->a(ZFF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/app/Activity;I)[I
    .locals 1

    .line 15944
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15945
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/screen/b/a;->c(Landroid/app/Activity;I)[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public aA()Z
    .locals 0

    .line 15699
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cU(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public aB()Z
    .locals 1

    .line 15721
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15722
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dd()Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aC()V
    .locals 1

    .line 15730
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15731
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIListener;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public aD()Z
    .locals 0

    .line 15737
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cV(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public aE()Lcom/oplus/ocs/camera/CameraDeviceInfo;
    .locals 0

    .line 15747
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cW(Lcom/oplus/camera/CameraManager;)Lcom/oplus/ocs/camera/CameraDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public aF()Z
    .locals 0

    .line 15763
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->Z()Z

    move-result p0

    return p0
.end method

.method public aG()Ljava/lang/String;
    .locals 0

    .line 15777
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public aH()V
    .locals 2

    .line 15782
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aR()F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/CameraManager;->updateZoom(FZ)V

    return-void
.end method

.method public aI()V
    .locals 0

    .line 15794
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/f;->q()V

    return-void
.end method

.method public aJ()V
    .locals 0

    .line 15799
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/f;->p()V

    return-void
.end method

.method public aK()[F
    .locals 1

    .line 15809
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15810
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ag;->z()[F

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public aL()V
    .locals 0

    .line 15836
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->l(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/f;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/capmode/f;->a()V

    return-void
.end method

.method public aM()Lcom/oplus/camera/tiltshift/TiltShiftParam;
    .locals 1

    .line 15870
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aU(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/tiltshift/TiltShiftManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15871
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aU(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/tiltshift/TiltShiftManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/tiltshift/TiltShiftManager;->getTiltShiftCaptureParam()Lcom/oplus/camera/tiltshift/TiltShiftParam;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public aN()Z
    .locals 0

    .line 15879
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aZ(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public aO()V
    .locals 2

    .line 15884
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15885
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->ak()F

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/CameraManager;->updateZoom(FZ)V

    :cond_0
    return-void
.end method

.method public aP()Lcom/oplus/camera/s;
    .locals 0

    .line 15900
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->S(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/s;

    move-result-object p0

    return-object p0
.end method

.method public aQ()Z
    .locals 0

    .line 15905
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cZ(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public aR()V
    .locals 1

    .line 15910
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->I(Lcom/oplus/camera/CameraManager;Z)Z

    return-void
.end method

.method public aS()V
    .locals 1

    .line 15915
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bs(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15916
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bs(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d$e;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/e/d$e;->b()V

    :cond_0
    return-void
.end method

.method public aT()Lcom/oplus/camera/ui/a/a;
    .locals 0

    .line 15922
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object p0

    return-object p0
.end method

.method public aU()Lcom/oplus/camera/screen/b/a;
    .locals 0

    .line 15934
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->aV()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    return-object p0
.end method

.method public aV()Lcom/oplus/camera/screen/b/a;
    .locals 0

    .line 15939
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    return-object p0
.end method

.method public aW()V
    .locals 0

    .line 15960
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->da(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method

.method public aX()Z
    .locals 0

    .line 15965
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result p0

    return p0
.end method

.method public aY()Z
    .locals 0

    .line 15970
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->db(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public aZ()V
    .locals 3

    .line 15975
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$49$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/CameraManager$49$4;-><init>(Lcom/oplus/camera/CameraManager$49;)V

    const-string v2, "clearLockDB"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 15982
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->J(Lcom/oplus/camera/CameraManager;Z)Z

    .line 15983
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->K(Lcom/oplus/camera/CameraManager;Z)Z

    return-void
.end method

.method public aa()V
    .locals 1

    .line 15387
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15388
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ag;->g()V

    :cond_0
    return-void
.end method

.method public ab()V
    .locals 1

    .line 15394
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15395
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ag;->h()V

    :cond_0
    return-void
.end method

.method public ac()V
    .locals 1

    .line 15415
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15416
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->p()V

    :cond_0
    return-void
.end method

.method public ad()Lcom/oplus/camera/ae;
    .locals 1

    .line 15446
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bX(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15447
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bX(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ae;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public ae()Z
    .locals 0

    .line 15455
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->v()Z

    move-result p0

    return p0
.end method

.method public af()Ljava/lang/String;
    .locals 0

    .line 15460
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cP(Lcom/oplus/camera/CameraManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public ag()Ljava/lang/String;
    .locals 0

    .line 15465
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cQ(Lcom/oplus/camera/CameraManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public ah()Ljava/lang/String;
    .locals 0

    .line 15470
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->x(Lcom/oplus/camera/CameraManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public ai()I
    .locals 0

    .line 15480
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cD(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    return p0
.end method

.method public aj()I
    .locals 0

    .line 15496
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->u()I

    move-result p0

    return p0
.end method

.method public ak()F
    .locals 0

    .line 15501
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aO()F

    move-result p0

    return p0
.end method

.method public al()F
    .locals 1

    .line 15506
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cu()Lcom/oplus/camera/af;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/e/h;->d(Lcom/oplus/camera/af;)F

    move-result p0

    return p0
.end method

.method public am()F
    .locals 1

    .line 15511
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cu()Lcom/oplus/camera/af;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/e/h;->c(Lcom/oplus/camera/af;)F

    move-result p0

    return p0
.end method

.method public an()V
    .locals 0

    .line 15521
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->af()V

    return-void
.end method

.method public ao()Z
    .locals 0

    .line 15526
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aE()Z

    move-result p0

    return p0
.end method

.method public ap()Z
    .locals 0

    .line 15531
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aG()Z

    move-result p0

    return p0
.end method

.method public aq()Lcom/oplus/camera/ad;
    .locals 5

    .line 15573
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cR(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ad;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15574
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    new-instance v1, Lcom/oplus/camera/ad;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/entry/b;->J()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/camera/ad;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;I)V

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/ad;)Lcom/oplus/camera/ad;

    .line 15577
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cR(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ad;

    move-result-object p0

    return-object p0
.end method

.method public ar()Lcom/oplus/camera/c$a;
    .locals 0

    .line 15582
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->az()Lcom/oplus/camera/c$a;

    move-result-object p0

    return-object p0
.end method

.method public as()I
    .locals 2

    .line 15587
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/entry/b;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public at()Z
    .locals 0

    .line 15592
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aT()Z

    move-result p0

    return p0
.end method

.method public au()V
    .locals 0

    .line 15597
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cN(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method

.method public av()V
    .locals 0

    .line 15602
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cS(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method

.method public aw()I
    .locals 0

    .line 15664
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->an()I

    move-result p0

    return p0
.end method

.method public ax()I
    .locals 0

    .line 15669
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aU()I

    move-result p0

    return p0
.end method

.method public ay()Z
    .locals 1

    .line 15674
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15675
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->z()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public az()V
    .locals 2

    .line 15693
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15694
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/CameraManager;->a(Landroid/util/Size;Z)V

    :cond_0
    return-void
.end method

.method public b()Lcom/oplus/camera/entry/b;
    .locals 0

    .line 14216
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object p0

    return-object p0
.end method

.method public b(F)V
    .locals 2

    .line 15683
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$49$3;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/CameraManager$49$3;-><init>(Lcom/oplus/camera/CameraManager$49;F)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 14554
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->s(Lcom/oplus/camera/CameraManager;I)V

    return-void
.end method

.method public b(Landroid/util/Size;)V
    .locals 3

    .line 15841
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bG()Landroid/util/Size;

    move-result-object v0

    .line 15842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changePreviewSizeIfNeeded, newSize: "

    .line 15843
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", currSize: "

    .line 15844
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCameraState: "

    .line 15845
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->br(Lcom/oplus/camera/CameraManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mbSizeChanging: "

    .line 15846
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->aG(Lcom/oplus/camera/CameraManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mbSendCapturePictureRequest: "

    .line 15847
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->bW(Lcom/oplus/camera/CameraManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 15848
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15850
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 15853
    invoke-virtual {v0}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 15854
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->aX()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15855
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aG(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15856
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->bW(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 15857
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cY(Lcom/oplus/camera/CameraManager;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 4

    .line 14716
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14717
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14718
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->U()V

    :cond_0
    const-string v0, "captureX onAISSnapshotCapture"

    .line 14722
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 14724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAISCapture, needCheckAFStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14726
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    invoke-static {v1, p1, v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;ZZ)V

    .line 14728
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 14730
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->am()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14731
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v3}, Lcom/oplus/camera/CameraManager;->t(Z)V

    :cond_2
    return-void
.end method

.method public b(ZZ)V
    .locals 0

    .line 15331
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/CameraManager;->c(ZZ)V

    return-void
.end method

.method public c(F)V
    .locals 1

    .line 15787
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15788
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ag;->b(F)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 14564
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->b(I)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 14867
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->g(Z)V

    return-void
.end method

.method public c()Z
    .locals 3

    .line 14222
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->aX()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 14226
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const-string v1, "func_cache_click_capture"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;Z)Z

    .line 14228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beforeCaptureProcess, enableCacheClickCapture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->ch(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14230
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14231
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$49$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/CameraManager$49$1;-><init>(Lcom/oplus/camera/CameraManager$49;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14241
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->j(I)V

    .line 14243
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ci(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->o(Lcom/oplus/camera/CameraManager;I)I

    .line 14244
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->p(Lcom/oplus/camera/CameraManager;I)I

    .line 14246
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14247
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14248
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "pref_time_lapse_key"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14249
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14250
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->j()V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()V
    .locals 3

    .line 14433
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 14434
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->am()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14435
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/4 v1, 0x4

    const-string v2, "button_color_inside_grey"

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;)V

    .line 14437
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/control/b;)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 4

    .line 14596
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cd(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14597
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    new-instance v1, Lcom/oplus/camera/ui/control/d;

    invoke-direct {v1}, Lcom/oplus/camera/ui/control/d;-><init>()V

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/ui/control/d;)Lcom/oplus/camera/ui/control/d;

    .line 14598
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cd(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$u;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/oplus/camera/CameraManager$u;-><init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/d;->a(Lcom/oplus/camera/ui/control/d$b;)V

    .line 14601
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cd(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/oplus/camera/ui/control/d;->a(ILandroid/app/Activity;I)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 14900
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->w(Z)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 14518
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "CameraManager"

    const-string v1, "checkCacheCapture"

    .line 14519
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14521
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14522
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/w/b;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14523
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cx(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$a;

    move-result-object v0

    const-string v2, "off"

    invoke-interface {v0, v2}, Lcom/oplus/camera/watch/b$a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 14525
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->V(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->h()V

    .line 14529
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method public e(I)V
    .locals 9

    .line 15536
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15537
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15538
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cy(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    if-eq v0, p1, :cond_4

    const/16 v0, 0x12

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 15539
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->cy(Lcom/oplus/camera/CameraManager;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 15540
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/ui/d;->aU()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15541
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2, v1}, Lcom/oplus/camera/CameraManager;->G(Lcom/oplus/camera/CameraManager;Z)Z

    .line 15542
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/ui/d;->ab()V

    .line 15545
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2, p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;I)I

    .line 15546
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/oplus/camera/ui/d;->j(IZ)V

    const v2, 0x7f100258

    if-ne v0, p1, :cond_1

    .line 15548
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const-string v3, "pref_macro_switch"

    .line 15549
    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15550
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    const v4, 0x7f1000a3

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/camera/ui/d;->a(IIZZZ)V

    const-string v0, "com.oplus.feature.ultra.wide.af.support"

    .line 15553
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 15554
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/d;->a(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 15557
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->cy(Lcom/oplus/camera/CameraManager;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/d;->m(I)V

    .line 15560
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cy(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    if-lez v0, :cond_3

    .line 15561
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oplus/camera/ui/d;->Q(I)Z

    move-result v2

    invoke-interface {v0, p1, v2, v1}, Lcom/oplus/camera/ui/CameraUIListener;->a(IZZ)V

    .line 15562
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cy(Lcom/oplus/camera/CameraManager;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ai_scene"

    invoke-static {p0, v0, p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 15564
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1, v1, v1, v1}, Lcom/oplus/camera/ui/CameraUIListener;->a(IZZ)V

    .line 15565
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/d;->a(I)V

    .line 15566
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const p1, 0x7f1000a3

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->a(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public e(Z)V
    .locals 3

    .line 15013
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/f;->q()V

    .line 15014
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->E()V

    .line 15015
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->I(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/w;->b()V

    .line 15017
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 15018
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    .line 15019
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p1

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Lcom/oplus/camera/w/b;->sendEmptyMessageDelayed(IJ)Z

    .line 15022
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/oplus/camera/CameraManager;->a([Landroid/hardware/camera2/params/Face;[I)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 14535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetVideoTakePicture, mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14537
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 14541
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->k(I)V

    .line 14542
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Lcom/oplus/camera/ui/d;->f(ZZ)V

    .line 14543
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/ui/d;->c(ZZ)V

    .line 14544
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/CameraManager;->j(I)V

    return-void
.end method

.method public f(I)V
    .locals 2

    .line 15768
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cX(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    sget v1, Lcom/oplus/camera/util/Util;->d:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cX(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    if-le v0, p1, :cond_0

    .line 15769
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->cX(Lcom/oplus/camera/CameraManager;)I

    move-result p1

    .line 15772
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->u(Lcom/oplus/camera/CameraManager;I)V

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 15247
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->a(Z)V

    return-void
.end method

.method public g()I
    .locals 0

    .line 14559
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->br(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    return p0
.end method

.method public g(Z)V
    .locals 8

    .line 15322
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->bG()Landroid/util/Size;

    move-result-object v2

    .line 15323
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->U()I

    move-result v4

    .line 15325
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    new-instance v7, Lcom/oplus/camera/CameraManager$q;

    const/4 p0, 0x0

    invoke-direct {v7, v0, p0}, Lcom/oplus/camera/CameraManager$q;-><init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v2

    move v3, v4

    invoke-static/range {v0 .. v7}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Landroid/util/Size;Landroid/util/Size;IIZILcom/oplus/camera/ui/preview/g$a;)Z

    return-void
.end method

.method public h()V
    .locals 1

    .line 14569
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14570
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->cn()V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 8

    .line 15341
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "CameraManager"

    const-string p1, "onBeauty3DChange, BlurAnimRunning, return"

    .line 15342
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15347
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, p1}, Lcom/oplus/camera/CameraManager;->y(Lcom/oplus/camera/CameraManager;Z)Z

    .line 15348
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->bG()Landroid/util/Size;

    move-result-object v1

    const/4 p1, 0x0

    .line 15351
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15352
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    :cond_1
    move-object v2, p1

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 15356
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->U()I

    move-result v4

    .line 15357
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 15358
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cO(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$c;

    move-result-object v7

    move v3, v4

    .line 15357
    invoke-static/range {v0 .. v7}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Landroid/util/Size;Landroid/util/Size;IIZILcom/oplus/camera/ui/preview/g$a;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15361
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->f(Z)V

    :cond_2
    return-void
.end method

.method public i(Z)V
    .locals 1

    .line 15373
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15374
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/o;->g(Z)V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 0

    .line 14586
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public j()I
    .locals 0

    .line 14591
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cy(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    return p0
.end method

.method public j(Z)V
    .locals 1

    .line 15401
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15402
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ag;->e(Z)V

    :cond_0
    return-void
.end method

.method public k(Z)V
    .locals 1

    .line 15408
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15409
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ag;->f(Z)V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 0

    .line 14606
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cz(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public l()I
    .locals 0

    .line 14611
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cA(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    return p0
.end method

.method public l(Z)V
    .locals 0

    .line 15818
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->H(Lcom/oplus/camera/CameraManager;Z)V

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 15927
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/o;->O()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15928
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->as()V

    :cond_0
    return-void
.end method

.method public m()Z
    .locals 0

    .line 14621
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cB(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public n()V
    .locals 1

    .line 14626
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14627
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/d;->ab(Z)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 3

    .line 14633
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14634
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;Z)Z

    .line 14635
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cC(Lcom/oplus/camera/CameraManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x6

    const-wide/16 v1, 0x320

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 6

    const-string v0, "com.oplus.feature.aissnapshot.front.zoom.ranges"

    .line 14646
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oplus.feature.aissnapshot.rear.zoom.ranges"

    .line 14647
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 14648
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->bq(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/b;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->bh(Lcom/oplus/camera/CameraManager;)F

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/oplus/camera/b;->a([Ljava/lang/String;F)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 14649
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->bq(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/b;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->bh(Lcom/oplus/camera/CameraManager;)F

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/oplus/camera/b;->a([Ljava/lang/String;F)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 14651
    :goto_1
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14652
    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->bq(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/b;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14653
    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->bq(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/b;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14654
    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14655
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14656
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cD(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14657
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "func_ais_snapshot"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14658
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aD()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14659
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->ae()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14660
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->ca()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14661
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cd()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14662
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "key_support_makeup"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14663
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p0

    const-string v0, "pref_watermark_makeup_function_key"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :cond_5
    :goto_2
    return v2
.end method

.method public q()Z
    .locals 6

    const-string v0, "com.oplus.feature.aissnapshot.dct.front.zoom.ranges"

    .line 14668
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oplus.feature.aissnapshot.dct.rear.zoom.ranges"

    .line 14669
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 14670
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->bq(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/b;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->bh(Lcom/oplus/camera/CameraManager;)F

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/oplus/camera/b;->a([Ljava/lang/String;F)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 14671
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->bq(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/b;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->bh(Lcom/oplus/camera/CameraManager;)F

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/oplus/camera/b;->a([Ljava/lang/String;F)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 14673
    :goto_1
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14674
    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/capmode/ModeManager;->cY()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14675
    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14676
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14677
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cD(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14678
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "func_ais_snapshot"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14679
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aD()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14680
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->ae()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14681
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->ca()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14682
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cd()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14683
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "key_support_makeup"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14684
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_watermark_makeup_function_key"

    const-string v4, "off"

    invoke-virtual {v0, v1, v4}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14685
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "func_face_beauty_process"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14686
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bC()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14687
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dl()Ljava/lang/String;

    move-result-object p0

    const-string v0, "default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    return v2
.end method

.method public r()Z
    .locals 6

    const-string v0, "com.oplus.feature.aissnapshot.dct.ainr.front.zoom.ranges"

    .line 14692
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oplus.feature.aissnapshot.dct.ainr.rear.zoom.ranges"

    .line 14693
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 14694
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->bq(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/b;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->bh(Lcom/oplus/camera/CameraManager;)F

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/oplus/camera/b;->a([Ljava/lang/String;F)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 14695
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->bq(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/b;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->bh(Lcom/oplus/camera/CameraManager;)F

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/oplus/camera/b;->a([Ljava/lang/String;F)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 14697
    :goto_1
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14698
    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/capmode/ModeManager;->cY()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14699
    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14700
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14701
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cD(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14702
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "func_ais_snapshot"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14703
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aD()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14704
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->ae()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14705
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->ca()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14706
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cd()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14707
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "key_support_makeup"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14708
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_watermark_makeup_function_key"

    const-string v4, "off"

    invoke-virtual {v0, v1, v4}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14709
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "func_face_beauty_process"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14710
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bC()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14711
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dl()Ljava/lang/String;

    move-result-object p0

    const-string v0, "default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    return v2
.end method

.method public s()Z
    .locals 1

    .line 14751
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14752
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->ce()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public t()Landroid/content/SharedPreferences;
    .locals 0

    .line 14760
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p0

    return-object p0
.end method

.method public u()I
    .locals 0

    .line 14765
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    return p0
.end method

.method public v()I
    .locals 0

    .line 14770
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->q(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    return p0
.end method

.method public w()Ljava/lang/String;
    .locals 0

    .line 14796
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cF(Lcom/oplus/camera/CameraManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x()J
    .locals 2

    .line 14801
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ck(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()Landroid/location/Location;
    .locals 3

    .line 14806
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14807
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cG(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14808
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/q;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14809
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/q;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14810
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    .line 14811
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v2, "pref_watermark_function_key"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14812
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cH(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/q$a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/q$a;)Lcom/oplus/camera/q$a;

    .line 14814
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cI(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/q$a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cI(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/q$a;

    move-result-object p0

    iget-object v1, p0, Lcom/oplus/camera/q$a;->i:Landroid/location/Location;

    :goto_0
    return-object v1

    .line 14817
    :cond_1
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/q;->c()Landroid/location/Location;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "CameraManager"

    const-string v0, "current location is null, so use last location"

    .line 14820
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14822
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/q;->d()Landroid/location/Location;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    return-object v1
.end method

.method public z()Z
    .locals 0

    .line 14833
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$49;->ae()Z

    move-result p0

    return p0
.end method
