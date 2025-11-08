.class Lcom/oplus/camera/ui/CommonComponent/ScaleBar$4;
.super Ljava/lang/Object;
.source "ScaleBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->init()V
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

    .line 253
    iput-object p1, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$4;->this$0:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/oplus/camera/ui/CommonComponent/ScaleBar$4;->this$0:Lcom/oplus/camera/ui/CommonComponent/ScaleBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/CommonComponent/ScaleBar;->invalidate()V

    return-void
.end method
