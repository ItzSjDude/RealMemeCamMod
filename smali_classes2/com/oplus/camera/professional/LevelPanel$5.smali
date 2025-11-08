.class Lcom/oplus/camera/professional/LevelPanel$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LevelPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/LevelPanel;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/LevelPanel;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/LevelPanel;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/oplus/camera/professional/LevelPanel$5;->a:Lcom/oplus/camera/professional/LevelPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "LevelPanel"

    const-string v0, "animateHintTextView, cancel."

    .line 639
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel$5;->a:Lcom/oplus/camera/professional/LevelPanel;

    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "LevelPanel"

    const-string v0, "animateHintTextView, end."

    .line 646
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel$5;->a:Lcom/oplus/camera/professional/LevelPanel;

    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->d:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "LevelPanel"

    const-string v0, "animateHintTextView, start."

    .line 653
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel$5;->a:Lcom/oplus/camera/professional/LevelPanel;

    invoke-static {p0}, Lcom/oplus/camera/professional/LevelPanel;->b(Lcom/oplus/camera/professional/LevelPanel;)V

    return-void
.end method
