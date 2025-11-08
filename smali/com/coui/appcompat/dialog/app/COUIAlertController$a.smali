.class public Lcom/coui/appcompat/dialog/app/COUIAlertController$a;
.super Lcom/coui/appcompat/dialog/app/a$a;
.source "COUIAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/app/COUIAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public V:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 402
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/a$a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private b(Lcom/coui/appcompat/dialog/app/a;)V
    .locals 11

    .line 415
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->J:Z

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->N:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 417
    new-instance v9, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$1;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->a:Landroid/content/Context;

    iget v3, p1, Lcom/coui/appcompat/dialog/app/a;->t:I

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->w:[Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->x:[Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->I:[Z

    const/4 v7, 0x1

    move-object v0, v9

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$1;-><init>(Lcom/coui/appcompat/dialog/app/COUIAlertController$a;Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[ZZLcom/coui/appcompat/dialog/app/a;)V

    iput-object v9, p1, Lcom/coui/appcompat/dialog/app/a;->p:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 431
    :cond_0
    new-instance v10, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$2;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->N:Landroid/database/Cursor;

    iget v4, p1, Lcom/coui/appcompat/dialog/app/a;->t:I

    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->O:Ljava/lang/String;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->P:Ljava/lang/String;

    iget-object v7, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->V:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->J:Z

    move-object v0, v10

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$2;-><init>(Lcom/coui/appcompat/dialog/app/COUIAlertController$a;Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/coui/appcompat/dialog/app/a;)V

    iput-object v10, p1, Lcom/coui/appcompat/dialog/app/a;->p:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 440
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->K:Z

    if-eqz v0, :cond_3

    .line 441
    iget v4, p1, Lcom/coui/appcompat/dialog/app/a;->u:I

    .line 442
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->N:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 443
    new-instance v0, Lcom/coui/appcompat/widget/w;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->N:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->O:Ljava/lang/String;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->V:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/widget/w;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/coui/appcompat/dialog/app/a;->p:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->z:Landroid/widget/ListAdapter;

    if-nez v0, :cond_3

    .line 445
    new-instance v0, Lcom/coui/appcompat/widget/v;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->w:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->x:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/coui/appcompat/widget/v;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    iput-object v0, p1, Lcom/coui/appcompat/dialog/app/a;->p:Landroid/widget/ListAdapter;

    .line 449
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->M:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_4

    .line 450
    iget-object v0, p1, Lcom/coui/appcompat/dialog/app/a;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertController$a$3;-><init>(Lcom/coui/appcompat/dialog/app/COUIAlertController$a;Lcom/coui/appcompat/dialog/app/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lcom/coui/appcompat/dialog/app/a;)V
    .locals 1

    .line 407
    invoke-super {p0, p1}, Lcom/coui/appcompat/dialog/app/a$a;->a(Lcom/coui/appcompat/dialog/app/a;)V

    .line 408
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->w:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->N:Landroid/database/Cursor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->z:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 409
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->b(Lcom/coui/appcompat/dialog/app/a;)V

    :cond_1
    return-void
.end method
