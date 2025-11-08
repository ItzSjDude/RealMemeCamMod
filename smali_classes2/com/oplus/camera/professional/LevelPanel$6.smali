.class Lcom/oplus/camera/professional/LevelPanel$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LevelPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/LevelPanel;->a()V
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

    .line 688
    iput-object p1, p0, Lcom/oplus/camera/professional/LevelPanel$6;->a:Lcom/oplus/camera/professional/LevelPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "LevelPanel"

    const-string p1, "animateValueTextView, cancel."

    .line 691
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "LevelPanel"

    const-string p1, "animateValueTextView, end."

    .line 696
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "LevelPanel"

    const-string v0, "animateValueTextView, start."

    .line 701
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel$6;->a:Lcom/oplus/camera/professional/LevelPanel;

    iget-object p0, p0, Lcom/oplus/camera/professional/LevelPanel;->c:Lcom/oplus/camera/professional/w;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/w;->setVisibility(I)V

    return-void
.end method
