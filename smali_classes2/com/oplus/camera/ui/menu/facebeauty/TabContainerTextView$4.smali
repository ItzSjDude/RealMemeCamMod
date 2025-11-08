.class Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TabContainerTextView.java"


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

    .line 244
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$4;->a:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 247
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$4;->a:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->d(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 248
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$4;->a:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$4;->a:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->e(Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setBackgroundResource(I)V

    .line 250
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$4;->a:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView$4;->a:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {p1, v0, p0}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    return-void
.end method
