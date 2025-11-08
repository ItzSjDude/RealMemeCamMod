.class Lcom/oplus/camera/ui/k$4;
.super Ljava/lang/Object;
.source "GalleryPreviewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/k;->a(ZLcom/oplus/camera/ui/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/ui/k$a;

.field final synthetic c:Lcom/oplus/camera/ui/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/k;ZLcom/oplus/camera/ui/k$a;)V
    .locals 0

    .line 858
    iput-object p1, p0, Lcom/oplus/camera/ui/k$4;->c:Lcom/oplus/camera/ui/k;

    iput-boolean p2, p0, Lcom/oplus/camera/ui/k$4;->a:Z

    iput-object p3, p0, Lcom/oplus/camera/ui/k$4;->b:Lcom/oplus/camera/ui/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 861
    iget-boolean v0, p0, Lcom/oplus/camera/ui/k$4;->a:Z

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/oplus/camera/ui/k$4;->b:Lcom/oplus/camera/ui/k$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/k$a;->h(Lcom/oplus/camera/ui/k$a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/k$4;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100638

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    iget-object v0, p0, Lcom/oplus/camera/ui/k$4;->b:Lcom/oplus/camera/ui/k$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/k$a;->i(Lcom/oplus/camera/ui/k$a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/k$4;->c:Lcom/oplus/camera/ui/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;)Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f080496

    invoke-static {p0, v1}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/k$4;->b:Lcom/oplus/camera/ui/k$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/k$a;->h(Lcom/oplus/camera/ui/k$a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/k$4;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10063d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    iget-object v0, p0, Lcom/oplus/camera/ui/k$4;->b:Lcom/oplus/camera/ui/k$a;

    invoke-static {v0}, Lcom/oplus/camera/ui/k$a;->i(Lcom/oplus/camera/ui/k$a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/k$4;->c:Lcom/oplus/camera/ui/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;)Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f080497

    invoke-static {p0, v1}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
