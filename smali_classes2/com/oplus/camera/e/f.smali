.class public Lcom/oplus/camera/e/f;
.super Ljava/lang/Object;
.source "OneCameraProxy.java"

# interfaces
.implements Lcom/oplus/camera/e/d;


# instance fields
.field private n:Lcom/oplus/camera/e/e;

.field private o:Lcom/oplus/camera/capmode/a/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    .line 29
    iput-object v0, p0, Lcom/oplus/camera/e/f;->o:Lcom/oplus/camera/capmode/a/a;

    .line 32
    new-instance v0, Lcom/oplus/camera/e/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oplus/camera/e/e;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    .line 33
    new-instance v0, Lcom/oplus/camera/capmode/a/a;

    invoke-direct {v0}, Lcom/oplus/camera/capmode/a/a;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/e/f;->o:Lcom/oplus/camera/capmode/a/a;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    .line 844
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->A()V

    return-void
.end method

.method public A(I)V
    .locals 0

    .line 874
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->A(I)V

    return-void
.end method

.method public A(Z)V
    .locals 0

    .line 721
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->A(Z)V

    return-void
.end method

.method public B()V
    .locals 0

    .line 849
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->B()V

    return-void
.end method

.method public B(Z)V
    .locals 0

    .line 756
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->B(Z)V

    return-void
.end method

.method public B(I)Z
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oplus/camera/e/f;->o:Lcom/oplus/camera/capmode/a/a;

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public C()V
    .locals 0

    .line 879
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->C()V

    return-void
.end method

.method public C(I)V
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/f;->B(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    iget-object p0, p0, Lcom/oplus/camera/e/f;->o:Lcom/oplus/camera/capmode/a/a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/a/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/e/e;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->k()V

    :goto_0
    return-void
.end method

.method public C(Z)V
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->C(Z)V

    return-void
.end method

.method public D()Lcom/oplus/camera/capmode/a/a;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/e/f;->o:Lcom/oplus/camera/capmode/a/a;

    return-object p0
.end method

.method public D(Z)V
    .locals 0

    .line 770
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->D(Z)V

    return-void
.end method

.method public E(Z)V
    .locals 0

    .line 809
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->E(Z)V

    return-void
.end method

.method public E()Z
    .locals 0

    .line 760
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->I()Z

    move-result p0

    return p0
.end method

.method public F()V
    .locals 0

    .line 774
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->G()V

    return-void
.end method

.method public F(Z)V
    .locals 0

    .line 884
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->F(Z)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/hardware/camera2/CaptureResult;III)Landroid/graphics/Bitmap;
    .locals 6

    .line 864
    iget-object v0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/e/e;->a(Landroid/graphics/Bitmap;Landroid/hardware/camera2/CaptureResult;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/ocs/camera/CameraDeviceInfo;
    .locals 0

    .line 789
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/ocs/camera/CameraDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public a(B)V
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a(B)V

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a(F)V

    return-void
.end method

.method public a(FF)V
    .locals 0

    .line 819
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(FF)V

    return-void
.end method

.method public a(FZ)V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(FZ)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a(I)V

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 391
    invoke-virtual {p0, p2}, Lcom/oplus/camera/e/f;->B(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 392
    iget-object p2, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    iget-object p0, p0, Lcom/oplus/camera/e/f;->o:Lcom/oplus/camera/capmode/a/a;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/a/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/oplus/camera/e/e;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->h(I)V

    :goto_0
    return-void
.end method

.method public a(ILandroid/graphics/RectF;Landroid/graphics/RectF;Z)V
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/camera/e/e;->a(ILandroid/graphics/RectF;Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public a(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/e/e;->a(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V

    return-void
.end method

.method public a(ILcom/oplus/camera/e/d$b;I)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/e/e;->a(ILcom/oplus/camera/e/d$b;I)V

    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(IZ)V

    return-void
.end method

.method public a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/camera/e/e;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(J)V

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/e/e;->a(JZ)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 172
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/util/Range;)V
    .locals 0

    .line 671
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a(Landroid/util/Range;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/e/d$c;)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/e/d$e;)V
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/d$e;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/e/h;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/h;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/e/i;)V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/i;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/v/c;)V
    .locals 0

    .line 711
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/v/c;)V

    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;Lcom/oplus/camera/e/d$d;I)V
    .locals 0

    .line 799
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;Lcom/oplus/camera/e/d$d;I)V

    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 177
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraPictureCallback;)V
    .locals 0

    .line 804
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPictureCallback;)V

    return-void
