.class Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RotateAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView$1;->a:Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->a(Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setColorFilter(I)V

    return-void
.end method
