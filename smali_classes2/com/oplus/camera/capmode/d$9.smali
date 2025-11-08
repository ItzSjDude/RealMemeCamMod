.class Lcom/oplus/camera/capmode/d$9;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/d;->showUltraWideTips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/oplus/camera/capmode/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/d;Landroid/view/View;)V
    .locals 0

    .line 4410
    iput-object p1, p0, Lcom/oplus/camera/capmode/d$9;->b:Lcom/oplus/camera/capmode/d;

    iput-object p2, p0, Lcom/oplus/camera/capmode/d$9;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 4413
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$9;->b:Lcom/oplus/camera/capmode/d;

    invoke-static {v0}, Lcom/oplus/camera/capmode/d;->access$2000(Lcom/oplus/camera/capmode/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/d$9;->b:Lcom/oplus/camera/capmode/d;

    const-string v1, "key_bubble_type_zoom_ultra_wide"

    .line 4414
    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/d;->isFirstTipsEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/d$9;->a:Landroid/view/View;

    .line 4415
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4416
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$9;->b:Lcom/oplus/camera/capmode/d;

    iget-object v1, p0, Lcom/oplus/camera/capmode/d$9;->a:Landroid/view/View;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/capmode/d;->showFirstBubble(Landroid/view/View;I)V

    .line 4417
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$9;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 4419
    :cond_0
    invoke-static {}, Lcom/oplus/camera/j;->a()Lcom/oplus/camera/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/j;->c()V

    :goto_0
    return-void
.end method
