.class Lcom/oplus/camera/gl/t$a;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/gl/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/oplus/camera/gl/s;

.field public b:Lcom/oplus/camera/aps/util/CameraApsResult;

.field public c:Lcom/oplus/camera/gl/h;

.field public d:[F


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1453
    iput-object v0, p0, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    .line 1455
    iput-object v0, p0, Lcom/oplus/camera/gl/t$a;->b:Lcom/oplus/camera/aps/util/CameraApsResult;

    .line 1456
    iput-object v0, p0, Lcom/oplus/camera/gl/t$a;->c:Lcom/oplus/camera/gl/h;

    .line 1457
    iput-object v0, p0, Lcom/oplus/camera/gl/t$a;->d:[F

    .line 1460
    new-instance v0, Lcom/oplus/camera/gl/s;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/camera/aps/util/CameraApsResult;Lcom/oplus/camera/gl/h;[F)V
    .locals 1

    .line 1463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1453
    iput-object v0, p0, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    .line 1455
    iput-object v0, p0, Lcom/oplus/camera/gl/t$a;->b:Lcom/oplus/camera/aps/util/CameraApsResult;

    .line 1456
    iput-object v0, p0, Lcom/oplus/camera/gl/t$a;->c:Lcom/oplus/camera/gl/h;

    .line 1457
    iput-object v0, p0, Lcom/oplus/camera/gl/t$a;->d:[F

    .line 1464
    iput-object p1, p0, Lcom/oplus/camera/gl/t$a;->b:Lcom/oplus/camera/aps/util/CameraApsResult;

    .line 1465
    iput-object p2, p0, Lcom/oplus/camera/gl/t$a;->c:Lcom/oplus/camera/gl/h;

    .line 1466
    iput-object p3, p0, Lcom/oplus/camera/gl/t$a;->d:[F

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1470
    iget-object v0, p0, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->j()J

    move-result-wide v0

    goto :goto_0

    .line 1471
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/gl/t$a;->b:Lcom/oplus/camera/aps/util/CameraApsResult;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/aps/util/CameraApsResult;->getTimestamp()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 1476
    iget-object v0, p0, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->k()J

    move-result-wide v0

    goto :goto_0

    .line 1477
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/gl/t$a;->b:Lcom/oplus/camera/aps/util/CameraApsResult;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/aps/util/CameraApsResult;->getTimestamp()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public c()V
    .locals 2

    .line 1482
    iget-object v0, p0, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1483
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 1484
    iput-object v1, p0, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    .line 1487
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/gl/t$a;->b:Lcom/oplus/camera/aps/util/CameraApsResult;

    if-eqz v0, :cond_1

    .line 1488
    invoke-virtual {v0}, Lcom/oplus/camera/aps/util/CameraApsResult;->closeImageBuffer()V

    .line 1489
    iput-object v1, p0, Lcom/oplus/camera/gl/t$a;->b:Lcom/oplus/camera/aps/util/CameraApsResult;

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mRawTexture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/gl/t$a;->a:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraApsResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/gl/t$a;->b:Lcom/oplus/camera/aps/util/CameraApsResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTransForm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/gl/t$a;->d:[F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
