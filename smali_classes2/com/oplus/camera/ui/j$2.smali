.class Lcom/oplus/camera/ui/j$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GalleryBottomMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/j;->a(Z)V
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

    .line 166
    iput-object p1, p0, Lcom/oplus/camera/ui/j$2;->a:Lcom/oplus/camera/ui/j;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 179
    iget-object p1, p0, Lcom/oplus/camera/ui/j$2;->a:Lcom/oplus/camera/ui/j;

    invoke-static {p1}, Lcom/oplus/camera/ui/j;->a(Lcom/oplus/camera/ui/j;)Landroid/widget/ImageButton;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/oplus/camera/ui/j$2;->a:Lcom/oplus/camera/ui/j;

    invoke-static {p1}, Lcom/oplus/camera/ui/j;->a(Lcom/oplus/camera/ui/j;)Landroid/widget/ImageButton;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 181
    iget-object p1, p0, Lcom/oplus/camera/ui/j$2;->a:Lcom/oplus/camera/ui/j;

    invoke-static {p1}, Lcom/oplus/camera/ui/j;->a(Lcom/oplus/camera/ui/j;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 182
    iget-object p1, p0, Lcom/oplus/camera/ui/j$2;->a:Lcom/oplus/camera/ui/j;

    invoke-static {p1}, Lcom/oplus/camera/ui/j;->a(Lcom/oplus/camera/ui/j;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setTranslationX(F)V

    .line 183
    iget-object p1, p0, Lcom/oplus/camera/ui/j$2;->a:Lcom/oplus/camera/ui/j;

    invoke-static {p1}, Lcom/oplus/camera/ui/j;->a(Lcom/oplus/camera/ui/j;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 184
    iget-object p0, p0, Lcom/oplus/camera/ui/j$2;->a:Lcom/oplus/camera/ui/j;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/j;->a(Lcom/oplus/camera/ui/j;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/oplus/camera/ui/j$2;->a:Lcom/oplus/camera/ui/j;

    invoke-static {p1}, Lcom/oplus/camera/ui/j;->a(Lcom/oplus/camera/ui/j;)Landroid/widget/ImageButton;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/oplus/camera/ui/j$2;->a:Lcom/oplus/camera/ui/j;

    invoke-static {p1}, Lcom/oplus/camera/ui/j;->a(Lcom/oplus/camera/ui/j;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 171
    iget-object p1, p0, Lcom/oplus/camera/ui/j$2;->a:Lcom/oplus/camera/ui/j;

    invoke-static {p1}, Lcom/oplus/camera/ui/j;->a(Lcom/oplus/camera/ui/j;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setTranslationX(F)V

    .line 172
    iget-object p1, p0, Lcom/oplus/camera/ui/j$2;->a:Lcom/oplus/camera/ui/j;

    invoke-static {p1}, Lcom/oplus/camera/ui/j;->a(Lcom/oplus/camera/ui/j;)Landroid/widget/ImageButton;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 173
    iget-object p0, p0, Lcom/oplus/camera/ui/j$2;->a:Lcom/oplus/camera/ui/j;

    invoke-static {p0}, Lcom/oplus/camera/ui/j;->a(Lcom/oplus/camera/ui/j;)Landroid/widget/ImageButton;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method
