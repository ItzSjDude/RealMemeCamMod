.class Lcom/oplus/camera/CameraManager$74;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->a(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;ZIZ)V
    .locals 0

    .line 23580
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$74;->d:Lcom/oplus/camera/CameraManager;

    iput-boolean p2, p0, Lcom/oplus/camera/CameraManager$74;->a:Z

    iput p3, p0, Lcom/oplus/camera/CameraManager$74;->b:I

    iput-boolean p4, p0, Lcom/oplus/camera/CameraManager$74;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 23597
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$74;->d:Lcom/oplus/camera/CameraManager;

    iget-boolean v0, p0, Lcom/oplus/camera/CameraManager$74;->a:Z

    iget v1, p0, Lcom/oplus/camera/CameraManager$74;->b:I

    iget-boolean p0, p0, Lcom/oplus/camera/CameraManager$74;->c:Z

    invoke-static {p1, v0, v1, p0}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;ZIZ)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 23592
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$74;->d:Lcom/oplus/camera/CameraManager;

    iget-boolean v0, p0, Lcom/oplus/camera/CameraManager$74;->a:Z

    iget v1, p0, Lcom/oplus/camera/CameraManager$74;->b:I

    iget-boolean p0, p0, Lcom/oplus/camera/CameraManager$74;->c:Z

    invoke-static {p1, v0, v1, p0}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;ZIZ)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 23583
    iget-boolean p1, p0, Lcom/oplus/camera/CameraManager$74;->a:Z

    if-eqz p1, :cond_0

    .line 23584
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$74;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/CameraManager$74;->b:I

    .line 23585
    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/c;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/c;->a(Ljava/lang/String;)I

    move-result v0

    .line 23584
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 23586
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$74;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->y(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
