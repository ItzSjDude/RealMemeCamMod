.class Lcom/oplus/camera/photo3d/ui/g$1;
.super Ljava/lang/Object;
.source "ThreeDPhotoUIControl.java"

# interfaces
.implements Lcom/oplus/camera/photo3d/ui/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/photo3d/ui/g;->i()Lcom/oplus/camera/photo3d/ui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/photo3d/ui/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/photo3d/ui/g;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/g$1;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g$1;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/ui/g;->a(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/photo3d/ui/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/photo3d/ui/e;->a(Z)V

    .line 82
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g$1;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/ui/g;->b(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->j(ZZ)V

    .line 83
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g$1;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/g;->c(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/capmode/a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1, v1}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    return-void
.end method
