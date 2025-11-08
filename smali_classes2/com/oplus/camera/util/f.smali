.class public Lcom/oplus/camera/util/f;
.super Ljava/lang/Object;
.source "DisableUitl.java"


# direct methods
.method public static a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/camera/util/f;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_2

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DisableUitl"

    const-string v3, "showDisableDialog, Exception: NameNotFoundException."

    .line 74
    invoke-static {v2, v3, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 82
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10021c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 84
    new-instance v0, Lcom/oplus/camera/util/f$1;

    invoke-direct {v0, p2, p0}, Lcom/oplus/camera/util/f$1;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    .line 108
    new-instance p2, Lcom/coui/appcompat/dialog/app/b$a;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/oplus/camera/util/f$2;

    invoke-direct {p0}, Lcom/oplus/camera/util/f$2;-><init>()V

    .line 109
    invoke-virtual {p2, p0}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    .line 119
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/dialog/app/b$a;->a(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    const p2, 0x7f1000b1

    .line 120
    invoke-virtual {p0, p2, v0}, Lcom/coui/appcompat/dialog/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    const p2, 0x7f1000b3

    .line 121
    invoke-virtual {p0, p2, v0}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    .line 122
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/dialog/app/b$a;->a(Z)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    .line 123
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->b(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/b$a;

    .line 124
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b$a;->b()Lcom/coui/appcompat/dialog/app/b;

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x200

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "DisableUitl"

    const-string v2, "isAppDiable, Exception: NameNotFoundException."

    .line 27
    invoke-static {p1, v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x1

    if-eqz v1, :cond_0

    .line 31
    iget-boolean p1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p1, :cond_0

    iget p1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, p0

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    move p0, v0

    :goto_1
    return p0

    :cond_1
    return v0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "DisableUitl"

    const-string v2, "getAppName, Exception: NameNotFoundException."

    .line 49
    invoke-static {v1, v2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0
.end method
