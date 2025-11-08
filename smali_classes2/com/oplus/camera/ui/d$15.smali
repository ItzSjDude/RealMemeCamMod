.class Lcom/oplus/camera/ui/d$15;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->a(Ljava/util/concurrent/ConcurrentHashMap;ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Z

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;Ljava/lang/String;Ljava/lang/Object;ZLandroid/view/View;)V
    .locals 0

    .line 3579
    iput-object p1, p0, Lcom/oplus/camera/ui/d$15;->e:Lcom/oplus/camera/ui/d;

    iput-object p2, p0, Lcom/oplus/camera/ui/d$15;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/camera/ui/d$15;->b:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/oplus/camera/ui/d$15;->c:Z

    iput-object p5, p0, Lcom/oplus/camera/ui/d$15;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 3595
    iget-object p1, p0, Lcom/oplus/camera/ui/d$15;->e:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3596
    iget-object p1, p0, Lcom/oplus/camera/ui/d$15;->e:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/ui/d$15;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/camera/ui/d$15;->b:Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/d$15;->c:Z

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, p0, v2}, Lcom/oplus/camera/ui/CameraUIListener;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    .line 3582
    iget-object p1, p0, Lcom/oplus/camera/ui/d$15;->e:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3583
    iget-object p1, p0, Lcom/oplus/camera/ui/d$15;->e:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/ui/d$15;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/camera/ui/d$15;->b:Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/oplus/camera/ui/d$15;->c:Z

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/oplus/camera/ui/CameraUIListener;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 3586
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/d$15;->d:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 3587
    iget-boolean v1, p0, Lcom/oplus/camera/ui/d$15;->c:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3590
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/d$15;->e:Lcom/oplus/camera/ui/d;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->z(Z)V

    return-void
.end method
