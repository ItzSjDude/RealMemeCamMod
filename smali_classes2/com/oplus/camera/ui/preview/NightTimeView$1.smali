.class Lcom/oplus/camera/ui/preview/NightTimeView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NightTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/NightTimeView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/NightTimeView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/NightTimeView;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/NightTimeView$1;->a:Lcom/oplus/camera/ui/preview/NightTimeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/NightTimeView$1;->a:Lcom/oplus/camera/ui/preview/NightTimeView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/NightTimeView;->setAlpha(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 149
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/NightTimeView$1;->a:Lcom/oplus/camera/ui/preview/NightTimeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/NightTimeView;->setVisibility(I)V

    .line 150
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/NightTimeView$1;->a:Lcom/oplus/camera/ui/preview/NightTimeView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/NightTimeView;->setAlpha(F)V

    return-void
.end method
