.class Lcom/oplus/camera/ui/preview/t$2;
.super Ljava/lang/Object;
.source "NormalAISceneUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/t;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/t;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/t;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/t$2;->a:Lcom/oplus/camera/ui/preview/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/t$2;->a:Lcom/oplus/camera/ui/preview/t;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/preview/t;->a(Lcom/oplus/camera/ui/preview/t;I)V

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
