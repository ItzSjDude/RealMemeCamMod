.class Lcom/oplus/camera/ui/preview/o$3;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/o;->a([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/o;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/o;)V
    .locals 0

    .line 1799
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/o$3;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1802
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o$3;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/o;->h(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/ac;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1805
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o$3;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/o;->m(Lcom/oplus/camera/ui/preview/o;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1806
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1811
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o$3;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/o;->m(Lcom/oplus/camera/ui/preview/o;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-ne v2, p0, :cond_1

    const/4 p0, 0x0

    .line 1812
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
