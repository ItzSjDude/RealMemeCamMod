.class Lcom/oplus/camera/longexposure/i$2;
.super Ljava/lang/Object;
.source "LongExposureScaleBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/longexposure/i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/longexposure/i;


# direct methods
.method constructor <init>(Lcom/oplus/camera/longexposure/i;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/oplus/camera/longexposure/i$2;->a:Lcom/oplus/camera/longexposure/i;

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

    .line 160
    iget-object p0, p0, Lcom/oplus/camera/longexposure/i$2;->a:Lcom/oplus/camera/longexposure/i;

    invoke-static {p0}, Lcom/oplus/camera/longexposure/i;->d(Lcom/oplus/camera/longexposure/i;)V

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
