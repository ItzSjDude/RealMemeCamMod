.class Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$8;
.super Lcom/coui/appcompat/widget/b;
.source "COUIFloatingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$8;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-direct {p0}, Lcom/coui/appcompat/widget/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 724
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$8;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->f(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
