.class public Lcom/oplus/camera/ui/v;
.super Landroidx/fragment/app/b;
.source "StatementDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/v$a;
    }
.end annotation


# instance fields
.field private a:Lcom/coui/appcompat/widget/COUIFullPageStatement;

.field private b:Lcom/oplus/camera/ui/v$a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/b;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/oplus/camera/ui/v;->a:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    .line 40
    iput-object v0, p0, Lcom/oplus/camera/ui/v;->b:Lcom/oplus/camera/ui/v$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/b;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/oplus/camera/ui/v;->a:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    .line 40
    iput-object v0, p0, Lcom/oplus/camera/ui/v;->b:Lcom/oplus/camera/ui/v$a;

    .line 57
    iput-object p1, p0, Lcom/oplus/camera/ui/v;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/ui/v$a;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/oplus/camera/ui/v;->b:Lcom/oplus/camera/ui/v$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/oplus/camera/ui/v;->d:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/oplus/camera/ui/v;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()Lcom/coui/appcompat/widget/COUIFullPageStatement;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/oplus/camera/ui/v;->a:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/oplus/camera/ui/v;->e:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/ui/v;->a:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/v;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/oplus/camera/ui/v;->a:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    iget-object v1, p0, Lcom/oplus/camera/ui/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setTitleText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/v;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/oplus/camera/ui/v;->a:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    iget-object v1, p0, Lcom/oplus/camera/ui/v;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setExitButtonText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/v;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/oplus/camera/ui/v;->a:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    iget-object p0, p0, Lcom/oplus/camera/ui/v;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setButtonText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const-string p1, "StatementDialogFragment"

    const-string v0, "onCreateDialog"

    .line 62
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/oplus/camera/ui/v;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 70
    :cond_0
    new-instance v1, Landroidx/appcompat/app/f;

    const v2, 0x7f1101eb

    invoke-direct {v1, p1, v2}, Landroidx/appcompat/app/f;-><init>(Landroid/content/Context;I)V

    .line 71
    new-instance v2, Lcom/oplus/camera/ui/v$1;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/v$1;-><init>(Lcom/oplus/camera/ui/v;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/f;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0c0157

    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090195

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUIFullPageStatement;

    iput-object v0, p0, Lcom/oplus/camera/ui/v;->a:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    .line 91
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/oplus/camera/ui/v;->a:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 93
    invoke-static {}, Lcom/oplus/camera/util/Util;->V()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 94
    invoke-virtual {p0}, Lcom/oplus/camera/ui/v;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07057c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v2, 0xe

    .line 95
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 96
    iget-object v2, p0, Lcom/oplus/camera/ui/v;->a:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v0, p0, Lcom/oplus/camera/ui/v;->a:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    const v2, 0x7f080417

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setBackgroundResource(I)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/v;->a:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    const v2, 0x7f0805fb

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setBackgroundResource(I)V

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/v;->c()V

    .line 104
    iget-object v0, p0, Lcom/oplus/camera/ui/v;->b:Lcom/oplus/camera/ui/v$a;

    if-eqz v0, :cond_2

    .line 105
    invoke-interface {v0}, Lcom/oplus/camera/ui/v$a;->a()V

    :cond_2
    const/4 v0, 0x1

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 109
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/f;->supportRequestWindowFeature(I)Z

    .line 110
    invoke-virtual {v1}, Landroidx/appcompat/app/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v0, 0x1e

    .line 112
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_3

    invoke-static {}, Lcom/oplus/camera/util/Util;->ab()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v1}, Landroidx/appcompat/app/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x1704

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 119
    invoke-virtual {v1}, Landroidx/appcompat/app/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 120
    invoke-virtual {v1}, Landroidx/appcompat/app/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {v1}, Landroidx/appcompat/app/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x1404

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 125
    invoke-virtual {v1}, Landroidx/appcompat/app/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/v;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06044d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 128
    :goto_1
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/f;->setContentView(Landroid/view/View;)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/v;->setShowsDialog(Z)V

    return-object v1
.end method

.method public onResume()V
    .locals 0

    .line 194
    invoke-super {p0}, Landroidx/fragment/app/b;->onResume()V

    .line 196
    iget-object p0, p0, Lcom/oplus/camera/ui/v;->b:Lcom/oplus/camera/ui/v$a;

    if-eqz p0, :cond_0

    .line 197
    invoke-interface {p0}, Lcom/oplus/camera/ui/v$a;->c()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 203
    invoke-super {p0}, Landroidx/fragment/app/b;->onStart()V

    .line 205
    iget-object p0, p0, Lcom/oplus/camera/ui/v;->b:Lcom/oplus/camera/ui/v$a;

    if-eqz p0, :cond_0

    .line 206
    invoke-interface {p0}, Lcom/oplus/camera/ui/v$a;->b()V

    :cond_0
    return-void
.end method
