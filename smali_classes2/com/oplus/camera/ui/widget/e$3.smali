.class Lcom/oplus/camera/ui/widget/e$3;
.super Ljava/lang/Object;
.source "VideoClipView.java"

# interfaces
.implements Landroidx/dynamicanimation/a/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/widget/e;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:F

.field final synthetic c:Lcom/oplus/camera/ui/widget/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/widget/e;ZF)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e$3;->c:Lcom/oplus/camera/ui/widget/e;

    iput-boolean p2, p0, Lcom/oplus/camera/ui/widget/e$3;->a:Z

    iput p3, p0, Lcom/oplus/camera/ui/widget/e$3;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/dynamicanimation/a/c;FF)V
    .locals 0

    .line 655
    iget-boolean p1, p0, Lcom/oplus/camera/ui/widget/e$3;->a:Z

    if-eqz p1, :cond_0

    .line 656
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e$3;->c:Lcom/oplus/camera/ui/widget/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/e;->f(Lcom/oplus/camera/ui/widget/e;)Landroid/graphics/RectF;

    move-result-object p1

    iput p2, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 658
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e$3;->c:Lcom/oplus/camera/ui/widget/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/e;->f(Lcom/oplus/camera/ui/widget/e;)Landroid/graphics/RectF;

    move-result-object p1

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 661
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e$3;->c:Lcom/oplus/camera/ui/widget/e;

    iget p3, p0, Lcom/oplus/camera/ui/widget/e$3;->b:F

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-static {p1, p2}, Lcom/oplus/camera/ui/widget/e;->b(Lcom/oplus/camera/ui/widget/e;Z)Z

    .line 662
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e$3;->c:Lcom/oplus/camera/ui/widget/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/e;->invalidate()V

    return-void
.end method
