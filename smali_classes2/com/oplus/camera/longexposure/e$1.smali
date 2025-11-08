.class Lcom/oplus/camera/longexposure/e$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LongExposureLevelPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/longexposure/e;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/longexposure/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/longexposure/e;Z)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/oplus/camera/longexposure/e$1;->b:Lcom/oplus/camera/longexposure/e;

    iput-boolean p2, p0, Lcom/oplus/camera/longexposure/e$1;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 389
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 391
    iget-boolean p1, p0, Lcom/oplus/camera/longexposure/e$1;->a:Z

    if-eqz p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e$1;->b:Lcom/oplus/camera/longexposure/e;

    invoke-static {p1}, Lcom/oplus/camera/longexposure/e;->b(Lcom/oplus/camera/longexposure/e;)Lcom/oplus/camera/longexposure/h;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/camera/longexposure/e$1;->b:Lcom/oplus/camera/longexposure/e;

    invoke-static {v1}, Lcom/oplus/camera/longexposure/e;->a(Lcom/oplus/camera/longexposure/e;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/longexposure/e;->c(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/longexposure/h;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e$1;->b:Lcom/oplus/camera/longexposure/e;

    invoke-static {p1}, Lcom/oplus/camera/longexposure/e;->b(Lcom/oplus/camera/longexposure/e;)Lcom/oplus/camera/longexposure/h;

    move-result-object p1

    const-string v0, "\u221e"

    invoke-virtual {p1, v0}, Lcom/oplus/camera/longexposure/h;->setText(Ljava/lang/CharSequence;)V

    .line 397
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/longexposure/e$1;->b:Lcom/oplus/camera/longexposure/e;

    invoke-static {p0}, Lcom/oplus/camera/longexposure/e;->c(Lcom/oplus/camera/longexposure/e;)Lcom/oplus/camera/longexposure/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/longexposure/i;->invalidate()V

    return-void
.end method
