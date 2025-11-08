.class Lcom/coui/appcompat/dialog/panel/c$a$1;
.super Ljava/lang/Object;
.source "COUIListBottomSheetDialog.java"

# interfaces
.implements Lcom/coui/appcompat/dialog/panel/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/c$a;->b()Lcom/coui/appcompat/dialog/panel/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/dialog/panel/c$a;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/c$a;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a$1;->a:Lcom/coui/appcompat/dialog/panel/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 1

    .line 371
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a$1;->a:Lcom/coui/appcompat/dialog/panel/c$a;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/c$a;->a(Lcom/coui/appcompat/dialog/panel/c$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 372
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a$1;->a:Lcom/coui/appcompat/dialog/panel/c$a;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/panel/c$a;->c:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz p1, :cond_2

    .line 373
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a$1;->a:Lcom/coui/appcompat/dialog/panel/c$a;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/panel/c$a;->c:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/c$a$1;->a:Lcom/coui/appcompat/dialog/panel/c$a;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/c$a;->b(Lcom/coui/appcompat/dialog/panel/c$a;)Lcom/coui/appcompat/dialog/panel/c;

    move-result-object p0

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/c;->a(Lcom/coui/appcompat/dialog/panel/c;)Lcom/coui/appcompat/dialog/panel/b;

    move-result-object p0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1, p0, p2, p3}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    goto :goto_1

    .line 376
    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a$1;->a:Lcom/coui/appcompat/dialog/panel/c$a;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/panel/c$a;->d:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_2

    .line 377
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a$1;->a:Lcom/coui/appcompat/dialog/panel/c$a;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/panel/c$a;->d:Landroid/content/DialogInterface$OnClickListener;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/c$a$1;->a:Lcom/coui/appcompat/dialog/panel/c$a;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/c$a;->b(Lcom/coui/appcompat/dialog/panel/c$a;)Lcom/coui/appcompat/dialog/panel/c;

    move-result-object p0

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/c;->a(Lcom/coui/appcompat/dialog/panel/c;)Lcom/coui/appcompat/dialog/panel/b;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_2
    :goto_1
    return-void
.end method
