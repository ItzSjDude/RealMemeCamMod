.class Lcom/oplus/camera/filmvideomode/s$3;
.super Ljava/lang/Object;
.source "MovieMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/filmvideomode/s;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/filmvideomode/s;


# direct methods
.method constructor <init>(Lcom/oplus/camera/filmvideomode/s;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/s$3;->a:Lcom/oplus/camera/filmvideomode/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 486
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s$3;->a:Lcom/oplus/camera/filmvideomode/s;

    invoke-static {p0}, Lcom/oplus/camera/filmvideomode/s;->e(Lcom/oplus/camera/filmvideomode/s;)Lcom/oplus/camera/filmvideomode/a;

    move-result-object p0

    invoke-static {}, Lcom/oplus/camera/e/a;->f()Z

    move-result v0

    const-string v1, "com.oplus.movie.ultra.wide.angle.support"

    .line 487
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    .line 486
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/filmvideomode/a;->a(ZZ)V

    return-void
.end method
