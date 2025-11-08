.class Lcom/oplus/camera/photo3d/ui/g$2;
.super Ljava/lang/Object;
.source "ThreeDPhotoUIControl.java"

# interfaces
.implements Lcom/oplus/camera/photo3d/ui/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/photo3d/ui/g;->a(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;)V
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

    .line 92
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/g$2;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/photo3d/ui/d;)V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMenuItemClick, item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/photo3d/ui/d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThreeDPhotoUIControl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/g$2;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/ui/g;->d(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/photo3d/ui/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/g$2;->a:Lcom/oplus/camera/photo3d/ui/g;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/ui/g;->d(Lcom/oplus/camera/photo3d/ui/g;)Lcom/oplus/camera/photo3d/ui/g$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/photo3d/ui/g$a;->a(Lcom/oplus/camera/photo3d/ui/d;)V

    :cond_0
    return-void
.end method
