.class Lcom/oplus/camera/photo3d/ui/g$3;
.super Ljava/lang/Object;
.source "ThreeDPhotoUIControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/photo3d/ui/g;->a()V
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

    .line 124
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/g$3;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/g$3;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/g;->b(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/g$3;->a:Lcom/oplus/camera/photo3d/ui/g;

    .line 128
    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/g;->c(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/capmode/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/g$3;->a:Lcom/oplus/camera/photo3d/ui/g;

    .line 129
    invoke-static {p1}, Lcom/oplus/camera/photo3d/ui/g;->c(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/capmode/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->F()Z

    move-result p1

    if-nez p1, :cond_0

    .line 130
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g$3;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/g;->b(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    const/16 p1, 0x9

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->k(I)V

    :cond_0
    return-void
.end method
