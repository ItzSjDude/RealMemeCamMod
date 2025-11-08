.class public Lcom/oplus/camera/longexposure/k;
.super Ljava/lang/Object;
.source "LongExposureTimeControl.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/os/Handler;

.field private d:Lcom/oplus/camera/capmode/a;

.field private e:Lcom/oplus/camera/ui/CameraUIInterface;

.field private f:Lcom/oplus/camera/longexposure/e;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Landroid/os/Handler;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/oplus/camera/longexposure/k;->a:Landroid/app/Activity;

    .line 21
    iput-object v0, p0, Lcom/oplus/camera/longexposure/k;->b:Landroid/content/SharedPreferences;

    .line 22
    iput-object v0, p0, Lcom/oplus/camera/longexposure/k;->c:Landroid/os/Handler;

    .line 24
    iput-object v0, p0, Lcom/oplus/camera/longexposure/k;->e:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 25
    iput-object v0, p0, Lcom/oplus/camera/longexposure/k;->f:Lcom/oplus/camera/longexposure/e;

    .line 28
    iput-object p1, p0, Lcom/oplus/camera/longexposure/k;->a:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lcom/oplus/camera/longexposure/k;->b:Landroid/content/SharedPreferences;

    .line 30
    iput-object p3, p0, Lcom/oplus/camera/longexposure/k;->c:Landroid/os/Handler;

    .line 31
    iput-object p4, p0, Lcom/oplus/camera/longexposure/k;->d:Lcom/oplus/camera/capmode/a;

    .line 32
    iput-object p5, p0, Lcom/oplus/camera/longexposure/k;->e:Lcom/oplus/camera/ui/CameraUIInterface;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    .line 36
    iget-object v0, p0, Lcom/oplus/camera/longexposure/k;->f:Lcom/oplus/camera/longexposure/e;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/oplus/camera/longexposure/e;

    iget-object v3, p0, Lcom/oplus/camera/longexposure/k;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/oplus/camera/longexposure/k;->b:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/oplus/camera/longexposure/k;->c:Landroid/os/Handler;

    iget-object v6, p0, Lcom/oplus/camera/longexposure/k;->d:Lcom/oplus/camera/capmode/a;

    move-object v1, v0

    move-object v2, v3

    invoke-direct/range {v1 .. v6}, Lcom/oplus/camera/longexposure/e;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/content/SharedPreferences;Landroid/os/Handler;Lcom/oplus/camera/capmode/a;)V

    iput-object v0, p0, Lcom/oplus/camera/longexposure/k;->f:Lcom/oplus/camera/longexposure/e;

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/longexposure/k;->f:Lcom/oplus/camera/longexposure/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/longexposure/e;->a(I)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/longexposure/k;->f:Lcom/oplus/camera/longexposure/e;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/longexposure/e;->a(IZ)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showViewWithAnimation  isMoreModeShown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/longexposure/k;->e:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongExposureTimeControl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/oplus/camera/longexposure/k;->e:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/longexposure/k;->f:Lcom/oplus/camera/longexposure/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/longexposure/e;->a(Z)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/oplus/camera/longexposure/k;->f:Lcom/oplus/camera/longexposure/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/longexposure/e;->b(I)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oplus/camera/longexposure/k;->f:Lcom/oplus/camera/longexposure/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/longexposure/e;->b(Z)V

    return-void
.end method

.method public c(I)F
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/oplus/camera/longexposure/k;->f:Lcom/oplus/camera/longexposure/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/longexposure/e;->c(I)F

    move-result p0

    return p0
.end method

.method public d(I)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/oplus/camera/longexposure/k;->f:Lcom/oplus/camera/longexposure/e;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/longexposure/e;->d(I)V

    return-void
.end method
