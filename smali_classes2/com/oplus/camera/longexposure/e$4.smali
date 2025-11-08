.class Lcom/oplus/camera/longexposure/e$4;
.super Ljava/lang/Object;
.source "LongExposureLevelPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/longexposure/e;->a(Lcom/oplus/camera/longexposure/h;IZ)Landroid/view/animation/AnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/longexposure/h;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/oplus/camera/longexposure/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/longexposure/e;Lcom/oplus/camera/longexposure/h;IZ)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/oplus/camera/longexposure/e$4;->d:Lcom/oplus/camera/longexposure/e;

    iput-object p2, p0, Lcom/oplus/camera/longexposure/e$4;->a:Lcom/oplus/camera/longexposure/h;

    iput p3, p0, Lcom/oplus/camera/longexposure/e$4;->b:I

    iput-boolean p4, p0, Lcom/oplus/camera/longexposure/e$4;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 666
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e$4;->d:Lcom/oplus/camera/longexposure/e;

    iget-object v0, p0, Lcom/oplus/camera/longexposure/e$4;->a:Lcom/oplus/camera/longexposure/h;

    iget v1, p0, Lcom/oplus/camera/longexposure/e$4;->b:I

    iget-boolean v2, p0, Lcom/oplus/camera/longexposure/e$4;->c:Z

    invoke-static {p1, v0, v1, v2}, Lcom/oplus/camera/longexposure/e;->a(Lcom/oplus/camera/longexposure/e;Lcom/oplus/camera/longexposure/h;IZ)V

    .line 667
    iget-object p1, p0, Lcom/oplus/camera/longexposure/e$4;->a:Lcom/oplus/camera/longexposure/h;

    iget-object p0, p0, Lcom/oplus/camera/longexposure/e$4;->d:Lcom/oplus/camera/longexposure/e;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xb4

    invoke-static {p0, v0, v1, v2}, Lcom/oplus/camera/longexposure/e;->a(Lcom/oplus/camera/longexposure/e;FFI)Landroid/view/animation/AnimationSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/longexposure/h;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
