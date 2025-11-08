.class Lcom/coui/appcompat/widget/COUIDatePicker$1;
.super Ljava/lang/Object;
.source "COUIDatePicker.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUINumberPicker$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/COUIDatePicker;


# virtual methods
.method public a(Lcom/coui/appcompat/widget/COUINumberPicker;II)V
    .locals 1

    .line 163
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->a:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {p2}, Lcom/coui/appcompat/widget/COUIDatePicker;->b(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUIDatePicker$b;

    move-result-object p2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->a:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker;->a(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUIDatePicker$b;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(Lcom/coui/appcompat/widget/COUIDatePicker$b;)V

    .line 165
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->a:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {p2}, Lcom/coui/appcompat/widget/COUIDatePicker;->c(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 166
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->a:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->b(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUIDatePicker$b;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(II)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->a:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {p2}, Lcom/coui/appcompat/widget/COUIDatePicker;->d(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_1

    .line 168
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->a:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->b(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUIDatePicker$b;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(II)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->a:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {p2}, Lcom/coui/appcompat/widget/COUIDatePicker;->e(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 170
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->a:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->b(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUIDatePicker$b;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/widget/COUIDatePicker$b;->a(II)V

    .line 175
    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->a:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->b(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUIDatePicker$b;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coui/appcompat/widget/COUIDatePicker;->a(Lcom/coui/appcompat/widget/COUIDatePicker;Lcom/coui/appcompat/widget/COUIDatePicker$b;)V

    .line 176
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->a:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->f(Lcom/coui/appcompat/widget/COUIDatePicker;)V

    .line 177
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->a:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->g(Lcom/coui/appcompat/widget/COUIDatePicker;)V

    .line 178
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->a:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->h(Lcom/coui/appcompat/widget/COUIDatePicker;)V

    return-void

    .line 172
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
