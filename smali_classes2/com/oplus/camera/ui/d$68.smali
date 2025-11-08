.class Lcom/oplus/camera/ui/d$68;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->aM(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:F

.field final synthetic c:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;Ljava/lang/String;F)V
    .locals 0

    .line 13426
    iput-object p1, p0, Lcom/oplus/camera/ui/d$68;->c:Lcom/oplus/camera/ui/d;

    iput-object p2, p0, Lcom/oplus/camera/ui/d$68;->a:Ljava/lang/String;

    iput p3, p0, Lcom/oplus/camera/ui/d$68;->b:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 13442
    iget-object p1, p0, Lcom/oplus/camera/ui/d$68;->c:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->an(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13443
    iget-object p0, p0, Lcom/oplus/camera/ui/d$68;->c:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->an(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/f;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/f;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 13429
    iget-object p1, p0, Lcom/oplus/camera/ui/d$68;->c:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->an(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13430
    iget-object p1, p0, Lcom/oplus/camera/ui/d$68;->c:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->an(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/f;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/f;->setVisibility(I)V

    .line 13432
    iget-object p1, p0, Lcom/oplus/camera/ui/d$68;->a:Ljava/lang/String;

    const-string v0, "translationX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13433
    iget-object p1, p0, Lcom/oplus/camera/ui/d$68;->c:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->an(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/f;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/ui/d$68;->b:F

    invoke-virtual {p1, p0}, Lcom/oplus/camera/timelapsepro/f;->setTranslationX(F)V

    goto :goto_0

    .line 13435
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/d$68;->c:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->an(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/f;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/ui/d$68;->b:F

    invoke-virtual {p1, p0}, Lcom/oplus/camera/timelapsepro/f;->setTranslationY(F)V

    :cond_1
    :goto_0
    return-void
.end method
