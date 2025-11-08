.class Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$1;
.super Ljava/lang/Object;
.source "HSScaleBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$1;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$1;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$002(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;F)F

    .line 169
    iget-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$1;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-static {p1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$000(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)F

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$1;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-static {v1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$200(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$1;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-static {v1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$300(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->access$102(Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;F)F

    .line 170
    iget-object p0, p0, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar$1;->this$0:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->invalidate()V

    return-void
.end method
