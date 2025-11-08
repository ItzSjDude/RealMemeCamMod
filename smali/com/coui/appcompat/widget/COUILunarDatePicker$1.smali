.class Lcom/coui/appcompat/widget/COUILunarDatePicker$1;
.super Ljava/lang/Object;
.source "COUILunarDatePicker.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUINumberPicker$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUILunarDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/COUILunarDatePicker;


# virtual methods
.method public a(Lcom/coui/appcompat/widget/COUINumberPicker;II)V
    .locals 6

    .line 161
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->b(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(Lcom/coui/appcompat/widget/COUILunarDatePicker$a;)V

    .line 162
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->b(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result v0

    .line 163
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->b(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 164
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->b(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->a(I)I

    move-result v4

    .line 165
    invoke-static {v0, v2, v4}, Lcom/coui/appcompat/widget/k;->a(III)[I

    .line 169
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->c(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 170
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->b(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    move-result-object p1

    invoke-virtual {p1, v5, p2, p3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->b(III)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->d(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 172
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->b(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    move-result-object p1

    invoke-virtual {p1, v3, p2, p3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->b(III)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->e(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 174
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->b(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    move-result-object p1

    invoke-virtual {p1, v1, p2, p3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$a;->b(III)V

    .line 179
    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->b(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->a(Lcom/coui/appcompat/widget/COUILunarDatePicker;Lcom/coui/appcompat/widget/COUILunarDatePicker$a;)V

    .line 180
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->f(Lcom/coui/appcompat/widget/COUILunarDatePicker;)V

    .line 181
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->g(Lcom/coui/appcompat/widget/COUILunarDatePicker;)V

    .line 182
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->a:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->h(Lcom/coui/appcompat/widget/COUILunarDatePicker;)V

    return-void

    .line 176
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
