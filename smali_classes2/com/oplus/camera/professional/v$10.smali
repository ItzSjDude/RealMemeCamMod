.class Lcom/oplus/camera/professional/v$10;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->onBeforePreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v;)V
    .locals 0

    .line 2883
    iput-object p1, p0, Lcom/oplus/camera/professional/v$10;->a:Lcom/oplus/camera/professional/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2886
    iget-object v0, p0, Lcom/oplus/camera/professional/v$10;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->ax(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/e/d;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/v$10;->a:Lcom/oplus/camera/professional/v;

    .line 2887
    invoke-static {v0}, Lcom/oplus/camera/professional/v;->ay(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/v$10;->a:Lcom/oplus/camera/professional/v;

    .line 2888
    invoke-static {v0}, Lcom/oplus/camera/professional/v;->az(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2889
    iget-object v0, p0, Lcom/oplus/camera/professional/v$10;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->G(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/ListProfessionalModeBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getSelectedIndex()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 2890
    iget-object v0, p0, Lcom/oplus/camera/professional/v$10;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->aA(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0, v3, v3}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 2891
    iget-object v0, p0, Lcom/oplus/camera/professional/v$10;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->aB(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 2892
    iget-object v0, p0, Lcom/oplus/camera/professional/v$10;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->z(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/p;->e()V

    .line 2893
    iget-object v0, p0, Lcom/oplus/camera/professional/v$10;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->G(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/ListProfessionalModeBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a()V

    .line 2894
    iget-object v0, p0, Lcom/oplus/camera/professional/v$10;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->aC(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->j(Z)V

    .line 2897
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v$10;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0, v2, v1}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/v;ZI)V

    goto :goto_0

    .line 2899
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/v$10;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0, v3, v1}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/v;ZI)V

    .line 2902
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v$10;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->G(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/ListProfessionalModeBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2903
    iget-object v0, p0, Lcom/oplus/camera/professional/v$10;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->G(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/ListProfessionalModeBar;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(ZZ)V

    .line 2905
    iget-object v0, p0, Lcom/oplus/camera/professional/v$10;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->G(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/ListProfessionalModeBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2906
    iget-object p0, p0, Lcom/oplus/camera/professional/v$10;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->aD(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/capmode/a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v2, v2}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    :cond_2
    return-void
.end method
