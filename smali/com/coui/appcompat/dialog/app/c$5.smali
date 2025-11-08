.class Lcom/coui/appcompat/dialog/app/c$5;
.super Ljava/lang/Object;
.source "COUIRotatingSpinnerDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/c;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/dialog/app/c;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/c;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/c$5;->a:Lcom/coui/appcompat/dialog/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/c$5;->a:Lcom/coui/appcompat/dialog/app/c;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/c;->c(Lcom/coui/appcompat/dialog/app/c;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 174
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/c$5;->a:Lcom/coui/appcompat/dialog/app/c;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/c;->c(Lcom/coui/appcompat/dialog/app/c;)Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 175
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/c$5;->a:Lcom/coui/appcompat/dialog/app/c;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/app/c;->c(Lcom/coui/appcompat/dialog/app/c;)Landroid/view/ViewGroup;

    move-result-object p0

    sget v1, Lcoui/support/appcompat/R$id;->custom:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 178
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
