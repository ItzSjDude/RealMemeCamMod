.class Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;
.super Ljava/lang/Object;
.source "COUIAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->b(Lcom/coui/appcompat/dialog/app/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/dialog/app/a;

.field final synthetic b:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUIAlertController$a;Lcom/coui/appcompat/dialog/app/a;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;->b:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;->a:Lcom/coui/appcompat/dialog/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 453
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;->b:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->I:[Z

    if-eqz p1, :cond_0

    .line 454
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;->b:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->I:[Z

    iget-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;->a:Lcom/coui/appcompat/dialog/app/a;

    iget-object p2, p2, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    .line 456
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;->b:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->M:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;->a:Lcom/coui/appcompat/dialog/app/a;

    iget-object p2, p2, Lcom/coui/appcompat/dialog/app/a;->a:Landroidx/appcompat/app/f;

    iget-object p4, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;->a:Lcom/coui/appcompat/dialog/app/a;

    iget-object p4, p4, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    .line 457
    invoke-virtual {p4, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p4

    .line 456
    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 459
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;->b:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-boolean p1, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->J:Z

    if-eqz p1, :cond_3

    .line 460
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;->a:Lcom/coui/appcompat/dialog/app/a;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 461
    :goto_0
    iget-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;->b:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object p2, p2, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->N:Landroid/database/Cursor;

    if-nez p2, :cond_2

    .line 462
    iget-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;->a:Lcom/coui/appcompat/dialog/app/a;

    iget-object p2, p2, Lcom/coui/appcompat/dialog/app/a;->p:Landroid/widget/ListAdapter;

    check-cast p2, Lcom/coui/appcompat/widget/v;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;->a:Lcom/coui/appcompat/dialog/app/a;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    invoke-virtual {p2, p1, p3, p0}, Lcom/coui/appcompat/widget/v;->a(IILandroid/widget/ListView;)V

    goto :goto_1

    .line 464
    :cond_2
    iget-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;->a:Lcom/coui/appcompat/dialog/app/a;

    iget-object p2, p2, Lcom/coui/appcompat/dialog/app/a;->p:Landroid/widget/ListAdapter;

    check-cast p2, Lcom/coui/appcompat/widget/w;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;->a:Lcom/coui/appcompat/dialog/app/a;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    invoke-virtual {p2, p1, p3, p0}, Lcom/coui/appcompat/widget/w;->a(IILandroid/widget/ListView;)V

    :cond_3
    :goto_1
    return-void
.end method
