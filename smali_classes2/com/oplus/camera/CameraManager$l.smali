.class Lcom/oplus/camera/CameraManager$l;
.super Ljava/lang/Thread;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "l"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/CameraManager;Ljava/lang/String;Landroid/content/Context;Landroid/location/Location;)V
    .locals 0

    .line 21694
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$l;->a:Lcom/oplus/camera/CameraManager;

    .line 21695
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 21691
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$l;->b:Ljava/lang/ref/WeakReference;

    .line 21692
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$l;->c:Landroid/location/Location;

    .line 21696
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oplus/camera/CameraManager$l;->b:Ljava/lang/ref/WeakReference;

    .line 21697
    iput-object p4, p0, Lcom/oplus/camera/CameraManager$l;->c:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 21702
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$l;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21703
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$l;->c:Landroid/location/Location;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/location/Location;Z)Landroid/location/Address;

    move-result-object v0

    const-string v1, "CameraManager"

    if-nez v0, :cond_2

    const-string v0, "GetAddressThread run, address is null, return"

    .line 21706
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21707
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$l;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/q$a;)V

    .line 21708
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$l;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cH(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/q$a;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/camera/q$a;->i:Landroid/location/Location;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$l;->c:Landroid/location/Location;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$l;->a:Lcom/oplus/camera/CameraManager;

    .line 21710
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cH(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/q$a;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/camera/q$a;->i:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$l;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$l;->a:Lcom/oplus/camera/CameraManager;

    .line 21711
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cH(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/q$a;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/camera/q$a;->i:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$l;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    .line 21712
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$l;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, v1}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/q$a;)Lcom/oplus/camera/q$a;

    :cond_1
    return-void

    .line 21718
    :cond_2
    invoke-static {v0}, Lcom/oplus/camera/util/h;->a(Landroid/location/Address;)Lcom/oplus/camera/q$a;

    move-result-object v0

    const-string v2, "GetAddressThread"

    .line 21720
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 21722
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$l;->c:Landroid/location/Location;

    if-eqz v1, :cond_3

    .line 21723
    iput-object v1, v0, Lcom/oplus/camera/q$a;->i:Landroid/location/Location;

    .line 21724
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$l;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v0}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/q$a;)Lcom/oplus/camera/q$a;

    .line 21729
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$l;->a:Lcom/oplus/camera/CameraManager;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$l;->c:Landroid/location/Location;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/location/Location;Z)Landroid/location/Address;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Landroid/location/Address;)Landroid/location/Address;

    .line 21730
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$l;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;Z)V

    return-void
.end method
