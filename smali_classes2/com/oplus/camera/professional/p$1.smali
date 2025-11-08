.class Lcom/oplus/camera/professional/p$1;
.super Ljava/lang/Object;
.source "PanelContainer.java"

# interfaces
.implements Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/p;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/z;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/LevelPanel;

.field final synthetic b:I

.field final synthetic c:Lcom/oplus/camera/professional/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/p;Lcom/oplus/camera/professional/LevelPanel;I)V
    .locals 0

    .line 811
    iput-object p1, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    iput-object p2, p0, Lcom/oplus/camera/professional/p$1;->a:Lcom/oplus/camera/professional/LevelPanel;

    iput p3, p0, Lcom/oplus/camera/professional/p$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionUp()V
    .locals 3

    .line 854
    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    invoke-static {v0}, Lcom/oplus/camera/professional/p;->b(Lcom/oplus/camera/professional/p;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    invoke-static {v0}, Lcom/oplus/camera/professional/p;->c(Lcom/oplus/camera/professional/p;)Lcom/oplus/camera/professional/p$b;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/professional/p$1;->b:I

    iget-object v2, p0, Lcom/oplus/camera/professional/p$1;->a:Lcom/oplus/camera/professional/LevelPanel;

    iget-object p0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    iget-object p0, p0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lcom/oplus/camera/professional/p$b;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onAutoButtonClick()V
    .locals 3

    .line 831
    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    invoke-static {v0}, Lcom/oplus/camera/professional/p;->b(Lcom/oplus/camera/professional/p;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    iget v1, p0, Lcom/oplus/camera/professional/p$1;->b:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    iget v1, p0, Lcom/oplus/camera/professional/p$1;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/professional/p;->a(ZI)V

    .line 834
    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    invoke-static {v0}, Lcom/oplus/camera/professional/p;->c(Lcom/oplus/camera/professional/p;)Lcom/oplus/camera/professional/p$b;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/professional/p$1;->b:I

    const-string v1, "auto_off"

    invoke-interface {v0, p0, v1, v2}, Lcom/oplus/camera/professional/p$b;->a(ILjava/lang/String;Z)V

    goto :goto_0

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    iget v1, p0, Lcom/oplus/camera/professional/p$1;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/professional/p;->a(ZI)V

    .line 837
    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    invoke-static {v0}, Lcom/oplus/camera/professional/p;->c(Lcom/oplus/camera/professional/p;)Lcom/oplus/camera/professional/p$b;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/professional/p$1;->b:I

    const-string v1, "auto"

    invoke-interface {v0, p0, v1, v2}, Lcom/oplus/camera/professional/p$b;->a(ILjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAutoValueChange(I)V
    .locals 2

    .line 825
    iget-object p1, p0, Lcom/oplus/camera/professional/p$1;->a:Lcom/oplus/camera/professional/LevelPanel;

    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    iget-object v0, v0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 826
    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    invoke-static {v0}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/p;)Lcom/oplus/camera/professional/p$c;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/professional/p$1;->b:I

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/oplus/camera/professional/p$c;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method public onBarScrolling(Z)V
    .locals 4

    .line 844
    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    invoke-static {v0}, Lcom/oplus/camera/professional/p;->b(Lcom/oplus/camera/professional/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 845
    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    invoke-static {v0}, Lcom/oplus/camera/professional/p;->c(Lcom/oplus/camera/professional/p;)Lcom/oplus/camera/professional/p$b;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/professional/p$1;->b:I

    iget-object v2, p0, Lcom/oplus/camera/professional/p$1;->a:Lcom/oplus/camera/professional/LevelPanel;

    iget-object v3, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    iget-object v3, v3, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oplus/camera/professional/p$b;->a(ILjava/lang/String;Z)V

    .line 849
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    invoke-static {p0, p1}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/p;Z)Z

    return-void
.end method

.method public onManualValueChange(I)V
    .locals 3

    .line 814
    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->a:Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/LevelPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/oplus/camera/professional/p$1;->a:Lcom/oplus/camera/professional/LevelPanel;

    .line 815
    invoke-virtual {v1}, Lcom/oplus/camera/professional/LevelPanel;->getAlpha()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    invoke-static {v0, p1}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/p;I)V

    .line 817
    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    iget v1, p0, Lcom/oplus/camera/professional/p$1;->b:I

    invoke-static {v1}, Lcom/oplus/camera/professional/x;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/oplus/camera/professional/p;->a(ILjava/lang/String;I)V

    .line 818
    iget-object p1, p0, Lcom/oplus/camera/professional/p$1;->a:Lcom/oplus/camera/professional/LevelPanel;

    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    iget-object v0, v0, Lcom/oplus/camera/professional/p;->a:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/LevelPanel;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 819
    iget-object v0, p0, Lcom/oplus/camera/professional/p$1;->c:Lcom/oplus/camera/professional/p;

    invoke-static {v0}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/p;)Lcom/oplus/camera/professional/p$c;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/professional/p$1;->b:I

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/oplus/camera/professional/p$c;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method
