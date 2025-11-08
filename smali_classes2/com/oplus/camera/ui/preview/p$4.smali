.class Lcom/oplus/camera/ui/preview/p$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GradienterAssistView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/p;->a(Z)V
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

    .line 416
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/p$4;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 419
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p$4;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/p;->l(Lcom/oplus/camera/ui/preview/p;)Lcom/oplus/camera/ui/preview/p$a;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/p$4;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/p;->k(Lcom/oplus/camera/ui/preview/p;)Lcom/oplus/camera/ui/preview/p$a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)V

    .line 420
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p$4;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/p;->m(Lcom/oplus/camera/ui/preview/p;)Lcom/oplus/camera/ui/preview/p$a;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p$4;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/p;->k(Lcom/oplus/camera/ui/preview/p;)Lcom/oplus/camera/ui/preview/p$a;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)V

    return-void
.end method
