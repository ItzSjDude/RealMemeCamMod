.class Lcom/coui/appcompat/dialog/app/a$a$1;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/a$a;->b(Lcom/coui/appcompat/dialog/app/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/dialog/app/a$d;

.field final synthetic b:Lcom/coui/appcompat/dialog/app/a$a;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/a$a;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/coui/appcompat/dialog/app/a$d;)V
    .locals 0

    .line 1316
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/a$a$1;->b:Lcom/coui/appcompat/dialog/app/a$a;

    iput-object p6, p0, Lcom/coui/appcompat/dialog/app/a$a$1;->a:Lcom/coui/appcompat/dialog/app/a$d;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1319
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1320
    iget-object p3, p0, Lcom/coui/appcompat/dialog/app/a$a$1;->b:Lcom/coui/appcompat/dialog/app/a$a;

    iget-object p3, p3, Lcom/coui/appcompat/dialog/app/a$a;->I:[Z

    if-eqz p3, :cond_0

    .line 1321
    iget-object p3, p0, Lcom/coui/appcompat/dialog/app/a$a$1;->b:Lcom/coui/appcompat/dialog/app/a$a;

    iget-object p3, p3, Lcom/coui/appcompat/dialog/app/a$a;->I:[Z

    aget-boolean p3, p3, p1

    if-eqz p3, :cond_0

    .line 1323
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a$a$1;->a:Lcom/coui/appcompat/dialog/app/a$d;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Lcom/coui/appcompat/dialog/app/a$d;->setItemChecked(IZ)V

    :cond_0
    return-object p2
.end method
