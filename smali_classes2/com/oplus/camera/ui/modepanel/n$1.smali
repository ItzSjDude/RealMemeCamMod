.class Lcom/oplus/camera/ui/modepanel/n$1;
.super Ljava/lang/Object;
.source "ModeTitle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/modepanel/n;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/modepanel/n;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/modepanel/n;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/n$1;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n$1;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/n;->a(Lcom/oplus/camera/ui/modepanel/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n$1;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/n;->b(Lcom/oplus/camera/ui/modepanel/n;)Lcom/oplus/camera/ui/menu/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n$1;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/n;->c(Lcom/oplus/camera/ui/modepanel/n;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/n$1;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v1}, Lcom/oplus/camera/ui/modepanel/n;->d(Lcom/oplus/camera/ui/modepanel/n;)I

    move-result v1

    add-int/2addr v0, v1

    .line 296
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/n$1;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v1}, Lcom/oplus/camera/ui/modepanel/n;->c(Lcom/oplus/camera/ui/modepanel/n;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/n$1;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v2}, Lcom/oplus/camera/ui/modepanel/n;->e(Lcom/oplus/camera/ui/modepanel/n;)I

    move-result v2

    add-int/2addr v1, v2

    .line 298
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/n$1;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v2}, Lcom/oplus/camera/ui/modepanel/n;->b(Lcom/oplus/camera/ui/modepanel/n;)Lcom/oplus/camera/ui/menu/a/b;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/oplus/camera/ui/menu/a/b;->a(II)V

    .line 299
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n$1;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/n;->b(Lcom/oplus/camera/ui/modepanel/n;)Lcom/oplus/camera/ui/menu/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/a/b;->invalidate()V

    .line 300
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n$1;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/n;->b(Lcom/oplus/camera/ui/modepanel/n;)Lcom/oplus/camera/ui/menu/a/b;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/b;->setAlpha(F)V

    .line 301
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n$1;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/n;->b(Lcom/oplus/camera/ui/modepanel/n;)Lcom/oplus/camera/ui/menu/a/b;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n$1;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {p0}, Lcom/oplus/camera/ui/modepanel/n;->f(Lcom/oplus/camera/ui/modepanel/n;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/menu/a/b;->setVisibility(I)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n$1;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/n;->b(Lcom/oplus/camera/ui/modepanel/n;)Lcom/oplus/camera/ui/menu/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n$1;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {p0}, Lcom/oplus/camera/ui/modepanel/n;->b(Lcom/oplus/camera/ui/modepanel/n;)Lcom/oplus/camera/ui/menu/a/b;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/a/b;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
