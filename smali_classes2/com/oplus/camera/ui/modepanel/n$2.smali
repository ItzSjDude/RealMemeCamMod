.class Lcom/oplus/camera/ui/modepanel/n$2;
.super Ljava/lang/Object;
.source "ModeTitle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/modepanel/n;->a(Ljava/lang/String;)V
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

    .line 327
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/n$2;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 330
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n$2;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/n;->a(Lcom/oplus/camera/ui/modepanel/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n$2;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/n;->b(Lcom/oplus/camera/ui/modepanel/n;)Lcom/oplus/camera/ui/menu/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n$2;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/n;->c(Lcom/oplus/camera/ui/modepanel/n;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n$2;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/n;->c(Lcom/oplus/camera/ui/modepanel/n;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 332
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/n$2;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/n;->c(Lcom/oplus/camera/ui/modepanel/n;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/n$2;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v2}, Lcom/oplus/camera/ui/modepanel/n;->d(Lcom/oplus/camera/ui/modepanel/n;)I

    move-result v2

    add-int/2addr v0, v2

    .line 333
    iget-object v2, p0, Lcom/oplus/camera/ui/modepanel/n$2;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v2}, Lcom/oplus/camera/ui/modepanel/n;->c(Lcom/oplus/camera/ui/modepanel/n;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/ui/modepanel/n$2;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {v3}, Lcom/oplus/camera/ui/modepanel/n;->e(Lcom/oplus/camera/ui/modepanel/n;)I

    move-result v3

    add-int/2addr v2, v3

    .line 335
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/n$2;->a:Lcom/oplus/camera/ui/modepanel/n;

    invoke-static {p0}, Lcom/oplus/camera/ui/modepanel/n;->b(Lcom/oplus/camera/ui/modepanel/n;)Lcom/oplus/camera/ui/menu/a/b;

    move-result-object p0

    const/16 v3, 0xfa

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/oplus/camera/ui/menu/a/b;->a(IIII)V

    :cond_0
    return-void
.end method
