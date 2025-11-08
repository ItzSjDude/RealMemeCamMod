.class Lcom/oplus/camera/longexposure/g$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LongExposureMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/longexposure/g;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/longexposure/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/longexposure/g;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/oplus/camera/longexposure/g$3;->a:Lcom/oplus/camera/longexposure/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 224
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 225
    iget-object p0, p0, Lcom/oplus/camera/longexposure/g$3;->a:Lcom/oplus/camera/longexposure/g;

    invoke-static {p0}, Lcom/oplus/camera/longexposure/g;->b(Lcom/oplus/camera/longexposure/g;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method
