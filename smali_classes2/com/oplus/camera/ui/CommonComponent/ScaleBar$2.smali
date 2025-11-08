.class Lcom/oplus/camera/ui/CommonComponent/ScaleBar$2;
.super Ljava/lang/Object;
.source "ScaleBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$2;->this$0:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$2;->this$0:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-static {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->access$400(Lcom/oplus/camera/ui/CommonComponent/ScaleBar;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
