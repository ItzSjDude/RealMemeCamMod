.class Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BlurMenuSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$3;->c:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$3;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$3;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 506
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$3;->b:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 507
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$3;->a:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 500
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
