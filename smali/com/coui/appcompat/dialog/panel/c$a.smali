.class public Lcom/coui/appcompat/dialog/panel/c$a;
.super Landroidx/appcompat/app/b$a;
.source "COUIListBottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/panel/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:[Z

.field public b:I

.field public c:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public d:Landroid/content/DialogInterface$OnClickListener;

.field private e:Lcom/coui/appcompat/dialog/panel/c;

.field private f:Landroid/view/View;

.field private g:Ljava/lang/CharSequence;

.field private h:Landroid/content/Context;

.field private i:[Ljava/lang/CharSequence;

.field private j:[Ljava/lang/CharSequence;

.field private k:Ljava/lang/String;

.field private l:Landroid/view/View$OnClickListener;

.field private m:Ljava/lang/String;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Ljava/lang/String;

.field private p:Landroid/view/View$OnClickListener;

.field private q:Z

.field private r:Z

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-direct {p0, p1}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Lcom/coui/appcompat/dialog/panel/c;

    invoke-direct {v0}, Lcom/coui/appcompat/dialog/panel/c;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/c$a;->e:Lcom/coui/appcompat/dialog/panel/c;

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/coui/appcompat/dialog/panel/c$a;->b:I

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/c$a;->q:Z

    .line 82
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/c$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 100
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a;->h:Landroid/content/Context;

    .line 101
    iget-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a;->h:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$layout;->coui_list_bottom_sheet_dialog_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a;->f:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/c$a;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/c$a;->q:Z

    return p0
.end method

.method static synthetic b(Lcom/coui/appcompat/dialog/panel/c$a;)Lcom/coui/appcompat/dialog/panel/c;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/c$a;->e:Lcom/coui/appcompat/dialog/panel/c;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/app/Dialog;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/c$a;->e:Lcom/coui/appcompat/dialog/panel/c;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/panel/c;->a(Lcom/coui/appcompat/dialog/panel/c;)Lcom/coui/appcompat/dialog/panel/b;

    move-result-object p0

    return-object p0
.end method

.method public a(I)Lcom/coui/appcompat/dialog/panel/c$a;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/c$a;->h:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/panel/c$a;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/c$a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a;->i:[Ljava/lang/CharSequence;

    .line 218
    iput-object p3, p0, Lcom/coui/appcompat/dialog/panel/c$a;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 219
    iput p2, p0, Lcom/coui/appcompat/dialog/panel/c$a;->b:I

    const/4 p1, 0x0

    .line 220
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/c$a;->q:Z

    return-object p0
.end method

.method public a(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/panel/c$a;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/c$a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a;->i:[Ljava/lang/CharSequence;

    .line 148
    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/c$a;->a:[Z

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/c$a;->q:Z

    .line 150
    iput-object p3, p0, Lcom/coui/appcompat/dialog/panel/c$a;->c:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/panel/c$a;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/coui/appcompat/dialog/panel/c$a;
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a;->k:Ljava/lang/String;

    .line 295
    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/c$a;->l:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/panel/c$a;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a;->j:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/panel/c$a;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a;->i:[Ljava/lang/CharSequence;

    .line 227
    iput-object p3, p0, Lcom/coui/appcompat/dialog/panel/c$a;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 228
    iput p2, p0, Lcom/coui/appcompat/dialog/panel/c$a;->b:I

    const/4 p1, 0x0

    .line 229
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/c$a;->q:Z

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/panel/c$a;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a;->i:[Ljava/lang/CharSequence;

    .line 157
    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/c$a;->a:[Z

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/c$a;->q:Z

    .line 159
    iput-object p3, p0, Lcom/coui/appcompat/dialog/panel/c$a;->c:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-object p0
.end method

.method public b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/coui/appcompat/dialog/panel/c$a;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/c$a;->o:Ljava/lang/String;

    .line 307
    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/c$a;->p:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public b()Lcom/coui/appcompat/dialog/panel/c;
    .locals 18

    move-object/from16 v0, p0

    .line 337
    iget-object v1, v0, Lcom/coui/appcompat/dialog/panel/c$a;->e:Lcom/coui/appcompat/dialog/panel/c;

    new-instance v2, Lcom/coui/appcompat/dialog/panel/b;

    iget-object v3, v0, Lcom/coui/appcompat/dialog/panel/c$a;->h:Landroid/content/Context;

    sget v4, Lcoui/support/appcompat/R$style;->DefaultBottomSheetDialog:I

    invoke-direct {v2, v3, v4}, Lcom/coui/appcompat/dialog/panel/b;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lcom/coui/appcompat/dialog/panel/c;->a(Lcom/coui/appcompat/dialog/panel/c;Lcom/coui/appcompat/dialog/panel/b;)Lcom/coui/appcompat/dialog/panel/b;

    .line 338
    iget-object v1, v0, Lcom/coui/appcompat/dialog/panel/c$a;->e:Lcom/coui/appcompat/dialog/panel/c;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/c;->a(Lcom/coui/appcompat/dialog/panel/c;)Lcom/coui/appcompat/dialog/panel/b;

    move-result-object v1

    iget-object v2, v0, Lcom/coui/appcompat/dialog/panel/c$a;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/panel/b;->setContentView(Landroid/view/View;)V

    .line 339
    iget-object v1, v0, Lcom/coui/appcompat/dialog/panel/c$a;->e:Lcom/coui/appcompat/dialog/panel/c;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/c;->a(Lcom/coui/appcompat/dialog/panel/c;)Lcom/coui/appcompat/dialog/panel/b;

    move-result-object v1

    iget-boolean v2, v0, Lcom/coui/appcompat/dialog/panel/c$a;->r:Z

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/panel/b;->a(Z)V

    .line 340
    iget-object v1, v0, Lcom/coui/appcompat/dialog/panel/c$a;->e:Lcom/coui/appcompat/dialog/panel/c;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/c;->a(Lcom/coui/appcompat/dialog/panel/c;)Lcom/coui/appcompat/dialog/panel/b;

    move-result-object v1

    iget v2, v0, Lcom/coui/appcompat/dialog/panel/c$a;->s:I

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/panel/b;->a(I)V

    .line 342
    iget-object v1, v0, Lcom/coui/appcompat/dialog/panel/c$a;->e:Lcom/coui/appcompat/dialog/panel/c;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/c;->a(Lcom/coui/appcompat/dialog/panel/c;)Lcom/coui/appcompat/dialog/panel/b;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$id;->select_dialog_listview:I

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/panel/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 343
    new-instance v2, Landroidx/recyclerview/widget/COUIPanelPreferenceLinearLayoutManager;

    iget-object v3, v0, Lcom/coui/appcompat/dialog/panel/c$a;->h:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/COUIPanelPreferenceLinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 344
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 345
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    const/4 v2, 0x0

    .line 346
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 347
    iget-object v2, v0, Lcom/coui/appcompat/dialog/panel/c$a;->e:Lcom/coui/appcompat/dialog/panel/c;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/c;->a(Lcom/coui/appcompat/dialog/panel/c;)Lcom/coui/appcompat/dialog/panel/b;

    move-result-object v2

    sget v4, Lcoui/support/appcompat/R$id;->toolbar:I

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/dialog/panel/b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 348
    iget-object v4, v0, Lcom/coui/appcompat/dialog/panel/c$a;->g:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    .line 352
    iget-boolean v2, v0, Lcom/coui/appcompat/dialog/panel/c$a;->q:Z

    if-eqz v2, :cond_0

    .line 353
    iget-object v2, v0, Lcom/coui/appcompat/dialog/panel/c$a;->e:Lcom/coui/appcompat/dialog/panel/c;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/c;->a(Lcom/coui/appcompat/dialog/panel/c;)Lcom/coui/appcompat/dialog/panel/b;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/coui/appcompat/dialog/panel/c$a;->k:Ljava/lang/String;

    iget-object v6, v0, Lcom/coui/appcompat/dialog/panel/c$a;->l:Landroid/view/View$OnClickListener;

    iget-object v7, v0, Lcom/coui/appcompat/dialog/panel/c$a;->m:Ljava/lang/String;

    iget-object v8, v0, Lcom/coui/appcompat/dialog/panel/c$a;->n:Landroid/view/View$OnClickListener;

    iget-object v9, v0, Lcom/coui/appcompat/dialog/panel/c$a;->o:Ljava/lang/String;

    iget-object v10, v0, Lcom/coui/appcompat/dialog/panel/c$a;->p:Landroid/view/View$OnClickListener;

    invoke-virtual/range {v3 .. v10}, Lcom/coui/appcompat/dialog/panel/b;->a(ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 359
    invoke-virtual {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    .line 360
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 361
    new-instance v2, Lcom/coui/appcompat/dialog/panel/a;

    iget-object v5, v0, Lcom/coui/appcompat/dialog/panel/c$a;->h:Landroid/content/Context;

    sget v6, Lcoui/support/appcompat/R$layout;->coui_select_dialog_multichoice:I

    iget-object v7, v0, Lcom/coui/appcompat/dialog/panel/c$a;->i:[Ljava/lang/CharSequence;

    iget-object v8, v0, Lcom/coui/appcompat/dialog/panel/c$a;->j:[Ljava/lang/CharSequence;

    const/4 v9, -0x1

    iget-object v10, v0, Lcom/coui/appcompat/dialog/panel/c$a;->a:[Z

    const/4 v11, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/coui/appcompat/dialog/panel/a;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I[ZZ)V

    goto :goto_0

    .line 363
    :cond_0
    new-instance v2, Lcom/coui/appcompat/dialog/panel/a;

    iget-object v13, v0, Lcom/coui/appcompat/dialog/panel/c$a;->h:Landroid/content/Context;

    sget v14, Lcoui/support/appcompat/R$layout;->coui_select_dialog_singlechoice:I

    iget-object v15, v0, Lcom/coui/appcompat/dialog/panel/c$a;->i:[Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/coui/appcompat/dialog/panel/c$a;->j:[Ljava/lang/CharSequence;

    iget v4, v0, Lcom/coui/appcompat/dialog/panel/c$a;->b:I

    move-object v12, v2

    move-object/from16 v16, v3

    move/from16 v17, v4

    invoke-direct/range {v12 .. v17}, Lcom/coui/appcompat/dialog/panel/a;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I)V

    .line 365
    :goto_0
    iget-object v3, v0, Lcom/coui/appcompat/dialog/panel/c$a;->e:Lcom/coui/appcompat/dialog/panel/c;

    invoke-static {v3}, Lcom/coui/appcompat/dialog/panel/c;->a(Lcom/coui/appcompat/dialog/panel/c;)Lcom/coui/appcompat/dialog/panel/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coui/appcompat/dialog/panel/b;->c()Lcom/coui/appcompat/widget/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/l;->getDragView()Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 368
    new-instance v1, Lcom/coui/appcompat/dialog/panel/c$a$1;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/dialog/panel/c$a$1;-><init>(Lcom/coui/appcompat/dialog/panel/c$a;)V

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/dialog/panel/a;->a(Lcom/coui/appcompat/dialog/panel/a$a;)V

    .line 383
    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/c$a;->e:Lcom/coui/appcompat/dialog/panel/c;

    return-object v0
.end method

.method public synthetic setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/panel/c$a;->a(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/panel/c$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/panel/c$a;->a([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/panel/c$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/panel/c$a;->a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/panel/c$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/panel/c$a;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/panel/c$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setTitle(I)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/c$a;->a(I)Lcom/coui/appcompat/dialog/panel/c$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/c$a;->a(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/panel/c$a;

    move-result-object p0

    return-object p0
.end method
