.class public Lcom/android/ui/menu/CameraSwitchPreference;
.super Lcom/coui/appcompat/preference/COUISwitchPreference;
.source "CameraSwitchPreference.java"

# interfaces
.implements Landroidx/preference/Preference$b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroidx/preference/Preference;

.field private d:Lcom/coui/appcompat/dialog/app/b;

.field private e:Lcom/coui/appcompat/dialog/app/b;

.field private final f:Landroid/content/DialogInterface$OnClickListener;

.field private final g:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->b:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->c:Landroidx/preference/Preference;

    .line 38
    iput-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Lcom/coui/appcompat/dialog/app/b;

    .line 39
    iput-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Lcom/coui/appcompat/dialog/app/b;

    .line 140
    new-instance v0, Lcom/android/ui/menu/CameraSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/android/ui/menu/CameraSwitchPreference$1;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 163
    new-instance v0, Lcom/android/ui/menu/CameraSwitchPreference$2;

    invoke-direct {v0, p0}, Lcom/android/ui/menu/CameraSwitchPreference$2;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 43
    iput-object p1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->b:Landroid/content/Context;

    .line 44
    invoke-virtual {p0, p0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 36
    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->b:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->c:Landroidx/preference/Preference;

    .line 38
    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Lcom/coui/appcompat/dialog/app/b;

    .line 39
    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Lcom/coui/appcompat/dialog/app/b;

    .line 140
    new-instance p2, Lcom/android/ui/menu/CameraSwitchPreference$1;

    invoke-direct {p2, p0}, Lcom/android/ui/menu/CameraSwitchPreference$1;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 163
    new-instance p2, Lcom/android/ui/menu/CameraSwitchPreference$2;

    invoke-direct {p2, p0}, Lcom/android/ui/menu/CameraSwitchPreference$2;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 49
    iput-object p1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->b:Landroid/content/Context;

    .line 50
    invoke-virtual {p0, p0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 36
    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->b:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->c:Landroidx/preference/Preference;

    .line 38
    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Lcom/coui/appcompat/dialog/app/b;

    .line 39
    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Lcom/coui/appcompat/dialog/app/b;

    .line 140
    new-instance p2, Lcom/android/ui/menu/CameraSwitchPreference$1;

    invoke-direct {p2, p0}, Lcom/android/ui/menu/CameraSwitchPreference$1;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 163
    new-instance p2, Lcom/android/ui/menu/CameraSwitchPreference$2;

    invoke-direct {p2, p0}, Lcom/android/ui/menu/CameraSwitchPreference$2;-><init>(Lcom/android/ui/menu/CameraSwitchPreference;)V

    iput-object p2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 55
    iput-object p1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->b:Landroid/content/Context;

    .line 56
    invoke-virtual {p0, p0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    return-void
.end method

.method static synthetic a(Lcom/android/ui/menu/CameraSwitchPreference;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/ui/menu/CameraSwitchPreference;->l()V

    return-void
.end method

.method private l()V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->c:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    const-string p0, "CameraSwitchPreference"

    const-string v0, "Exception: null == mPreference"

    .line 149
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_0
    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->c:Landroidx/preference/Preference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->L()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->c:Landroidx/preference/Preference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, 0x0

    .line 159
    invoke-virtual {p0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 160
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    .line 115
    :cond_0
    new-instance v0, Lcom/coui/appcompat/dialog/app/b$a;

    iget-object v1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->b:Landroid/content/Context;

    const v2, 0x7f110150

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f10041b

    .line 116
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/b$a;->a(I)Lcom/coui/appcompat/dialog/app/b$a;

    const v1, 0x7f100413

    .line 117
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/b$a;->b(I)Lcom/coui/appcompat/dialog/app/b$a;

    const v1, 0x7f100410

    .line 118
    iget-object v2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    const v1, 0x7f10040f

    .line 119
    iget-object v2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    .line 120
    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Lcom/coui/appcompat/dialog/app/b;

    .line 122
    iget-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraSwitchPreference;->K()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    iget-object p0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->show()V

    :cond_1
    return-void
.end method

.method protected c(Z)Z
    .locals 6

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persistBoolean, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSwitchPreference"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "on"

    const-string v2, "off"

    if-eqz p1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 65
    :goto_0
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/ui/menu/CameraSwitchPreference;->d(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persistBoolean, persistString error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 70
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->d(Ljava/lang/String;)Z

    move-result p0

    :goto_2
    return p0
.end method

.method public d()V
    .locals 3

    const-string v0, "CameraSwitchPreference"

    const-string v1, "release"

    .line 171
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "release, mRecordLocationDialog dismiss"

    .line 174
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    :cond_0
    const/4 v1, 0x0

    .line 179
    iput-object v1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->d:Lcom/coui/appcompat/dialog/app/b;

    .line 181
    iget-object v2, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "release, mStoragePlaceDialog dismiss"

    .line 182
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    .line 187
    :cond_1
    iput-object v1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Lcom/coui/appcompat/dialog/app/b;

    return-void
.end method

.method protected d(Z)Z
    .locals 6

    const-string v0, "off"

    const-string v1, "CameraSwitchPreference"

    const-string v2, "on"

    if-eqz p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 81
    :goto_0
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persistBoolean, getPersistedString error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :try_start_1
    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->d(Z)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persistBoolean, super.getPersistedBoolean error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v3, p1

    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p1, :cond_1

    move-object v0, v2

    .line 93
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->d(Ljava/lang/String;)Z

    move v0, v3

    .line 96
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persistBoolean, key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", defaultReturnValue: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isOn: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public e()Z
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Lcom/coui/appcompat/dialog/app/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public f()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object p0, p0, Lcom/android/ui/menu/CameraSwitchPreference;->e:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 129
    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object p2

    const-string v0, "pref_camera_storage_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p1}, Landroidx/preference/Preference;->L()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 131
    iput-object p1, p0, Lcom/android/ui/menu/CameraSwitchPreference;->c:Landroidx/preference/Preference;

    .line 132
    invoke-virtual {p0}, Lcom/android/ui/menu/CameraSwitchPreference;->c()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
