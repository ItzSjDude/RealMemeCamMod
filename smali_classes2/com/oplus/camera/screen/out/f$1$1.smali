.class Lcom/oplus/camera/screen/out/f$1$1;
.super Ljava/lang/Object;
.source "ReEntryPresentation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/screen/out/f$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/screen/out/f$1;


# direct methods
.method constructor <init>(Lcom/oplus/camera/screen/out/f$1;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/oplus/camera/screen/out/f$1$1;->a:Lcom/oplus/camera/screen/out/f$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 76
    iget-object p1, p0, Lcom/oplus/camera/screen/out/f$1$1;->a:Lcom/oplus/camera/screen/out/f$1;

    iget-object p1, p1, Lcom/oplus/camera/screen/out/f$1;->b:Lcom/oplus/camera/screen/out/f;

    invoke-virtual {p1}, Lcom/oplus/camera/screen/out/f;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/oplus/camera/screen/out/f$1$1;->a:Lcom/oplus/camera/screen/out/f$1;

    iget-object p1, p1, Lcom/oplus/camera/screen/out/f$1;->b:Lcom/oplus/camera/screen/out/f;

    invoke-virtual {p1}, Lcom/oplus/camera/screen/out/f;->dismiss()V

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "schedule, requestDeviceFolded ts: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/screen/out/f$1$1;->a:Lcom/oplus/camera/screen/out/f$1;

    iget-wide v0, v0, Lcom/oplus/camera/screen/out/f$1;->a:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReEntryPresentation"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 81
    iget-object p0, p0, Lcom/oplus/camera/screen/out/f$1$1;->a:Lcom/oplus/camera/screen/out/f$1;

    iget-wide v1, p0, Lcom/oplus/camera/screen/out/f$1;->a:J

    invoke-static {p1, v0, v1, v2}, Lcom/oplus/camera/util/e;->a(IZJ)V

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
