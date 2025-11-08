.class Lcom/coui/appcompat/dialog/app/COUIAlertController$a$2;
.super Lcom/coui/appcompat/widget/w;
.source "COUIAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->b(Lcom/coui/appcompat/dialog/app/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lcom/coui/appcompat/dialog/app/a;

.field final synthetic k:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUIAlertController$a;Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/coui/appcompat/dialog/app/a;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    .line 431
    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$2;->k:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$2;->j:Lcom/coui/appcompat/dialog/app/a;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/widget/w;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .line 434
    invoke-super {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/w;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 435
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$2;->k:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->P:Ljava/lang/String;

    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 436
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$2;->j:Lcom/coui/appcompat/dialog/app/a;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    invoke-interface {p3, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method
