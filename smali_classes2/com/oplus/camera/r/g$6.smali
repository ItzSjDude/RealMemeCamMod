.class Lcom/oplus/camera/r/g$6;
.super Ljava/lang/Object;
.source "SlowVideoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/r/g;->processPlatformSlowVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/r/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/r/g;)V
    .locals 0

    .line 1343
    iput-object p1, p0, Lcom/oplus/camera/r/g$6;->a:Lcom/oplus/camera/r/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1346
    iget-object v0, p0, Lcom/oplus/camera/r/g$6;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0}, Lcom/oplus/camera/r/g;->v(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/r/a;

    move-result-object v0

    const/4 v1, 0x3

    .line 1347
    invoke-virtual {v0, v1}, Lcom/oplus/camera/r/a;->a(I)Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1350
    iget-object v1, p0, Lcom/oplus/camera/r/g$6;->a:Lcom/oplus/camera/r/g;

    invoke-static {v1}, Lcom/oplus/camera/r/g;->w(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 1353
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/r/g$6;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0}, Lcom/oplus/camera/r/g;->x(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 1354
    iget-object v0, p0, Lcom/oplus/camera/r/g$6;->a:Lcom/oplus/camera/r/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/r/g;->a(Lcom/oplus/camera/r/g;Z)Z

    .line 1355
    iget-object v0, p0, Lcom/oplus/camera/r/g$6;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0}, Lcom/oplus/camera/r/g;->v(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/r/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/r/g$6;->a:Lcom/oplus/camera/r/g;

    invoke-static {v1}, Lcom/oplus/camera/r/g;->y(Lcom/oplus/camera/r/g;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/r/g$6;->a:Lcom/oplus/camera/r/g;

    invoke-static {v2}, Lcom/oplus/camera/r/g;->z(Lcom/oplus/camera/r/g;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/r/g$6;->a:Lcom/oplus/camera/r/g;

    invoke-static {v3}, Lcom/oplus/camera/r/g;->A(Lcom/oplus/camera/r/g;)Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/r/g$6;->a:Lcom/oplus/camera/r/g;

    .line 1356
    invoke-virtual {v4}, Lcom/oplus/camera/r/g;->getVideoFileExifTag()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/oplus/camera/r/g$6;->a:Lcom/oplus/camera/r/g;

    invoke-virtual {p0}, Lcom/oplus/camera/r/g;->getVideoTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1355
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/oplus/camera/r/a;->a(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)Z

    return-void
.end method
