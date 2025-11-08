.class Lcom/oplus/camera/ui/d$21;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->ad(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;Ljava/lang/String;)V
    .locals 0

    .line 6203
    iput-object p1, p0, Lcom/oplus/camera/ui/d$21;->c:Lcom/oplus/camera/ui/d;

    iput-object p2, p0, Lcom/oplus/camera/ui/d$21;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    iput-object p3, p0, Lcom/oplus/camera/ui/d$21;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 6206
    iget-object v0, p0, Lcom/oplus/camera/ui/d$21;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    if-eqz v0, :cond_3

    .line 6207
    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getHintTextView()Lcom/oplus/camera/ui/menu/OplusTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6209
    iget-object v0, p0, Lcom/oplus/camera/ui/d$21;->b:Ljava/lang/String;

    const-string v1, "square"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6210
    invoke-static {}, Lcom/oplus/camera/util/Util;->M()I

    move-result v0

    .line 6212
    iget-object v2, p0, Lcom/oplus/camera/ui/d$21;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v2}, Lcom/oplus/camera/ui/d;->ab(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6213
    iget-object v2, p0, Lcom/oplus/camera/ui/d$21;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v2}, Lcom/oplus/camera/ui/d;->ab(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/d$21;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getHintTextView()Lcom/oplus/camera/ui/menu/OplusTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/OplusTextView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/oplus/camera/ui/d$21;->c:Lcom/oplus/camera/ui/d;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/d;->bT()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$21;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 6214
    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getHintTextView()Lcom/oplus/camera/ui/menu/OplusTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/OplusTextView;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/oplus/camera/ui/d$21;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getMarginLeft()I

    move-result p0

    add-int/2addr v0, p0

    .line 6213
    invoke-virtual {v2, v3, v1, v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(IIIZ)V

    goto/16 :goto_1

    .line 6216
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$21;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->ab(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6221
    iget-object v0, p0, Lcom/oplus/camera/ui/d$21;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->e(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/d$21;->c:Lcom/oplus/camera/ui/d;

    .line 6222
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->e(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 6223
    iget-object v0, p0, Lcom/oplus/camera/ui/d$21;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0704ce

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v2, v1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 6225
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/d$21;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->e(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/oplus/camera/ui/d$21;->c:Lcom/oplus/camera/ui/d;

    .line 6226
    invoke-static {v3}, Lcom/oplus/camera/ui/d;->e(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/d$21;->c:Lcom/oplus/camera/ui/d;

    .line 6227
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->e(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6228
    iget-object v0, p0, Lcom/oplus/camera/ui/d$21;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getIconWidth()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->M()I

    move-result v1

    add-int/2addr v1, v0

    .line 6229
    iget-object v0, p0, Lcom/oplus/camera/ui/d$21;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0706f9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v0

    .line 6234
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/ui/d$21;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v3}, Lcom/oplus/camera/ui/d;->ab(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/ui/d$21;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 6235
    invoke-virtual {v4}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getHintTextView()Lcom/oplus/camera/ui/menu/OplusTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/OplusTextView;->getHeight()I

    move-result v4

    invoke-static {}, Lcom/oplus/camera/util/Util;->M()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget-object v1, p0, Lcom/oplus/camera/ui/d$21;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    .line 6236
    invoke-virtual {v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getHintTextView()Lcom/oplus/camera/ui/menu/OplusTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/OplusTextView;->getHeight()I

    move-result v1

    iget-object p0, p0, Lcom/oplus/camera/ui/d$21;->a:Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getMarginLeft()I

    move-result p0

    add-int/2addr v1, p0

    .line 6234
    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(IIIZ)V

    :cond_3
    :goto_1
    return-void
.end method
