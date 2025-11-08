.class Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$1;
.super Ljava/lang/Object;
.source "BlurMenuSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;F)F

    .line 246
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->a(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)F

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->b(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->c(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->b(Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;F)F

    .line 247
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar;->invalidate()V

    return-void
.end method
