.class Lcom/coui/appcompat/dialog/panel/b$6;
.super Ljava/lang/Object;
.source "COUIBottomSheetDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/panel/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/dialog/panel/b;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/b;)V
    .locals 0

    .line 1273
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$6;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 1276
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$6;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->G(Lcom/coui/appcompat/dialog/panel/b;)V

    .line 1277
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$6;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->l(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$6;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$6;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1282
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$6;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->H(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/coui/appcompat/dialog/panel/b;->b(Lcom/coui/appcompat/dialog/panel/b;I)I

    .line 1283
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$6;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->I(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1284
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$6;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->t(Lcom/coui/appcompat/dialog/panel/b;)I

    move-result v0

    goto :goto_0

    .line 1286
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$6;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b$6;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/coui/appcompat/a/y;->a(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v0, v2

    .line 1288
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b$6;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/b;->J(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$6;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->K(Lcom/coui/appcompat/dialog/panel/b;)I

    move-result v0

    .line 1289
    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/b$6;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/b;->g(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/ViewGroup;

    move-result-object v2

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1290
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$6;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->C(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return v1

    .line 1278
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$6;->a:Lcom/coui/appcompat/dialog/panel/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/coui/appcompat/dialog/panel/b;->d(Lcom/coui/appcompat/dialog/panel/b;Z)Z

    .line 1279
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$6;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->k(Lcom/coui/appcompat/dialog/panel/b;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-static {p0, v2, v1, v0}, Lcom/coui/appcompat/dialog/panel/b;->a(Lcom/coui/appcompat/dialog/panel/b;IZLandroid/animation/Animator$AnimatorListener;)V

    :cond_4
    return v1
.end method