.end method

.method public a(Lcom/oplus/ocs/camera/CameraRecordingCallback;Landroid/os/Handler;)V
    .locals 0

    .line 824
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraRecordingCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .line 508
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(Ljava/lang/String;[I)V
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(Ljava/lang/String;[I)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a(Z)V

    return-void
.end method

.method public a(ZILjava/lang/String;)V
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/e/e;->a(ZILjava/lang/String;)V

    return-void
.end method

.method public a(ZLandroid/hardware/camera2/CameraDevice;Z)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/e/e;->a(ZLandroid/hardware/camera2/CameraDevice;Z)V

    return-void
.end method

.method public a(ZLandroid/os/Bundle;)V
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(ZLandroid/os/Bundle;)V

    return-void
.end method

.method public a(ZLcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/e/e;->a(ZLcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    .line 666
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public a(ZLjava/lang/String;J)V
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/camera/e/e;->a(ZLjava/lang/String;J)V

    return-void
.end method

.method public a(ZLjava/lang/String;[I)V
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/e/e;->a(ZLjava/lang/String;[I)V

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(ZZ)V

    return-void
.end method

.method public a([B)V
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a([B)V

    return-void
.end method

.method public a([I)V
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a([I)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .line 814
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->a([Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->a()Z

    move-result p0

    return p0
.end method

.method public a(Landroid/hardware/camera2/CaptureResult$Key;Landroid/hardware/camera2/CaptureResult;)[I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;",
            "Landroid/hardware/camera2/CaptureResult;",
            ")[I"
        }
    .end annotation

    .line 317
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->a(Landroid/hardware/camera2/CaptureResult$Key;Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p0

    return-object p0
.end method

.method public b(B)V
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->b(B)V

    return-void
.end method

.method public b(F)V
    .locals 0

    .line 701
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->b(F)V

    return-void
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 56
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->b(I)V

    :cond_0
    return-void
.end method

.method public b(IZ)V
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->b(IZ)V

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 741
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->b(J)V

    return-void
.end method

.method public b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 182
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/oplus/camera/e/i;)V
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->b(Lcom/oplus/camera/e/i;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->b(Z)V

    return-void
.end method

.method public b(ZZ)V
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->b(ZZ)V

    return-void
.end method

.method public b([B)V
    .locals 0

    .line 636
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->b([B)V

    return-void
.end method

.method public b([I)V
    .locals 0

    .line 726
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->b([I)V

    return-void
.end method

.method public b()Z
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->b()Z

    move-result p0

    return p0
.end method

.method public c()I
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->c()I

    move-result p0

    return p0
.end method

.method public c(I)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->c(I)V

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 751
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->c(J)V

    return-void
.end method

.method public c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "TT;)V"
        }
    .end annotation

    .line 306
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->c(Z)V

    return-void
.end method

.method public d()V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->d()V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->d(I)V

    return-void
.end method

.method public d(J)V
    .locals 0

    .line 869
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/e;->d(J)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->d(Z)V

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 0

    .line 522
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public e()Lcom/oplus/camera/e/h;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->e()Lcom/oplus/camera/e/h;

    move-result-object p0

    return-object p0
.end method

.method public e(I)V
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->e(I)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->e(Z)V

    return-void
.end method

.method public f()V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->f()V

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->f(I)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->f(Z)V

    return-void
.end method

.method public g()V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->g()V

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->g(I)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 784
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->g(Ljava/lang/String;)V

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->g(Z)V

    return-void
.end method

.method public h()V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->h()V

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->h(I)V

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->h(Z)V

    return-void
.end method

.method public i()V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->i()V

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->i(I)V

    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->i(Z)V

    return-void
.end method

.method public j(I)V
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->j(I)V

    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->j(Z)V

    return-void
.end method

.method public j()Z
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->j()Z

    move-result p0

    return p0
.end method

.method public k()V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->k()V

    return-void
.end method

.method public k(I)V
    .locals 0

    .line 494
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->k(I)V

    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->k(Z)V

    return-void
.end method

.method public l()Landroid/os/Handler;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->l()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public l(I)V
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->l(I)V

    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->l(Z)V

    return-void
.end method

.method public m()V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->m()V

    return-void
.end method

.method public m(I)V
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->m(I)V

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->m(Z)V

    return-void
.end method

.method public n()V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->n()V

    return-void
.end method

.method public n(I)V
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->n(I)V

    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->n(Z)V

    return-void
.end method

.method public o()V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->o()V

    return-void
.end method

.method public o(I)V
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->o(I)V

    return-void
.end method

.method public o(Z)V
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->o(Z)V

    return-void
.end method

.method public p()I
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->p()I

    move-result p0

    return p0
.end method

.method public p(I)V
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->p(I)V

    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 596
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->p(Z)V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(I)V
    .locals 0

    .line 566
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->q(I)V

    return-void
.end method

.method public q(Z)V
    .locals 0

    .line 601
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->q(Z)V

    return-void
.end method

.method public r()V
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->r()V

    return-void
.end method

.method public r(I)V
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->r(I)V

    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 616
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->r(Z)V

    return-void
.end method

.method public s()V
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->s()V

    return-void
.end method

.method public s(I)V
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->s(I)V

    return-void
.end method

.method public s(Z)V
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->s(Z)V

    return-void
.end method

.method public t()I
    .locals 0

    .line 646
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->t()I

    move-result p0

    return p0
.end method

.method public t(I)V
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->t(I)V

    return-void
.end method

.method public t(Z)V
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->t(Z)V

    return-void
.end method

.method public u(I)V
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->u(I)V

    return-void
.end method

.method public u(Z)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->u(Z)V

    return-void
.end method

.method public u()Z
    .locals 0

    .line 829
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->u()Z

    move-result p0

    return p0
.end method

.method public v()Lcom/oplus/camera/e/c;
    .locals 0

    .line 651
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->v()Lcom/oplus/camera/e/c;

    move-result-object p0

    return-object p0
.end method

.method public v(I)V
    .locals 0

    .line 611
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->v(I)V

    return-void
.end method

.method public v(Z)V
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->v(Z)V

    return-void
.end method

.method public w()V
    .locals 0

    .line 656
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->w()V

    return-void
.end method

.method public w(I)V
    .locals 0

    .line 676
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->w(I)V

    return-void
.end method

.method public w(Z)V
    .locals 0

    .line 834
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->w(Z)V

    return-void
.end method

.method public x()V
    .locals 0

    .line 691
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->x()V

    return-void
.end method

.method public x(I)V
    .locals 0

    .line 736
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->x(I)V

    return-void
.end method

.method public x(Z)V
    .locals 0

    .line 681
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->x(Z)V

    return-void
.end method

.method public y()Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;
    .locals 0

    .line 794
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->y()Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public y(I)V
    .locals 0

    .line 746
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->y(I)V

    return-void
.end method

.method public y(Z)V
    .locals 0

    .line 696
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->y(Z)V

    return-void
.end method

.method public z()V
    .locals 0

    .line 839
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0}, Lcom/oplus/camera/e/e;->z()V

    return-void
.end method

.method public z(I)V
    .locals 0

    .line 779
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->z(I)V

    return-void
.end method

.method public z(Z)V
    .locals 0

    .line 706
    iget-object p0, p0, Lcom/oplus/camera/e/f;->n:Lcom/oplus/camera/e/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/e;->z(Z)V

    return-void
.end method
