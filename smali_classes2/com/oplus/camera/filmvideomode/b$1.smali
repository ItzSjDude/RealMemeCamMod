.class Lcom/oplus/camera/filmvideomode/b$1;
.super Lcom/oplus/camera/b/a;
.source "FilmAnimatorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/filmvideomode/b;->a(Landroid/view/View;IZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(ZLandroid/view/View;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/oplus/camera/filmvideomode/b$1;->a:Z

    iput-object p2, p0, Lcom/oplus/camera/filmvideomode/b$1;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/oplus/camera/filmvideomode/b$1;->c:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 163
    iget-boolean p1, p0, Lcom/oplus/camera/filmvideomode/b$1;->a:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/b$1;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/b$1;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/b$1;->b:Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 172
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/b$1;->c:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 149
    iget-boolean p1, p0, Lcom/oplus/camera/filmvideomode/b$1;->a:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/b$1;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/b$1;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/b$1;->b:Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 158
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/b$1;->c:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Lcom/oplus/camera/filmvideomode/b;->a(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 140
    iget-boolean p1, p0, Lcom/oplus/camera/filmvideomode/b$1;->a:Z

    if-nez p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/b$1;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/b$1;->b:Landroid/view/View;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
