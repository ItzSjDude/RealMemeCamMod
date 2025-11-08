.class Lcom/oplus/camera/capmode/d$8;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/d;->showNextTip()V
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

    .line 4380
    iput-object p1, p0, Lcom/oplus/camera/capmode/d$8;->b:Lcom/oplus/camera/capmode/d;

    iput-object p2, p0, Lcom/oplus/camera/capmode/d$8;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 4383
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$8;->b:Lcom/oplus/camera/capmode/d;

    invoke-static {v0}, Lcom/oplus/camera/capmode/d;->access$2000(Lcom/oplus/camera/capmode/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/d$8;->b:Lcom/oplus/camera/capmode/d;

    const-string v1, "key_bubble_type_zoom_ultra_wide"

    .line 4384
    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/d;->isFirstTipsEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/d$8;->a:Landroid/view/View;

    .line 4385
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    if-eqz p0, :cond_0

    .line 4386
    invoke-static {}, Lcom/oplus/camera/j;->a()Lcom/oplus/camera/j;

    move-result-object p0

    const/4 v0, 0x1

    .line 4387
    invoke-virtual {p0, v0}, Lcom/oplus/camera/j;->a(I)V

    :cond_0
    return-void
.end method
