.class Lcom/oplus/camera/ui/control/MainShutterButton$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MainShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/MainShutterButton;->y()V
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

    .line 2324
    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$4;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 2327
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$4;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->f(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    return-void
.end method
