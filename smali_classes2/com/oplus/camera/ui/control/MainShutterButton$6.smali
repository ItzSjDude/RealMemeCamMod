.class Lcom/oplus/camera/ui/control/MainShutterButton$6;
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

    .line 2350
    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$6;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 2353
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$6;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/16 p1, 0xff

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->d(Lcom/oplus/camera/ui/control/MainShutterButton;I)I

    return-void
.end method
