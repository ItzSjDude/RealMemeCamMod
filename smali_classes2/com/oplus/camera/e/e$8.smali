.class Lcom/oplus/camera/e/e$8;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/e/e;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/e/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/e/e;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/oplus/camera/e/e$8;->a:Lcom/oplus/camera/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 627
    iget-object p0, p0, Lcom/oplus/camera/e/e$8;->a:Lcom/oplus/camera/e/e;

    invoke-static {p0}, Lcom/oplus/camera/e/e;->s(Lcom/oplus/camera/e/e;)Lcom/oplus/ocs/camera/CameraDevice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraDevice;->abortCaptures()V

    return-void
.end method
