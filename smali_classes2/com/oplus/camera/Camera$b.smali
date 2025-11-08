.class Lcom/oplus/camera/Camera$b;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/Camera;

.field private b:I

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>(Lcom/oplus/camera/Camera;Landroid/content/Context;)V
    .locals 2

    .line 1674
    iput-object p1, p0, Lcom/oplus/camera/Camera$b;->a:Lcom/oplus/camera/Camera;

    .line 1675
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1670
    iput p1, p0, Lcom/oplus/camera/Camera$b;->b:I

    const-wide/16 v0, 0x0

    .line 1671
    iput-wide v0, p0, Lcom/oplus/camera/Camera$b;->c:J

    .line 1672
    iput p1, p0, Lcom/oplus/camera/Camera$b;->d:I

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6

    .line 1684
    iget-object v0, p0, Lcom/oplus/camera/Camera$b;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->p(Lcom/oplus/camera/Camera;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1685
    iget-object v0, p0, Lcom/oplus/camera/Camera$b;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0, p1}, Lcom/oplus/camera/Camera;->a(Lcom/oplus/camera/Camera;I)I

    .line 1687
    iget-object v0, p0, Lcom/oplus/camera/Camera$b;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/oplus/camera/Camera$b;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/CameraManager;->g(I)V

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1693
    iget-object p1, p0, Lcom/oplus/camera/Camera$b;->a:Lcom/oplus/camera/Camera;

    invoke-static {p1}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1694
    iget-object p0, p0, Lcom/oplus/camera/Camera$b;->a:Lcom/oplus/camera/Camera;

    invoke-static {p0}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraManager;->e(I)V

    :cond_1
    return-void

    .line 1700
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1702
    iget v2, p0, Lcom/oplus/camera/Camera$b;->d:I

    if-nez v2, :cond_3

    .line 1703
    iput p1, p0, Lcom/oplus/camera/Camera$b;->b:I

    goto :goto_0

    .line 1705
    :cond_3
    iget v2, p0, Lcom/oplus/camera/Camera$b;->b:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xb4

    if-le v2, v3, :cond_4

    add-int/lit16 p1, p1, 0x168

    .line 1709
    :cond_4
    iget v2, p0, Lcom/oplus/camera/Camera$b;->b:I

    add-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oplus/camera/Camera$b;->b:I

    .line 1712
    :goto_0
    iget p1, p0, Lcom/oplus/camera/Camera$b;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/camera/Camera$b;->d:I

    .line 1714
    iget-wide v2, p0, Lcom/oplus/camera/Camera$b;->c:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xb532b80

    cmp-long p1, v2, v4

    if-lez p1, :cond_5

    .line 1715
    iput-wide v0, p0, Lcom/oplus/camera/Camera$b;->c:J

    .line 1716
    iget p1, p0, Lcom/oplus/camera/Camera$b;->b:I

    const/4 v0, 0x0

    .line 1717
    iput v0, p0, Lcom/oplus/camera/Camera$b;->b:I

    .line 1718
    iput v0, p0, Lcom/oplus/camera/Camera$b;->d:I

    .line 1723
    iget-object v0, p0, Lcom/oplus/camera/Camera$b;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->q(Lcom/oplus/camera/Camera;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/oplus/camera/util/Util;->c(II)I

    move-result p1

    .line 1725
    iget-object v0, p0, Lcom/oplus/camera/Camera$b;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->q(Lcom/oplus/camera/Camera;)I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 1726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrientationChanged, mOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/Camera$b;->a:Lcom/oplus/camera/Camera;

    invoke-static {v1}, Lcom/oplus/camera/Camera;->q(Lcom/oplus/camera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCamera"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    iget-object v0, p0, Lcom/oplus/camera/Camera$b;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0, p1}, Lcom/oplus/camera/Camera;->b(Lcom/oplus/camera/Camera;I)I

    .line 1730
    iget-object p1, p0, Lcom/oplus/camera/Camera$b;->a:Lcom/oplus/camera/Camera;

    invoke-static {p1}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1731
    iget-object p1, p0, Lcom/oplus/camera/Camera$b;->a:Lcom/oplus/camera/Camera;

    invoke-static {p1}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/Camera$b;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->q(Lcom/oplus/camera/Camera;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/CameraManager;->f(I)V

    .line 1732
    iget-object p1, p0, Lcom/oplus/camera/Camera$b;->a:Lcom/oplus/camera/Camera;

    invoke-static {p1}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/Camera$b;->a:Lcom/oplus/camera/Camera;

    invoke-static {p0}, Lcom/oplus/camera/Camera;->q(Lcom/oplus/camera/Camera;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/CameraManager;->e(I)V

    :cond_5
    return-void
.end method
