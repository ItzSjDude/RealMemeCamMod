.class Lcom/oplus/camera/ui/d$36;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->a(Landroid/view/View;III)V
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

    .line 7231
    iput-object p1, p0, Lcom/oplus/camera/ui/d$36;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 7234
    iget-object p0, p0, Lcom/oplus/camera/ui/d$36;->a:Lcom/oplus/camera/ui/d;

    const/16 p1, 0x12

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/d;->f(IZ)V

    return-void
.end method
