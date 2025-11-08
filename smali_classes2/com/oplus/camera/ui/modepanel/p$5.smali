.class Lcom/oplus/camera/ui/modepanel/p$5;
.super Ljava/lang/Object;
.source "MoreUIControl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/modepanel/p;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/modepanel/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/modepanel/p;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$5;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a([Ljava/lang/Object;)V
    .locals 0

    .line 940
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p$5;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p0}, Lcom/oplus/camera/ui/modepanel/p;->q(Lcom/oplus/camera/ui/modepanel/p;)V

    return-void
.end method

.method public static synthetic lambda$8eZsKbbNh7CjtNWKJ-59WIe60uk(Lcom/oplus/camera/ui/modepanel/p$5;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/modepanel/p$5;->a([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 937
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 938
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$5;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/p;->n(Lcom/oplus/camera/ui/modepanel/p;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 940
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$5;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/p;->p(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/screen/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object p1

    new-instance v0, Lcom/oplus/camera/ui/modepanel/-$$Lambda$p$5$8eZsKbbNh7CjtNWKJ-59WIe60uk;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/modepanel/-$$Lambda$p$5$8eZsKbbNh7CjtNWKJ-59WIe60uk;-><init>(Lcom/oplus/camera/ui/modepanel/p$5;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/screen/b/a;->c(Lcom/oplus/camera/screen/b/o$a;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
