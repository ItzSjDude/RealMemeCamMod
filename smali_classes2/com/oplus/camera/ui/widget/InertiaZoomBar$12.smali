.class Lcom/oplus/camera/ui/widget/InertiaZoomBar$12;
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

    .line 204
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$12;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/InertiaZoomBar$12;->a:Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setAlpha(F)V

    return-void
.end method
