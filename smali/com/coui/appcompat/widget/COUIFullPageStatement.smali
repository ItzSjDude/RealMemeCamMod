.class public Lcom/coui/appcompat/widget/COUIFullPageStatement;
.super Landroid/widget/LinearLayout;
.source "COUIFullPageStatement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIFullPageStatement$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/coui/appcompat/widget/COUIButton;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/content/Context;

.field private g:Lcom/coui/appcompat/widget/COUIFullPageStatement$a;

.field private h:Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 70
    sget v0, Lcoui/support/appcompat/R$attr;->couiFullPageStatementStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 96
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->f:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 97
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->i:I

    goto :goto_0

    .line 100
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->i:I

    .line 102
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->a()V

    .line 104
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->f:Landroid/content/Context;

    sget-object p4, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 105
    sget p2, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_exitButtonText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 106
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_bottomButtonText:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 107
    sget p4, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_couiFullPageStatementTitleText:I

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 108
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->a:Landroid/widget/TextView;

    sget v2, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_appStatement:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->c:Landroid/widget/TextView;

    sget v2, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_couiFullPageStatementTextButtonColor:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->a:Landroid/widget/TextView;

    sget v2, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_couiFullPageStatementTextColor:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p3, :cond_1

    .line 113
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->b:Lcom/coui/appcompat/widget/COUIButton;

    invoke-virtual {v0, p3}, Lcom/coui/appcompat/widget/COUIButton;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 116
    iget-object p3, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->c:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p4, :cond_3

    .line 119
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUIFullPageStatement;)Lcom/coui/appcompat/widget/COUIFullPageStatement$a;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->g:Lcom/coui/appcompat/widget/COUIFullPageStatement$a;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->f:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->e:Landroid/view/LayoutInflater;

    .line 126
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->e:Landroid/view/LayoutInflater;

    sget v1, Lcoui/support/appcompat/R$layout;->coui_full_page_statement:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 127
    sget v1, Lcoui/support/appcompat/R$id;->txt_statement:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->a:Landroid/widget/TextView;

    .line 128
    sget v1, Lcoui/support/appcompat/R$id;->btn_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUIButton;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->b:Lcom/coui/appcompat/widget/COUIButton;

    .line 129
    sget v1, Lcoui/support/appcompat/R$id;->scroll_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->h:Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;

    .line 130
    sget v1, Lcoui/support/appcompat/R$id;->txt_exit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->c:Landroid/widget/TextView;

    .line 131
    sget v1, Lcoui/support/appcompat/R$id;->txt_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->d:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->a:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/coui/appcompat/a/a;->a(Landroid/widget/TextView;I)V

    .line 134
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/coui/appcompat/a/a;->a(Landroid/widget/TextView;I)V

    .line 136
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->b:Lcom/coui/appcompat/widget/COUIButton;

    new-instance v1, Lcom/coui/appcompat/widget/COUIFullPageStatement$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIFullPageStatement$1;-><init>(Lcom/coui/appcompat/widget/COUIFullPageStatement;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/coui/appcompat/widget/COUIFullPageStatement$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIFullPageStatement$2;-><init>(Lcom/coui/appcompat/widget/COUIFullPageStatement;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->c:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/coui/appcompat/a/s;->a(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public getAppStatement()Landroid/widget/TextView;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method public getScrollTextView()Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->h:Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;

    return-object p0
.end method

.method public setAppStatement(Ljava/lang/CharSequence;)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAppStatementTextColor(I)V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setButtonListener(Lcom/coui/appcompat/widget/COUIFullPageStatement$a;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->g:Lcom/coui/appcompat/widget/COUIFullPageStatement$a;

    return-void
.end method

.method public setButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->b:Lcom/coui/appcompat/widget/COUIButton;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExitButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExitTextColor(I)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setStatementMaxHeight(I)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->h:Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;->setMaxHeight(I)V

    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
