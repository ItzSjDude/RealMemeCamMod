.class public interface abstract Lcom/oplus/camera/e/d;
.super Ljava/lang/Object;
.source "OneCamera.java"

# interfaces
.implements Lcom/oplus/camera/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/e/d$e;,
        Lcom/oplus/camera/e/d$a;,
        Lcom/oplus/camera/e/d$c;,
        Lcom/oplus/camera/e/d$d;,
        Lcom/oplus/camera/e/d$b;
    }
.end annotation


# static fields
.field public static final g:[B

.field public static final h:[B

.field public static final i:[B

.field public static final j:[B

.field public static final k:[B

.field public static final l:[B

.field public static final m:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 104
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    sput-object v1, Lcom/oplus/camera/e/d;->g:[B

    .line 105
    new-array v1, v0, [B

    aput-byte v0, v1, v2

    sput-object v1, Lcom/oplus/camera/e/d;->h:[B

    .line 106
    new-array v1, v0, [B

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    sput-object v1, Lcom/oplus/camera/e/d;->i:[B

    .line 107
    new-array v1, v0, [B

    aput-byte v2, v1, v2

    sput-object v1, Lcom/oplus/camera/e/d;->j:[B

    .line 108
    new-array v1, v0, [B

    aput-byte v0, v1, v2

    sput-object v1, Lcom/oplus/camera/e/d;->k:[B

    .line 109
    new-array v1, v0, [B

    aput-byte v3, v1, v2

    sput-object v1, Lcom/oplus/camera/e/d;->l:[B

    .line 110
    new-array v0, v0, [B

    const/4 v1, 0x3

    aput-byte v1, v0, v2

    sput-object v0, Lcom/oplus/camera/e/d;->m:[B

    return-void
.end method


# virtual methods
.method public abstract A()V
.end method

.method public abstract A(I)V
.end method

.method public abstract A(Z)V
.end method

.method public abstract B()V
.end method

.method public abstract B(Z)V
.end method

.method public abstract C()V
.end method

.method public abstract C(Z)V
.end method

.method public abstract D(Z)V
.end method

.method public abstract E(Z)V
.end method

.method public abstract F(Z)V
.end method

.method public abstract a(Landroid/graphics/Bitmap;Landroid/hardware/camera2/CaptureResult;III)Landroid/graphics/Bitmap;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/ocs/camera/CameraDeviceInfo;
.end method

.method public abstract a(B)V
.end method

.method public abstract a(F)V
.end method

.method public abstract a(FF)V
.end method

.method public abstract a(FZ)V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(ILandroid/graphics/RectF;Landroid/graphics/RectF;Z)V
.end method

.method public abstract a(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V
.end method

.method public abstract a(ILcom/oplus/camera/e/d$b;I)V
.end method

.method public abstract a(IZ)V
.end method

.method public abstract a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V
.end method

.method public abstract a(J)V
.end method

.method public abstract a(JZ)V
.end method

.method public abstract a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public abstract a(Landroid/util/Range;)V
.end method

.method public abstract a(Lcom/oplus/camera/e/d$c;)V
.end method

.method public abstract a(Lcom/oplus/camera/e/d$e;)V
.end method

.method public abstract a(Lcom/oplus/camera/e/h;)V
.end method

.method public abstract a(Lcom/oplus/camera/e/i;)V
.end method

.method public abstract a(Lcom/oplus/camera/v/c;)V
.end method

.method public abstract a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/oplus/ocs/camera/CameraPictureCallback;)V
.end method

.method public abstract a(Lcom/oplus/ocs/camera/CameraRecordingCallback;Landroid/os/Handler;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;I)V
.end method

.method public abstract a(Ljava/lang/String;Z)V
.end method

.method public abstract a(Ljava/lang/String;ZZ)V
.end method

.method public abstract a(Ljava/lang/String;[I)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract a(ZILjava/lang/String;)V
.end method

.method public abstract a(ZLandroid/hardware/camera2/CameraDevice;Z)V
.end method

.method public abstract a(ZLandroid/os/Bundle;)V
.end method

.method public abstract a(ZLcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V
.end method

.method public abstract a(ZLjava/lang/String;)V
.end method

.method public abstract a(ZLjava/lang/String;J)V
.end method

.method public abstract a(ZLjava/lang/String;[I)V
.end method

.method public abstract a(ZZ)V
.end method

.method public abstract a([B)V
.end method

.method public abstract a([I)V
.end method

.method public abstract a([Ljava/lang/String;)V
.end method

.method public abstract a()Z
.end method

.method public abstract a(Landroid/hardware/camera2/CaptureResult$Key;Landroid/hardware/camera2/CaptureResult;)[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;",
            "Landroid/hardware/camera2/CaptureResult;",
            ")[I"
        }
    .end annotation
.end method

.method public abstract b(B)V
.end method

.method public abstract b(F)V
.end method

.method public abstract b(I)V
.end method

.method public abstract b(IZ)V
.end method

.method public abstract b(J)V
.end method

.method public abstract b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract b(Lcom/oplus/camera/e/i;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract b(Z)V
.end method

.method public abstract b(ZZ)V
.end method

.method public abstract b([B)V
.end method

.method public abstract b([I)V
.end method

.method public abstract b()Z
.end method

.method public abstract c()I
.end method

.method public abstract c(I)V
.end method

.method public abstract c(J)V
.end method

.method public abstract c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract c(Z)V
.end method

.method public abstract d()V
.end method

.method public abstract d(I)V
.end method

.method public abstract d(J)V
.end method

.method public abstract d(Z)V
.end method

.method public abstract d(Ljava/lang/String;)Z
.end method

.method public abstract e()Lcom/oplus/camera/e/h;
.end method

.method public abstract e(I)V
.end method

.method public abstract e(Ljava/lang/String;)V
.end method

.method public abstract e(Z)V
.end method

.method public abstract f()V
.end method

.method public abstract f(I)V
.end method

.method public abstract f(Ljava/lang/String;)V
.end method

.method public abstract f(Z)V
.end method

.method public abstract g()V
.end method

.method public abstract g(I)V
.end method

.method public abstract g(Ljava/lang/String;)V
.end method

.method public abstract g(Z)V
.end method

.method public abstract h()V
.end method

.method public abstract h(I)V
.end method

.method public abstract h(Z)V
.end method

.method public abstract i()V
.end method

.method public abstract i(I)V
.end method

.method public abstract i(Z)V
.end method

.method public abstract j(I)V
.end method

.method public abstract j(Z)V
.end method

.method public abstract j()Z
.end method

.method public abstract k()V
.end method

.method public abstract k(I)V
.end method

.method public abstract k(Z)V
.end method

.method public abstract l()Landroid/os/Handler;
.end method

.method public abstract l(I)V
.end method

.method public abstract l(Z)V
.end method

.method public abstract m()V
.end method

.method public abstract m(I)V
.end method

.method public abstract m(Z)V
.end method

.method public abstract n()V
.end method

.method public abstract n(I)V
.end method

.method public abstract n(Z)V
.end method

.method public abstract o()V
.end method

.method public abstract o(I)V
.end method

.method public abstract o(Z)V
.end method

.method public abstract p()I
.end method

.method public abstract p(I)V
.end method

.method public abstract p(Z)V
.end method

.method public abstract q()Ljava/lang/String;
.end method

.method public abstract q(I)V
.end method

.method public abstract q(Z)V
.end method

.method public abstract r()V
.end method

.method public abstract r(I)V
.end method

.method public abstract r(Z)V
.end method

.method public abstract s()V
.end method

.method public abstract s(I)V
.end method

.method public abstract s(Z)V
.end method

.method public abstract t()I
.end method

.method public abstract t(I)V
.end method

.method public abstract t(Z)V
.end method

.method public abstract u(I)V
.end method

.method public abstract u(Z)V
.end method

.method public abstract u()Z
.end method

.method public abstract v()Lcom/oplus/camera/e/c;
.end method

.method public abstract v(I)V
.end method

.method public abstract v(Z)V
.end method

.method public abstract w()V
.end method

.method public abstract w(I)V
.end method

.method public abstract w(Z)V
.end method

.method public abstract x()V
.end method

.method public abstract x(I)V
.end method

.method public abstract x(Z)V
.end method

.method public abstract y()Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;
.end method

.method public abstract y(I)V
.end method

.method public abstract y(Z)V
.end method

.method public abstract z()V
.end method

.method public abstract z(I)V
.end method

.method public abstract z(Z)V
.end method
