.class Lcom/oplus/camera/CameraManager$s;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/m/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "s"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/camera/CameraManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 1

    .line 2453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2451
    iput-object v0, p0, Lcom/oplus/camera/CameraManager$s;->a:Ljava/lang/ref/WeakReference;

    .line 2454
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/camera/CameraManager$s;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2459
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$s;->a:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    return-void

    .line 2463
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/CameraManager;

    if-eqz p0, :cond_1

    .line 2466
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->j()V

    :cond_1
    return-void
.end method
