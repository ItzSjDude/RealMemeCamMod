.class Lcom/oplus/camera/ui/preview/o$a;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/o;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/preview/o;Landroid/os/Looper;)V
    .locals 0

    .line 1575
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    .line 1576
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 1718
    :pswitch_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/preview/o;->f(I)V

    goto/16 :goto_4

    .line 1710
    :pswitch_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/o;->d(I)V

    .line 1711
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/o;->j(Lcom/oplus/camera/ui/preview/o;)I

    move-result v3

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->k(Lcom/oplus/camera/ui/preview/o;)I

    move-result v4

    const/4 v5, 0x1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/o;->l(Lcom/oplus/camera/ui/preview/o;)Z

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/oplus/camera/ui/preview/o;->a(Lcom/oplus/camera/ui/preview/o;IIZZZ)V

    const-string p0, "handleMessage, check AF converged"

    .line 1713
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1706
    :pswitch_3
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/o;->i(Lcom/oplus/camera/ui/preview/o;)V

    goto/16 :goto_4

    .line 1702
    :pswitch_4
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p0, v5}, Lcom/oplus/camera/ui/preview/o;->a(Lcom/oplus/camera/ui/preview/o;Z)V

    goto/16 :goto_4

    .line 1689
    :pswitch_5
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->a(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/n;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1690
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->a(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/n;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/oplus/camera/ui/preview/n;->d(Z)V

    .line 1693
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1, v4}, Lcom/oplus/camera/ui/preview/o;->b(Lcom/oplus/camera/ui/preview/o;Z)Z

    .line 1695
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/o;->x()Z

    move-result p1

    if-nez p1, :cond_12

    .line 1696
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/o;->g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x6

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 1668
    :pswitch_6
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->a(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/n;

    move-result-object p1

    const v0, 0x3f0ccccd    # 0.55f

    if-eqz p1, :cond_1

    .line 1669
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->a(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/n;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/n;->setAlpha(F)V

    .line 1672
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->h(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/ac;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1673
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->h(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/ac;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/ac;->setAlpha(F)V

    .line 1676
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 1677
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1678
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1680
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->d(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/f;->e()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->c(Lcom/oplus/camera/ui/preview/o;)I

    move-result p1

    if-eq v5, p1, :cond_12

    .line 1681
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1682
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/o;->g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 1625
    :pswitch_7
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/o;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 1629
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->h(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/ac;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1630
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->b(Lcom/oplus/camera/ui/preview/o;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1631
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/ui/preview/o;->k(Z)V

    .line 1635
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->d(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/f;->n()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 1639
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->a(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/n;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1640
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->a(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/n;->f()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 1644
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->a(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/n;->e()V

    .line 1647
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1648
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1651
    :cond_8
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->d(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/f;->m()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 1655
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/ui/preview/o;->d(I)V

    .line 1657
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1658
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1659
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1660
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p0, v5}, Lcom/oplus/camera/ui/preview/o;->a(Lcom/oplus/camera/ui/preview/o;Z)V

    goto/16 :goto_4

    .line 1662
    :cond_a
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/o;->d(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/f;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/f;->s()V

    goto/16 :goto_4

    .line 1611
    :pswitch_8
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1613
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/o;->h()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_0

    :cond_b
    move v5, v4

    :goto_0
    if-eqz v5, :cond_c

    .line 1616
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1617
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/o;->g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 1619
    :cond_c
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p0, v4}, Lcom/oplus/camera/ui/preview/o;->a(Lcom/oplus/camera/ui/preview/o;Z)V

    goto/16 :goto_4

    .line 1592
    :pswitch_9
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->c(Lcom/oplus/camera/ui/preview/o;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    move p1, v5

    goto :goto_1

    :cond_d
    move p1, v4

    .line 1593
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/o;->e(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/FaceView;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/o;->e(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/FaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/FaceView;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v5

    goto :goto_2

    :cond_e
    move v0, v4

    .line 1594
    :goto_2
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/o;->f(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/MultiFocusView;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/o;->f(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/MultiFocusView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/MultiFocusView;->f()Z

    move-result v1

    if-eqz v1, :cond_f

    move v4, v5

    :cond_f
    if-eqz v0, :cond_10

    .line 1597
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/o;->e(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/FaceView;

    move-result-object v0

    goto :goto_3

    :cond_10
    if-eqz v4, :cond_11

    .line 1599
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/o;->f(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/MultiFocusView;

    move-result-object v0

    goto :goto_3

    .line 1601
    :cond_11
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/o;->a(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/n;

    move-result-object v0

    .line 1604
    :goto_3
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/o;->b(Lcom/oplus/camera/ui/preview/o;)Z

    move-result p0

    if-nez p0, :cond_12

    if-eqz v0, :cond_12

    .line 1605
    invoke-interface {v0, v5, p1}, Lcom/oplus/camera/ui/preview/m;->a(ZZ)V

    goto :goto_4

    .line 1585
    :pswitch_a
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/o;->l()V

    .line 1586
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/o;->d(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/f;->f()V

    .line 1587
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o$a;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/o;->d(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/f;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/f;->h()V

    :cond_12
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
