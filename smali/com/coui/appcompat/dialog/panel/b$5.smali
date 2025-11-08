.class Lcom/coui/appcompat/dialog/panel/b$5;
.super Ljava/lang/Object;
.source "COUIBottomSheetDialog.java"

# interfaces
.implements Lcom/a/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/b;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/dialog/panel/b;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/b;)V
    .locals 0

    .line 1009
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$5;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/f;)V
    .locals 3

    .line 1012
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$5;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->E(Lcom/coui/appcompat/dialog/panel/b;)Lcom/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$5;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->F(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1016
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/f;->c()D

    move-result-wide v0

    double-to-int p1, v0

    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 1018
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/b$5;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/b;->E(Lcom/coui/appcompat/dialog/panel/b;)Lcom/a/a/f;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    .line 1020
    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$5;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/b;->F(Lcom/coui/appcompat/dialog/panel/b;)Landroid/view/View;

    move-result-object p0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/a/a/f;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/a/a/f;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/a/a/f;)V
    .locals 0

    return-void
.end method
