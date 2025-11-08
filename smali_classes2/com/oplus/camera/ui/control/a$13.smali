.class Lcom/oplus/camera/ui/control/a$13;
.super Ljava/lang/Object;
.source "CameraControlUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/a;->c(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/ui/control/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/a;I)V
    .locals 0

    .line 1994
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a$13;->b:Lcom/oplus/camera/ui/control/a;

    iput p2, p0, Lcom/oplus/camera/ui/control/a$13;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 2001
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$13;->b:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->o(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/menu/shareedit/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oplus/camera/ui/control/a$13;->a:I

    if-eqz p1, :cond_0

    .line 2002
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$13;->b:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->o(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/menu/shareedit/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->d()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
