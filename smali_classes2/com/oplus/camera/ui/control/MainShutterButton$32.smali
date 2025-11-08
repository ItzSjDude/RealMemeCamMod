.class Lcom/oplus/camera/ui/control/MainShutterButton$32;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MainShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/MainShutterButton;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/MainShutterButton;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V
    .locals 0

    .line 1797
    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$32;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1800
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$32;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Lcom/oplus/camera/ui/control/MainShutterButton;Z)V

    return-void
.end method
