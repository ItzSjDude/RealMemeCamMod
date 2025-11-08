.class Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TimeLapseProParamScaleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->h()V
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

    .line 317
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$3;->a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$3;->a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;I)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$3;->a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    const/16 p1, 0xff

    invoke-static {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;I)I

    return-void
.end method
