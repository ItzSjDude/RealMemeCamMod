.class Lcom/oplus/camera/ui/d$45;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->fg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;IZZZZ)V
    .locals 0

    .line 8553
    iput-object p1, p0, Lcom/oplus/camera/ui/d$45;->f:Lcom/oplus/camera/ui/d;

    iput p2, p0, Lcom/oplus/camera/ui/d$45;->a:I

    iput-boolean p3, p0, Lcom/oplus/camera/ui/d$45;->b:Z

    iput-boolean p4, p0, Lcom/oplus/camera/ui/d$45;->c:Z

    iput-boolean p5, p0, Lcom/oplus/camera/ui/d$45;->d:Z

    iput-boolean p6, p0, Lcom/oplus/camera/ui/d$45;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 8556
    iget v0, p0, Lcom/oplus/camera/ui/d$45;->a:I

    iget-object v1, p0, Lcom/oplus/camera/ui/d$45;->f:Lcom/oplus/camera/ui/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/d;->ai(Lcom/oplus/camera/ui/d;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 8557
    iget-object v0, p0, Lcom/oplus/camera/ui/d$45;->f:Lcom/oplus/camera/ui/d;

    iget v1, p0, Lcom/oplus/camera/ui/d$45;->a:I

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;I)I

    .line 8558
    iget-object v0, p0, Lcom/oplus/camera/ui/d$45;->f:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/ui/d$45;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setImageResource(I)V

    .line 8561
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$45;->f:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "CameraUIManager"

    const-string v0, "updateFaceBeautyEnterButton, mCameraUIListener is null"

    .line 8562
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8567
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/ui/d$45;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/d$45;->f:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->aa()I

    move-result v2

    invoke-static {v0, v2}, Lcom/oplus/camera/ui/d;->k(Lcom/oplus/camera/ui/d;I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcom/oplus/camera/ui/d$45;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/d$45;->f:Lcom/oplus/camera/ui/d;

    .line 8568
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->ae()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/oplus/camera/ui/d$45;->d:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/ui/d$45;->f:Lcom/oplus/camera/ui/d;

    .line 8569
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->af()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8570
    :cond_4
    iget-boolean v0, p0, Lcom/oplus/camera/ui/d$45;->e:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/ui/d$45;->f:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->af()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8571
    iget-object v0, p0, Lcom/oplus/camera/ui/d$45;->f:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->a()V

    .line 8572
    iget-object v0, p0, Lcom/oplus/camera/ui/d$45;->f:Lcom/oplus/camera/ui/d;

    const v2, 0x7f08051e

    invoke-static {v0, v2}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;I)I

    .line 8573
    iget-object v0, p0, Lcom/oplus/camera/ui/d$45;->f:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setColorFilter(I)V

    .line 8574
    iget-object v0, p0, Lcom/oplus/camera/ui/d$45;->f:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/d$45;->f:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->ai(Lcom/oplus/camera/ui/d;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setImageResource(I)V

    goto :goto_0

    .line 8576
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/ui/d$45;->f:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setSelected(Z)V

    goto :goto_0

    .line 8579
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/ui/d$45;->f:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setSelected(Z)V

    :goto_0
    return-void
.end method
