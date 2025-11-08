.class Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;
.super Ljava/lang/Object;
.source "COUIFloatingButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/a;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/coui/appcompat/widget/floatingbutton/a;

.field final synthetic d:I

.field final synthetic e:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;IZLcom/coui/appcompat/widget/floatingbutton/a;I)V
    .locals 0

    .line 1206
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->e:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    iput p2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->a:I

    iput-boolean p3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->b:Z

    iput-object p4, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->c:Lcom/coui/appcompat/widget/floatingbutton/a;

    iput p5, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1222
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->c:Lcom/coui/appcompat/widget/floatingbutton/a;

    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->e:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    iget v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->a:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->c(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/a;->setTranslationY(F)V

    .line 1223
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->c:Lcom/coui/appcompat/widget/floatingbutton/a;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->c:Lcom/coui/appcompat/widget/floatingbutton/a;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/floatingbutton/a;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1224
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->c:Lcom/coui/appcompat/widget/floatingbutton/a;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->c:Lcom/coui/appcompat/widget/floatingbutton/a;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/floatingbutton/a;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 1226
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->c:Lcom/coui/appcompat/widget/floatingbutton/a;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/a;->setPivotX(F)V

    .line 1227
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->c:Lcom/coui/appcompat/widget/floatingbutton/a;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/a;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/a;->setPivotY(F)V

    .line 1228
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->e:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->a:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1229
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->e:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1209
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->e:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->a:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->b(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1210
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->e:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Z)Z

    .line 1211
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->e:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->setOnActionSelectedListener(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$a;)V

    .line 1213
    :cond_0
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->b:Z

    if-eqz p1, :cond_1

    .line 1214
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->e:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->c:Lcom/coui/appcompat/widget/floatingbutton/a;

    iget v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->a:I

    iget p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->d:I

    invoke-static {p1, v1, v2, p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;Lcom/coui/appcompat/widget/floatingbutton/a;IIZ)V

    goto :goto_0

    .line 1216
    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->e:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->c:Lcom/coui/appcompat/widget/floatingbutton/a;

    iget v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->a:I

    iget p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;->d:I

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, p0, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;Lcom/coui/appcompat/widget/floatingbutton/a;IIZ)V

    :goto_0
    return-void
.end method
