.class public Lcom/coui/appcompat/dialog/app/b$a;
.super Landroidx/appcompat/app/b$a;
.source "COUIAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 382
    invoke-static {p1, v0}, Lcom/coui/appcompat/dialog/app/b;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 395
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;I)V

    .line 400
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 401
    invoke-static {p1, p2}, Lcom/coui/appcompat/dialog/app/b;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    .line 403
    iput p2, p0, Lcom/coui/appcompat/dialog/app/b$a;->b:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 2

    .line 978
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->w:[Ljava/lang/CharSequence;

    .line 979
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p3, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->A:Landroid/content/DialogInterface$OnClickListener;

    .line 980
    iput p2, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->L:I

    const/4 p2, 0x1

    .line 981
    iput-boolean p2, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->K:Z

    return-object p0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->i:Ljava/lang/CharSequence;

    .line 538
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p2, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->k:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->w:[Ljava/lang/CharSequence;

    .line 814
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p3, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->M:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 815
    iput-object p2, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->I:[Z

    const/4 p2, 0x1

    .line 816
    iput-boolean p2, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->J:Z

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->t:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->u:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->v:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public a(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 1030
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->N:Landroid/database/Cursor;

    .line 1031
    iput-object p4, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->A:Landroid/content/DialogInterface$OnClickListener;

    .line 1032
    iput p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->L:I

    .line 1033
    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->O:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1034
    iput-boolean p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->K:Z

    return-object p0
.end method

.method public a(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->N:Landroid/database/Cursor;

    .line 789
    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->O:Ljava/lang/String;

    .line 790
    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->A:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->N:Landroid/database/Cursor;

    .line 921
    iput-object p4, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->M:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 922
    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->P:Ljava/lang/String;

    .line 923
    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->O:Ljava/lang/String;

    const/4 p1, 0x1

    .line 924
    iput-boolean p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->J:Z

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->g:Landroid/view/View;

    return-object p0
.end method

.method public a(Landroid/view/View;IIII)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1218
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->C:Landroid/view/View;

    const/4 p1, 0x0

    .line 1219
    iput p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->B:I

    const/4 p1, 0x1

    .line 1220
    iput-boolean p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->H:Z

    .line 1221
    iput p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->D:I

    .line 1222
    iput p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->E:I

    .line 1223
    iput p4, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->F:I

    .line 1224
    iput p5, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->G:I

    return-object p0
.end method

.method public a(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 1152
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->R:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public a(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 1137
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->z:Landroid/widget/ListAdapter;

    .line 1138
    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->A:Landroid/content/DialogInterface$OnClickListener;

    .line 1139
    iput p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->L:I

    const/4 p1, 0x1

    .line 1140
    iput-boolean p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->K:Z

    return-object p0
.end method

.method public a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->z:Landroid/widget/ListAdapter;

    .line 771
    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->A:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->i:Ljava/lang/CharSequence;

    .line 551
    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->k:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Z)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-boolean p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->r:Z

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->w:[Ljava/lang/CharSequence;

    .line 1084
    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->A:Landroid/content/DialogInterface$OnClickListener;

    .line 1085
    iput p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->L:I

    const/4 p1, 0x1

    .line 1086
    iput-boolean p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->K:Z

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->w:[Ljava/lang/CharSequence;

    .line 723
    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->A:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->w:[Ljava/lang/CharSequence;

    .line 867
    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->M:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 868
    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->I:[Z

    const/4 p1, 0x1

    .line 869
    iput-boolean p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->J:Z

    return-object p0
.end method

.method public a()Lcom/coui/appcompat/dialog/app/b;
    .locals 3

    .line 1288
    new-instance v0, Lcom/coui/appcompat/dialog/app/b;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->a:Landroid/content/Context;

    iget v2, p0, Lcom/coui/appcompat/dialog/app/b$a;->b:I

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/b;-><init>(Landroid/content/Context;I)V

    .line 1289
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object v2, v0, Lcom/coui/appcompat/dialog/app/b;->b:Lcom/coui/appcompat/dialog/app/a;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->a(Lcom/coui/appcompat/dialog/app/a;)V

    .line 1290
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-boolean v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->r:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/b;->setCancelable(Z)V

    .line 1291
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-boolean v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->r:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1292
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/b;->setCanceledOnTouchOutside(Z)V

    .line 1294
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->t:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/b;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1295
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->u:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1296
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->v:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 1297
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->v:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/dialog/app/b;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public b(I)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->l:Ljava/lang/CharSequence;

    .line 575
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p2, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->j:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public b(Landroid/view/View;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->C:Landroid/view/View;

    const/4 p1, 0x0

    .line 1187
    iput p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->B:I

    .line 1188
    iput-boolean p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->H:Z

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->l:Ljava/lang/CharSequence;

    .line 588
    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(Z)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1240
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-boolean p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->Q:Z

    return-object p0
.end method

.method public b()Lcom/coui/appcompat/dialog/app/b;
    .locals 0

    .line 1315
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object p0

    .line 1316
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->show()V

    return-object p0
.end method

.method public c(I)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->c:I

    return-object p0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->o:Ljava/lang/CharSequence;

    .line 612
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p2, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->q:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->m:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->o:Ljava/lang/CharSequence;

    .line 625
    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->q:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c(Z)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 1249
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-boolean p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->T:Z

    return-object p0
.end method

.method public synthetic create()Landroidx/appcompat/app/b;
    .locals 0

    .line 363
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object p0

    return-object p0
.end method

.method public d(I)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 3

    .line 523
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 524
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 525
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->c:I

    return-object p0
.end method

.method public d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->w:[Ljava/lang/CharSequence;

    .line 709
    iget-object p1, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p2, p1, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->A:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public d(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->p:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public e(I)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 2

    .line 1165
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->C:Landroid/view/View;

    .line 1166
    iput p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->B:I

    const/4 p1, 0x0

    .line 1167
    iput-boolean p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->H:Z

    return-object p0
.end method

.method public f(I)Lcom/coui/appcompat/dialog/app/b$a;
    .locals 1

    .line 1260
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iput p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->U:I

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/b$a;->a:Lcom/coui/appcompat/dialog/app/COUIAlertController$a;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public synthetic setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setCancelable(Z)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->a(Z)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/view/View;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setIcon(I)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->c(I)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setIconAttribute(I)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->d(I)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setInverseBackgroundForced(Z)Landroidx/appcompat/app/b$a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->b(Z)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/b$a;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/b$a;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setMessage(I)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->b(I)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->b(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/app/b$a;->a(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/app/b$a;->a([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/b$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setNegativeButtonIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->c(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/b$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/b$a;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setNeutralButtonIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->d(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/b$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setPositiveButtonIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->b(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setRecycleOnMeasureEnabled(Z)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->c(Z)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/app/b$a;->a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/app/b$a;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setTitle(I)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->a(I)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->a(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setView(I)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->e(I)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setView(Landroid/view/View;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->b(Landroid/view/View;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setView(Landroid/view/View;IIII)Landroidx/appcompat/app/b$a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    invoke-virtual/range {p0 .. p5}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/view/View;IIII)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic show()Landroidx/appcompat/app/b;
    .locals 0

    .line 363
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b$a;->b()Lcom/coui/appcompat/dialog/app/b;

    move-result-object p0

    return-object p0
.end method
