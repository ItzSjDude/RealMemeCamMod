.class Lcom/oplus/camera/ui/b$28;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/b;->b(Landroid/animation/AnimatorListenerAdapter;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/b;)V
    .locals 0

    .line 1064
    iput-object p1, p0, Lcom/oplus/camera/ui/b$28;->a:Lcom/oplus/camera/ui/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1072
    iget-object p1, p0, Lcom/oplus/camera/ui/b$28;->a:Lcom/oplus/camera/ui/b;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/b;->setAlpha(F)V

    .line 1073
    iget-object p1, p0, Lcom/oplus/camera/ui/b$28;->a:Lcom/oplus/camera/ui/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/b;->setTranslationY(F)V

    .line 1074
    iget-object p0, p0, Lcom/oplus/camera/ui/b$28;->a:Lcom/oplus/camera/ui/b;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1067
    iget-object p0, p0, Lcom/oplus/camera/ui/b$28;->a:Lcom/oplus/camera/ui/b;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/b;->setVisibility(I)V

    return-void
.end method
