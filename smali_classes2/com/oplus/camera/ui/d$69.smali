.class Lcom/oplus/camera/ui/d$69;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->aA(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;Ljava/lang/String;)V
    .locals 0

    .line 13500
    iput-object p1, p0, Lcom/oplus/camera/ui/d$69;->b:Lcom/oplus/camera/ui/d;

    iput-object p2, p0, Lcom/oplus/camera/ui/d$69;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 13507
    iget-object p1, p0, Lcom/oplus/camera/ui/d$69;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->an(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13508
    iget-object p1, p0, Lcom/oplus/camera/ui/d$69;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->an(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/f;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/f;->setVisibility(I)V

    .line 13510
    iget-object p1, p0, Lcom/oplus/camera/ui/d$69;->a:Ljava/lang/String;

    const-string v0, "translationX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 13511
    iget-object p0, p0, Lcom/oplus/camera/ui/d$69;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->an(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/f;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/f;->setTranslationX(F)V

    goto :goto_0

    .line 13513
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/d$69;->b:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->an(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/f;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/f;->setTranslationY(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
