.class public Lcom/coui/appcompat/preference/c;
.super Landroidx/preference/c;
.source "COUIListPreferenceDialogFragment.java"


# instance fields
.field private b:Lcom/coui/appcompat/preference/COUIListPreference;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/graphics/drawable/BitmapDrawable;

.field private h:[Ljava/lang/CharSequence;

.field private i:Lcom/coui/appcompat/dialog/panel/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/preference/c;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/coui/appcompat/preference/c;
    .locals 3

    .line 67
    new-instance v0, Lcom/coui/appcompat/preference/c;

    invoke-direct {v0}, Lcom/coui/appcompat/preference/c;-><init>()V

    .line 68
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 69
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/c;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Landroidx/preference/c;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 136
    iget-object p0, p0, Lcom/coui/appcompat/preference/c;->i:Lcom/coui/appcompat/dialog/panel/b;

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/b;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 76
    invoke-super {p0, p1}, Landroidx/preference/c;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/c;->b()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/preference/COUIListPreference;

    iput-object p1, p0, Lcom/coui/appcompat/preference/c;->b:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 79
    iget-object p1, p0, Lcom/coui/appcompat/preference/c;->b:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIListPreference;->a()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/c;->c:Ljava/lang/CharSequence;

    .line 80
    iget-object p1, p0, Lcom/coui/appcompat/preference/c;->b:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIListPreference;->d()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/c;->d:Ljava/lang/CharSequence;

    .line 81
    iget-object p1, p0, Lcom/coui/appcompat/preference/c;->b:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIListPreference;->e()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/c;->e:Ljava/lang/CharSequence;

    .line 82
    iget-object p1, p0, Lcom/coui/appcompat/preference/c;->b:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIListPreference;->b()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/c;->f:Ljava/lang/CharSequence;

    .line 83
    iget-object p1, p0, Lcom/coui/appcompat/preference/c;->b:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIListPreference;->U()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/c;->h:[Ljava/lang/CharSequence;

    .line 85
    iget-object p1, p0, Lcom/coui/appcompat/preference/c;->b:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIListPreference;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 86
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 90
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 89
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 92
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/coui/appcompat/preference/c;->g:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/coui/appcompat/preference/c;->g:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    :cond_2
    const-string v0, "PreferenceDialogFragment.title"

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/c;->c:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.positiveText"

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/c;->d:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.negativeText"

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/c;->e:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.message"

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/c;->f:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.summaries"

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/c;->h:[Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.icon"

    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 104
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/c;->g:Landroid/graphics/drawable/BitmapDrawable;

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/c;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    .line 113
    new-instance v0, Lcom/coui/appcompat/dialog/panel/c$a;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/dialog/panel/c$a;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/c;->c:Ljava/lang/CharSequence;

    .line 114
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/panel/c$a;->a(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/panel/c$a;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/preference/c;->h:[Ljava/lang/CharSequence;

    .line 115
    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/panel/c$a;->a([Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/panel/c$a;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/c;->a(Landroidx/appcompat/app/b$a;)V

    .line 117
    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/c$a;->b()Lcom/coui/appcompat/dialog/panel/c;

    .line 118
    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/c$a;->a()Landroid/app/Dialog;

    move-result-object p1

    .line 119
    instance-of v0, p1, Lcom/coui/appcompat/dialog/panel/b;

    if-eqz v0, :cond_0

    .line 120
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/dialog/panel/b;

    iput-object v0, p0, Lcom/coui/appcompat/preference/c;->i:Lcom/coui/appcompat/dialog/panel/b;

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 143
    invoke-super {p0}, Landroidx/preference/c;->onDestroy()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/coui/appcompat/preference/c;->b:Lcom/coui/appcompat/preference/COUIListPreference;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Landroidx/preference/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 128
    iget-object p0, p0, Lcom/coui/appcompat/preference/c;->h:[Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    const-string v0, "PreferenceDialogFragment.summaries"

    .line 129
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 149
    invoke-super {p0}, Landroidx/preference/c;->onStart()V

    .line 150
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/c;->b()Landroidx/preference/DialogPreference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/c;->dismiss()V

    :cond_0
    return-void
.end method
