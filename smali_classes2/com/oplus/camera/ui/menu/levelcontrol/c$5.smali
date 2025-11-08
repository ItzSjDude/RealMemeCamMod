.class Lcom/oplus/camera/ui/menu/levelcontrol/c$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BlurMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/c;->hideMenu(ZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/oplus/camera/ui/menu/levelcontrol/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/c;ZZ)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$5;->c:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$5;->a:Z

    iput-boolean p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$5;->b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 805
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$5;->c:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$700(Lcom/oplus/camera/ui/menu/levelcontrol/c;)V

    .line 806
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$5;->c:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbExitAnimationRunning:Z

    .line 808
    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$800(Lcom/oplus/camera/ui/menu/levelcontrol/c;)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 809
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$5;->c:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$100(Lcom/oplus/camera/ui/menu/levelcontrol/c;)Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->c()V

    return-void

    .line 813
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$5;->c:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->access$100(Lcom/oplus/camera/ui/menu/levelcontrol/c;)Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    move-result-object p1

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$5;->a:Z

    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$5;->b:Z

    invoke-interface {p1, v1, p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->a(ZZZ)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 800
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c$5;->c:Lcom/oplus/camera/ui/menu/levelcontrol/c;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->mbExitAnimationRunning:Z

    return-void
.end method
