.class Lcom/coui/appcompat/dialog/app/a$a$2;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/a$a;->b(Lcom/coui/appcompat/dialog/app/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/dialog/app/a$d;

.field final synthetic b:Lcom/coui/appcompat/dialog/app/a;

.field final synthetic c:Lcom/coui/appcompat/dialog/app/a$a;

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/a$a;Landroid/content/Context;Landroid/database/Cursor;ZLcom/coui/appcompat/dialog/app/a$d;Lcom/coui/appcompat/dialog/app/a;)V
    .locals 0

    .line 1330
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/a$a$2;->c:Lcom/coui/appcompat/dialog/app/a$a;

    iput-object p5, p0, Lcom/coui/appcompat/dialog/app/a$a$2;->a:Lcom/coui/appcompat/dialog/app/a$d;

    iput-object p6, p0, Lcom/coui/appcompat/dialog/app/a$a$2;->b:Lcom/coui/appcompat/dialog/app/a;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1335
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/a$a$2;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    .line 1336
    iget-object p2, p0, Lcom/coui/appcompat/dialog/app/a$a$2;->c:Lcom/coui/appcompat/dialog/app/a$a;

    iget-object p2, p2, Lcom/coui/appcompat/dialog/app/a$a;->O:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/app/a$a$2;->d:I

    .line 1337
    iget-object p2, p0, Lcom/coui/appcompat/dialog/app/a$a$2;->c:Lcom/coui/appcompat/dialog/app/a$a;

    iget-object p2, p2, Lcom/coui/appcompat/dialog/app/a$a;->P:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/dialog/app/a$a$2;->e:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    const p2, 0x1020014

    .line 1342
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    .line 1344
    iget p2, p0, Lcom/coui/appcompat/dialog/app/a$a$2;->d:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1345
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/a$a$2;->a:Lcom/coui/appcompat/dialog/app/a$d;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    iget p0, p0, Lcom/coui/appcompat/dialog/app/a$a$2;->e:I

    .line 1346
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1345
    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/dialog/app/a$d;->setItemChecked(IZ)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1351
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/a$a$2;->c:Lcom/coui/appcompat/dialog/app/a$a;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/app/a$a;->b:Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a$a$2;->b:Lcom/coui/appcompat/dialog/app/a;

    iget p0, p0, Lcom/coui/appcompat/dialog/app/a;->t:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
