.class Lcom/oplus/camera/ui/preview/LongExposureTimeView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LongExposureTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/LongExposureTimeView;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/LongExposureTimeView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/LongExposureTimeView;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView$2;->a:Lcom/oplus/camera/ui/preview/LongExposureTimeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView$2;->a:Lcom/oplus/camera/ui/preview/LongExposureTimeView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView$2;->a:Lcom/oplus/camera/ui/preview/LongExposureTimeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->setVisibility(I)V

    .line 181
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/LongExposureTimeView$2;->a:Lcom/oplus/camera/ui/preview/LongExposureTimeView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/LongExposureTimeView;->setAlpha(F)V

    return-void
.end method
