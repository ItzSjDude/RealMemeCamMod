.class Lcom/oplus/camera/ui/menu/facebeauty/g$3;
.super Ljava/lang/Object;
.source "FaceBeautyMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/facebeauty/g;->b(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/oplus/camera/ui/menu/facebeauty/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/facebeauty/g;IZ)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    iput p2, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->a:I

    iput-boolean p3, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 516
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/f;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 517
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/f;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/oplus/camera/ui/menu/facebeauty/f;->a(IZZ)V

    .line 519
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->g(Lcom/oplus/camera/ui/menu/facebeauty/g;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 520
    iget v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->a:I

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->h(Lcom/oplus/camera/ui/menu/facebeauty/g;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0, v3}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Lcom/oplus/camera/ui/menu/facebeauty/g;Z)Z

    .line 523
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->A()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Lcom/oplus/camera/ui/menu/facebeauty/g;Landroid/view/View;Z)V

    goto :goto_1

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->h(Lcom/oplus/camera/ui/menu/facebeauty/g;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0, v2}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Lcom/oplus/camera/ui/menu/facebeauty/g;Z)Z

    .line 528
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->A()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Lcom/oplus/camera/ui/menu/facebeauty/g;Landroid/view/View;)V

    .line 529
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->v()V

    goto :goto_0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->A()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/OplusNumAISeekBar;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/facebeauty/f;->A()Lcom/oplus/camera/ui/OplusNumAISeekBar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Lcom/oplus/camera/ui/menu/facebeauty/g;Landroid/view/View;)V

    .line 532
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->v()V

    .line 535
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->f(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->a:I

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->c(I)I

    move-result v0

    .line 536
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/f;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    .line 537
    invoke-static {v3}, Lcom/oplus/camera/ui/menu/facebeauty/g;->f(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->f()[I

    move-result-object v3

    .line 536
    invoke-virtual {v1, v0, v3}, Lcom/oplus/camera/ui/menu/facebeauty/f;->b(I[I)V

    .line 540
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/f;->x()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/facebeauty/b;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/facebeauty/b;->d()I

    move-result v0

    if-ne v2, v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->b:Z

    if-eqz v0, :cond_4

    .line 542
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->i(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v1

    const v2, 0x7f1000d9

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/oplus/camera/ui/CameraUIListener;->a(IIZZZZ)V

    .line 548
    :cond_4
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->b:Z

    if-eqz v0, :cond_5

    .line 549
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    iget v1, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->a:I

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->f(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    move-result-object v2

    iget v3, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->a:I

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->c(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/ui/menu/facebeauty/g;->a(Lcom/oplus/camera/ui/menu/facebeauty/g;II)V

    .line 552
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/g$3;->c:Lcom/oplus/camera/ui/menu/facebeauty/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->f(Lcom/oplus/camera/ui/menu/facebeauty/g;)Lcom/oplus/camera/ui/menu/facebeauty/g$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g$a;->g()V

    return-void
.end method
