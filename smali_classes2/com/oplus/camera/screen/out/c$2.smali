.class Lcom/oplus/camera/screen/out/c$2;
.super Ljava/util/TimerTask;
.source "InnerPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/screen/out/c;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/oplus/camera/screen/out/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/screen/out/c;J)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/oplus/camera/screen/out/c$2;->b:Lcom/oplus/camera/screen/out/c;

    iput-wide p2, p0, Lcom/oplus/camera/screen/out/c$2;->a:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/screen/out/c$2;->b:Lcom/oplus/camera/screen/out/c;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/out/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0100b6

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/oplus/camera/screen/out/c$2$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/screen/out/c$2$1;-><init>(Lcom/oplus/camera/screen/out/c$2;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 111
    iget-object p0, p0, Lcom/oplus/camera/screen/out/c$2;->b:Lcom/oplus/camera/screen/out/c;

    invoke-static {p0}, Lcom/oplus/camera/screen/out/c;->b(Lcom/oplus/camera/screen/out/c;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
