.class Lcom/oplus/camera/CameraManager$12$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$12;->a(Landroid/graphics/Bitmap;Lcom/oplus/camera/ui/control/e;ZIZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Z

.field final synthetic d:Lcom/oplus/camera/ui/control/e;

.field final synthetic e:I

.field final synthetic f:J

.field final synthetic g:Z

.field final synthetic h:Lcom/oplus/camera/CameraManager$12;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$12;ZLandroid/graphics/Bitmap;ZLcom/oplus/camera/ui/control/e;IJZ)V
    .locals 0

    .line 988
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$12$1;->h:Lcom/oplus/camera/CameraManager$12;

    iput-boolean p2, p0, Lcom/oplus/camera/CameraManager$12$1;->a:Z

    iput-object p3, p0, Lcom/oplus/camera/CameraManager$12$1;->b:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lcom/oplus/camera/CameraManager$12$1;->c:Z

    iput-object p5, p0, Lcom/oplus/camera/CameraManager$12$1;->d:Lcom/oplus/camera/ui/control/e;

    iput p6, p0, Lcom/oplus/camera/CameraManager$12$1;->e:I

    iput-wide p7, p0, Lcom/oplus/camera/CameraManager$12$1;->f:J

    iput-boolean p9, p0, Lcom/oplus/camera/CameraManager$12$1;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 991
    iget-boolean v0, p0, Lcom/oplus/camera/CameraManager$12$1;->a:Z

    if-nez v0, :cond_0

    .line 992
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$12$1;->h:Lcom/oplus/camera/CameraManager$12;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$12;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->au()V

    return-void

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$12$1;->h:Lcom/oplus/camera/CameraManager$12;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$12;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$12$1;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$12$1;->h:Lcom/oplus/camera/CameraManager$12;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$12;->a:Lcom/oplus/camera/CameraManager;

    .line 998
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/CameraManager$12$1;->c:Z

    if-eqz v0, :cond_2

    .line 1000
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$12$1;->h:Lcom/oplus/camera/CameraManager$12;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$12;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$12$1;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$12$1;->d:Lcom/oplus/camera/ui/control/e;

    iget v3, p0, Lcom/oplus/camera/CameraManager$12$1;->e:I

    iget-wide v4, p0, Lcom/oplus/camera/CameraManager$12$1;->f:J

    iget-object v6, p0, Lcom/oplus/camera/CameraManager$12$1;->h:Lcom/oplus/camera/CameraManager$12;

    iget-object v6, v6, Lcom/oplus/camera/CameraManager$12;->a:Lcom/oplus/camera/CameraManager;

    .line 1001
    invoke-static {v6}, Lcom/oplus/camera/CameraManager;->u(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 1000
    :goto_0
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/d;->a(Landroid/graphics/Bitmap;Lcom/oplus/camera/ui/control/e;IZ)V

    .line 1003
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$12$1;->h:Lcom/oplus/camera/CameraManager$12;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$12;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/CameraManager$12$1;->g:Z

    if-eqz v0, :cond_2

    .line 1004
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$12$1;->h:Lcom/oplus/camera/CameraManager$12;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$12;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object v0

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$12$1;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, p0}, Lcom/oplus/camera/watch/b$b;->a(ILandroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method
