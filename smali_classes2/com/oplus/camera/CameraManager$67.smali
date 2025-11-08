.class Lcom/oplus/camera/CameraManager$67;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ac$e;


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

    .line 1644
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1647
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1648
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->y()V

    :cond_0
    return-void
.end method

.method public a([I)V
    .locals 6

    .line 1661
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1665
    :cond_0
    sget v0, Lcom/oplus/camera/util/Util;->i:I

    const/16 v1, 0x96

    const/16 v2, -0x19

    const/16 v3, 0x19

    const/4 v4, 0x0

    if-lt v0, v1, :cond_3

    .line 1666
    aget p1, p1, v4

    if-gt p1, v3, :cond_1

    if-ge p1, v2, :cond_2

    .line 1670
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v4}, Lcom/oplus/camera/CameraManager;->f(I)V

    :cond_2
    return-void

    .line 1676
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->O(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/a/e;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1677
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    const/4 v1, -0x1

    .line 1679
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->Q(Lcom/oplus/camera/CameraManager;)I

    move-result v5

    if-eq v1, v5, :cond_4

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->Q(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    if-nez v1, :cond_8

    .line 1680
    :cond_4
    aget v1, p1, v4

    const/4 v5, 0x1

    .line 1681
    aget v5, p1, v5

    if-gt v1, v3, :cond_7

    if-ge v1, v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, -0xf

    if-ge v5, v1, :cond_6

    .line 1688
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    const/16 v2, 0x10e

    invoke-virtual {v1, v2}, Lcom/oplus/camera/CameraManager;->f(I)V

    goto :goto_1

    .line 1690
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lcom/oplus/camera/CameraManager;->f(I)V

    goto :goto_1

    .line 1685
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1, v4}, Lcom/oplus/camera/CameraManager;->f(I)V

    .line 1695
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    .line 1696
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->J()I

    move-result v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    .line 1697
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->J()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 1698
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->O(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/oplus/camera/screen/a/e;->a(IIZZ)V

    .line 1700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrientationAngleChanged, angles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mOriginOrientation: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    .line 1701
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->Q(Lcom/oplus/camera/CameraManager;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mOrientation: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraManager"

    .line 1700
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public b()V
    .locals 1

    .line 1654
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1655
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$67;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->z()V

    :cond_0
    return-void
.end method
