.class Lcom/oplus/camera/ui/j$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GalleryBottomMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/j;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/j;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/j;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/oplus/camera/ui/j$1;->a:Lcom/oplus/camera/ui/j;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/oplus/camera/ui/j$1;->a:Lcom/oplus/camera/ui/j;

    invoke-static {p1}, Lcom/oplus/camera/ui/j;->a(Lcom/oplus/camera/ui/j;)Landroid/widget/ImageButton;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/oplus/camera/ui/j$1;->a:Lcom/oplus/camera/ui/j;

    invoke-static {p1}, Lcom/oplus/camera/ui/j;->a(Lcom/oplus/camera/ui/j;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 140
    iget-object p0, p0, Lcom/oplus/camera/ui/j$1;->a:Lcom/oplus/camera/ui/j;

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/j;->a(Lcom/oplus/camera/ui/j;Z)V

    :cond_0
    return-void
.end method
