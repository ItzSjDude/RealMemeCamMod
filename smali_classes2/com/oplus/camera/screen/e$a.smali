.class public Lcom/oplus/camera/screen/e$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScreenModeChangeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/screen/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/screen/e;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/oplus/camera/screen/e;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/oplus/camera/screen/e$a;->a:Lcom/oplus/camera/screen/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/oplus/camera/screen/e$a;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/screen/e$a;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/oplus/camera/screen/e$a;->b:Z

    return p1
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 79
    iget-boolean p1, p0, Lcom/oplus/camera/screen/e$a;->b:Z

    if-eqz p1, :cond_0

    .line 80
    iget-object p0, p0, Lcom/oplus/camera/screen/e$a;->a:Lcom/oplus/camera/screen/e;

    invoke-static {p0}, Lcom/oplus/camera/screen/e;->a(Lcom/oplus/camera/screen/e;)Lcom/oplus/camera/screen/e$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/screen/e$b;->c()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/oplus/camera/screen/e$a;->a:Lcom/oplus/camera/screen/e;

    invoke-static {p1}, Lcom/oplus/camera/screen/e;->a(Lcom/oplus/camera/screen/e;)Lcom/oplus/camera/screen/e$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/screen/e$b;->c()V

    .line 87
    iget-object p0, p0, Lcom/oplus/camera/screen/e$a;->a:Lcom/oplus/camera/screen/e;

    invoke-static {p0}, Lcom/oplus/camera/screen/e;->b(Lcom/oplus/camera/screen/e;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
