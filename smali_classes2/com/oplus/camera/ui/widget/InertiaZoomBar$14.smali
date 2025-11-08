.class Lcom/oplus/camera/ui/widget/InertiaZoomBar$14;
.super Lcom/oplus/camera/b/a;
.source "InertiaZoomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/widget/InertiaZoomBar;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$14;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 225
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$14;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a(Lcom/oplus/camera/ui/widget/InertiaZoomBar;)Landroid/graphics/Paint;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 226
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$14;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->invalidate()V

    return-void
.end method
