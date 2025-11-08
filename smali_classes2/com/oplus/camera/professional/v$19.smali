.class Lcom/oplus/camera/professional/v$19;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/oplus/camera/professional/v$19;->a:Lcom/oplus/camera/professional/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 645
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 646
    iget-object v0, p0, Lcom/oplus/camera/professional/v$19;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0, p1}, Lcom/oplus/camera/professional/v;->b(Lcom/oplus/camera/professional/v;I)V

    .line 648
    iget-object p1, p0, Lcom/oplus/camera/professional/v$19;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p1}, Lcom/oplus/camera/professional/v;->f(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/p;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 649
    iget-object p1, p0, Lcom/oplus/camera/professional/v$19;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p1}, Lcom/oplus/camera/professional/v;->f(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/p;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/professional/v$19;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->s(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/p$a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/professional/v$19;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v1}, Lcom/oplus/camera/professional/v;->w(Lcom/oplus/camera/professional/v;)Z

    move-result v1

    iget-object p0, p0, Lcom/oplus/camera/professional/v$19;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->x(Lcom/oplus/camera/professional/v;)Z

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p$a;ZZ)V

    :cond_0
    return-void
.end method
