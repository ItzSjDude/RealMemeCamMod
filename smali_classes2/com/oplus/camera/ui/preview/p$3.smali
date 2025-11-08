.class Lcom/oplus/camera/ui/preview/p$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GradienterAssistView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/p;->h()V
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

    .line 371
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/p$3;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 379
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/p$3;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/p;->i(Lcom/oplus/camera/ui/preview/p;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 380
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/p$3;->a:Lcom/oplus/camera/ui/preview/p;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/p;->j(Lcom/oplus/camera/ui/preview/p;)V

    :cond_0
    return-void
.end method
