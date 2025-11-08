.class Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$2;
.super Ljava/lang/Object;
.source "TabContainerTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->b()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$2;->a:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$2;->a:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setTextColor(I)V

    return-void
.end method
