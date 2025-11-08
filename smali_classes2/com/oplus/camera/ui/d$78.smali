.class Lcom/oplus/camera/ui/d$78;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->aP(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 14258
    iput-object p1, p0, Lcom/oplus/camera/ui/d$78;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 14270
    iget-object p1, p0, Lcom/oplus/camera/ui/d$78;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ao(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14271
    iget-object p1, p0, Lcom/oplus/camera/ui/d$78;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ao(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/i;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/i;->setVisibility(I)V

    .line 14272
    iget-object p1, p0, Lcom/oplus/camera/ui/d$78;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ao(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/i;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/i;->setTranslationY(F)V

    .line 14273
    iget-object p1, p0, Lcom/oplus/camera/ui/d$78;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ao(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/i;->setAlpha(F)V

    .line 14275
    iget-object p0, p0, Lcom/oplus/camera/ui/d$78;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->ao(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/i;->a()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 14261
    iget-object p1, p0, Lcom/oplus/camera/ui/d$78;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ao(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14262
    iget-object p1, p0, Lcom/oplus/camera/ui/d$78;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ao(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/i;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/i;->setVisibility(I)V

    .line 14263
    iget-object p1, p0, Lcom/oplus/camera/ui/d$78;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ao(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/i;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/i;->setTranslationY(F)V

    .line 14264
    iget-object p0, p0, Lcom/oplus/camera/ui/d$78;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->ao(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/timelapsepro/i;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/i;->setAlpha(F)V

    :cond_0
    return-void
.end method
