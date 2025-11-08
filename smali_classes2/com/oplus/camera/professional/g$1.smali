.class Lcom/oplus/camera/professional/g$1;
.super Ljava/lang/Object;
.source "HSPanelContainer.java"

# interfaces
.implements Lcom/oplus/camera/professional/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/g;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/i;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/c;

.field final synthetic b:I

.field final synthetic c:Lcom/oplus/camera/professional/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/g;Lcom/oplus/camera/professional/c;I)V
    .locals 0

    .line 790
    iput-object p1, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    iput-object p2, p0, Lcom/oplus/camera/professional/g$1;->a:Lcom/oplus/camera/professional/c;

    iput p3, p0, Lcom/oplus/camera/professional/g$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 810
    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    invoke-static {v0}, Lcom/oplus/camera/professional/g;->b(Lcom/oplus/camera/professional/g;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    iget v1, p0, Lcom/oplus/camera/professional/g$1;->b:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    iget v1, p0, Lcom/oplus/camera/professional/g$1;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/professional/g;->a(ZI)V

    .line 813
    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    invoke-static {v0}, Lcom/oplus/camera/professional/g;->c(Lcom/oplus/camera/professional/g;)Lcom/oplus/camera/professional/g$b;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/professional/g$1;->b:I

    const-string v1, "auto_off"

    invoke-interface {v0, p0, v1, v2}, Lcom/oplus/camera/professional/g$b;->a(ILjava/lang/String;Z)V

    goto :goto_0

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    iget v1, p0, Lcom/oplus/camera/professional/g$1;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/professional/g;->a(ZI)V

    .line 816
    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    invoke-static {v0}, Lcom/oplus/camera/professional/g;->c(Lcom/oplus/camera/professional/g;)Lcom/oplus/camera/professional/g$b;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/professional/g$1;->b:I

    const-string v1, "auto"

    invoke-interface {v0, p0, v1, v2}, Lcom/oplus/camera/professional/g$b;->a(ILjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 793
    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->a:Lcom/oplus/camera/professional/c;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/c;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/oplus/camera/professional/g$1;->a:Lcom/oplus/camera/professional/c;

    .line 794
    invoke-virtual {v1}, Lcom/oplus/camera/professional/c;->getAlpha()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    invoke-static {v0, p1}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/professional/g;I)V

    .line 796
    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    iget v1, p0, Lcom/oplus/camera/professional/g$1;->b:I

    invoke-static {v1}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/oplus/camera/professional/g;->a(ILjava/lang/String;I)V

    .line 797
    iget-object p1, p0, Lcom/oplus/camera/professional/g$1;->a:Lcom/oplus/camera/professional/c;

    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    iget-object v0, v0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/c;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 798
    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    invoke-static {v0}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/professional/g;)Lcom/oplus/camera/professional/g$c;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/professional/g$1;->b:I

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/oplus/camera/professional/g$c;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 823
    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    invoke-static {v0}, Lcom/oplus/camera/professional/g;->b(Lcom/oplus/camera/professional/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 824
    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    invoke-static {v0}, Lcom/oplus/camera/professional/g;->c(Lcom/oplus/camera/professional/g;)Lcom/oplus/camera/professional/g$b;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/professional/g$1;->b:I

    iget-object v2, p0, Lcom/oplus/camera/professional/g$1;->a:Lcom/oplus/camera/professional/c;

    iget-object v3, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    iget-object v3, v3, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/professional/c;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oplus/camera/professional/g$b;->a(ILjava/lang/String;Z)V

    .line 828
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    invoke-static {p0, p1}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/professional/g;Z)Z

    return-void
.end method

.method public b()V
    .locals 3

    .line 833
    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    invoke-static {v0}, Lcom/oplus/camera/professional/g;->b(Lcom/oplus/camera/professional/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    invoke-static {v0}, Lcom/oplus/camera/professional/g;->c(Lcom/oplus/camera/professional/g;)Lcom/oplus/camera/professional/g$b;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/professional/g$1;->b:I

    iget-object v2, p0, Lcom/oplus/camera/professional/g$1;->a:Lcom/oplus/camera/professional/c;

    iget-object p0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    iget-object p0, p0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/oplus/camera/professional/c;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lcom/oplus/camera/professional/g$b;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 804
    iget-object p1, p0, Lcom/oplus/camera/professional/g$1;->a:Lcom/oplus/camera/professional/c;

    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    iget-object v0, v0, Lcom/oplus/camera/professional/g;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/c;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 805
    iget-object v0, p0, Lcom/oplus/camera/professional/g$1;->c:Lcom/oplus/camera/professional/g;

    invoke-static {v0}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/professional/g;)Lcom/oplus/camera/professional/g$c;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/professional/g$1;->b:I

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/oplus/camera/professional/g$c;->a(ILjava/lang/String;Z)V

    return-void
.end method
