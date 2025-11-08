.class Lcom/coui/appcompat/dialog/panel/b$11;
.super Ljava/lang/Object;
.source "COUIBottomSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/b;->i()V
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

    .line 426
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$11;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 429
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$11;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->h(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$11;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/b;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/b$11;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/b;->i(Lcom/coui/appcompat/dialog/panel/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 430
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/b$11;->a:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->cancel()V

    :cond_0
    return-void
.end method
