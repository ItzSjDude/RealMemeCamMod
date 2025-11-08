.class public Lcom/coui/appcompat/preference/d;
.super Landroidx/preference/d;
.source "COUIMultiSelectListPreferenceDialogFragment.java"


# instance fields
.field private e:[Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Lcom/coui/appcompat/dialog/panel/c;

.field private h:Lcom/coui/appcompat/dialog/panel/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/preference/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/preference/d;)Lcom/coui/appcompat/dialog/panel/c;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/coui/appcompat/preference/d;->g:Lcom/coui/appcompat/dialog/panel/c;

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/coui/appcompat/preference/d;
    .locals 3

    .line 52
    new-instance v0, Lcom/coui/appcompat/preference/d;

    invoke-direct {v0}, Lcom/coui/appcompat/preference/d;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 54
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/d;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 113
    invoke-super {p0, p1}, Landroidx/preference/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 114
    iget-object p0, p0, Lcom/coui/appcompat/preference/d;->h:Lcom/coui/appcompat/dialog/panel/b;

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/b;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Landroidx/preference/d;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/d;->b()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->a()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/d;->f:Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->p()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/d;->e:[Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/d;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    .line 73
    new-instance v0, Lcom/coui/appcompat/dialog/panel/c$a;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/dialog/panel/c$a;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/d;->f:Ljava/lang/CharSequence;

    .line 74
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/panel/c$a;->a(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/panel/c$a;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/preference/d;->e:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/panel/c$a;->a([Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/panel/c$a;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/d;->a(Landroidx/appcompat/app/b$a;)V

    .line 76
    sget v0, Lcoui/support/appcompat/R$string;->dialog_cancel:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/preference/d$2;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/preference/d$2;-><init>(Lcom/coui/appcompat/preference/d;Lcom/coui/appcompat/dialog/panel/c$a;)V

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/dialog/panel/c$a;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/coui/appcompat/dialog/panel/c$a;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->dialog_ok:I

    .line 85
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/preference/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/preference/d$1;

    invoke-direct {v2, p0, p1}, Lcom/coui/appcompat/preference/d$1;-><init>(Lcom/coui/appcompat/preference/d;Lcom/coui/appcompat/dialog/panel/c$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/panel/c$a;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/coui/appcompat/dialog/panel/c$a;

    .line 95
    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/c$a;->b()Lcom/coui/appcompat/dialog/panel/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/d;->g:Lcom/coui/appcompat/dialog/panel/c;

    .line 96
    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/c$a;->a()Landroid/app/Dialog;

    move-result-object p1

    .line 97
    instance-of v0, p1, Lcom/coui/appcompat/dialog/panel/b;

    if-eqz v0, :cond_0

    .line 98
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/dialog/panel/b;

    iput-object v0, p0, Lcom/coui/appcompat/preference/d;->h:Lcom/coui/appcompat/dialog/panel/b;

    :cond_0
    return-object p1
.end method

.method public onStart()V
    .locals 1

    .line 105
    invoke-super {p0}, Landroidx/preference/d;->onStart()V

    .line 106
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/d;->b()Landroidx/preference/DialogPreference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/d;->dismiss()V

    :cond_0
    return-void
.end method
