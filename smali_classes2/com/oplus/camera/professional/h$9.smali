.class Lcom/oplus/camera/professional/h$9;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->onBeforePreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/h;)V
    .locals 0

    .line 2711
    iput-object p1, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2714
    iget-object v0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->ap(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/e/d;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    .line 2715
    invoke-static {v0}, Lcom/oplus/camera/professional/h;->aq(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    .line 2716
    invoke-static {v0}, Lcom/oplus/camera/professional/h;->ar(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2717
    iget-object v0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->getSelectedIndex()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 2718
    iget-object v0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->as(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0, v3, v3}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 2719
    iget-object v0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->at(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 2720
    iget-object v0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->w(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/g;->e()V

    .line 2721
    iget-object v0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->a()V

    .line 2722
    iget-object v0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->au(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->j(Z)V

    .line 2725
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0, v2, v1}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;ZI)V

    goto :goto_0

    .line 2727
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0, v3, v1}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;ZI)V

    .line 2730
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2731
    iget-object v0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/professional/e;->a(ZZ)V

    .line 2733
    iget-object v0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2734
    iget-object v0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->av(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v2}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 2735
    iget-object p0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p0, v1, v3}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;IZ)V

    goto :goto_1

    .line 2737
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/professional/h$9;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p0, v2, v3}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;IZ)V

    :cond_3
    :goto_1
    return-void
.end method
