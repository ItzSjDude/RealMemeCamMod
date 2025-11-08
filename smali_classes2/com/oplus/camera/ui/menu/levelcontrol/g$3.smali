.class Lcom/oplus/camera/ui/menu/levelcontrol/g$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FilterEffectMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/g;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/levelcontrol/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/g;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->a(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/b;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/g$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->a(Lcom/oplus/camera/ui/menu/levelcontrol/g;)Lcom/oplus/camera/ui/menu/levelcontrol/b;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setVisibility(I)V

    return-void
.end method
