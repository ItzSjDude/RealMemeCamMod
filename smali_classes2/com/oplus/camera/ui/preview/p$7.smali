.class Lcom/oplus/camera/ui/preview/p$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GradienterAssistView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/p;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/p;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/p$7;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 552
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 554
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p$7;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/p;->n(Lcom/oplus/camera/ui/preview/p;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
