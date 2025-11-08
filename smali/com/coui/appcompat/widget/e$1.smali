.class Lcom/coui/appcompat/widget/e$1;
.super Ljava/lang/Object;
.source "COUIErrorEditTextHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/e;->a(III[FLcom/coui/appcompat/widget/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/e;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/e;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/coui/appcompat/widget/e$1;->a:Lcom/coui/appcompat/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 156
    iget-object p1, p0, Lcom/coui/appcompat/widget/e$1;->a:Lcom/coui/appcompat/widget/e;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0}, Lcom/coui/appcompat/widget/e;->a(Lcom/coui/appcompat/widget/e;ZZZ)V

    .line 158
    iget-object p1, p0, Lcom/coui/appcompat/widget/e$1;->a:Lcom/coui/appcompat/widget/e;

    invoke-static {p1}, Lcom/coui/appcompat/widget/e;->b(Lcom/coui/appcompat/widget/e;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 159
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 160
    iget-object p0, p0, Lcom/coui/appcompat/widget/e$1;->a:Lcom/coui/appcompat/widget/e;

    invoke-static {p0}, Lcom/coui/appcompat/widget/e;->b(Lcom/coui/appcompat/widget/e;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/e;->b(Lcom/coui/appcompat/widget/e;F)F

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 144
    iget-object p1, p0, Lcom/coui/appcompat/widget/e$1;->a:Lcom/coui/appcompat/widget/e;

    invoke-static {p1}, Lcom/coui/appcompat/widget/e;->a(Lcom/coui/appcompat/widget/e;)F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    .line 145
    iget-object p0, p0, Lcom/coui/appcompat/widget/e$1;->a:Lcom/coui/appcompat/widget/e;

    invoke-static {p0}, Lcom/coui/appcompat/widget/e;->b(Lcom/coui/appcompat/widget/e;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/e;->a(Lcom/coui/appcompat/widget/e;F)F

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
