.class Lcom/oplus/camera/ui/menu/facebeauty/d$2;
.super Ljava/lang/Object;
.source "FaceBeautyBaseMenu.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/facebeauty/d;->b(Landroid/view/View;Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/oplus/camera/ui/menu/facebeauty/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/facebeauty/d;Landroid/view/View;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$2;->b:Lcom/oplus/camera/ui/menu/facebeauty/d;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/d$2;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
