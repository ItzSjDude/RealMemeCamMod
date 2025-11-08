.class Lcom/oplus/camera/ui/menu/levelcontrol/c$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BlurMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/c;->showMenuWithAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/levelcontrol/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/c;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$4;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 724
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$4;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$100(Lcom/oplus/camera/ui/menu/levelcontrol/c;)Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 725
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$4;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$100(Lcom/oplus/camera/ui/menu/levelcontrol/c;)Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->e()V

    .line 728
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$4;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbEnterAnimationRunning:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$4;->a:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbEnterAnimationRunning:Z

    return-void
.end method
