.class Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$6;
.super Ljava/lang/Object;
.source "COUIFloatingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->setFloatingButtonExpandEnable(Z)V
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

    .line 683
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$6;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 686
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$6;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->c(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 687
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$6;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->c(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$c;->a()V

    .line 689
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$6;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->d(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    return-void
.end method
