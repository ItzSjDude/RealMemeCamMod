.class Lcom/oplus/camera/timelapsepro/g$9;
.super Ljava/lang/Object;
.source "TimeLapseProMenuLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/g;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/g;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g$9;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 827
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$9;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/g;->q(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 828
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$9;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/g;->q(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/b;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->setEnabled(Z)V

    :cond_0
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
