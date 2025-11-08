.class Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TimeLapseProParamScaleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$5;->a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 348
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$5;->a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;I)I

    return-void
.end method
