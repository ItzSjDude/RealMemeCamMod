.class Lcom/oplus/camera/screen/out/c$1;
.super Ljava/lang/Object;
.source "InnerPresentation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/screen/out/c;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/screen/out/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/screen/out/c;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/oplus/camera/screen/out/c$1;->a:Lcom/oplus/camera/screen/out/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/oplus/camera/screen/out/c$1;->a:Lcom/oplus/camera/screen/out/c;

    invoke-static {p0}, Lcom/oplus/camera/screen/out/c;->a(Lcom/oplus/camera/screen/out/c;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
