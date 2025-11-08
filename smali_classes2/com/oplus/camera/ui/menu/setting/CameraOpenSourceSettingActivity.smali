.class public Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;
.super Lcom/oplus/camera/ui/menu/setting/l;
.source "CameraOpenSourceSettingActivity.java"


# instance fields
.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ScrollView;

.field private m:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

.field private n:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/l;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->k:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->l:Landroid/widget/ScrollView;

    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 100
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 8

    const-string v0, "notice"

    const-string v1, "CameraOpenSourceSettingActivity"

    const-string v2, "getNoticeString, NOTICE_FILE_NAME: notice"

    .line 67
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 73
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 74
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 79
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0, v4}, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->a(Ljava/io/Closeable;)V

    .line 83
    invoke-direct {p0, v3}, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->a(Ljava/io/Closeable;)V

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v4

    .line 87
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNoticeString, error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    invoke-direct {p0, v4}, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->a(Ljava/io/Closeable;)V

    .line 91
    invoke-direct {p0, v3}, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->a(Ljava/io/Closeable;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .line 36
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/l;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f11001c

    .line 39
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->setTheme(I)V

    :cond_0
    const p1, 0x7f0c0152

    .line 42
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->setContentView(I)V

    const p1, 0x7f0903d5

    .line 44
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->m:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const p1, 0x7f09005b

    .line 45
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->n:Lcom/google/android/material/appbar/AppBarLayout;

    const p1, 0x7f090317

    .line 46
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->l:Landroid/widget/ScrollView;

    const p1, 0x7f0903f8

    .line 47
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->k:Landroid/widget/TextView;

    .line 49
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->m:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const v0, 0x7f08028e

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationIcon(I)V

    .line 50
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->m:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const v0, 0x7f100001

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationContentDescription(I)V

    .line 51
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->m:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    new-instance v0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity$1;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->l:Landroid/widget/ScrollView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/core/h/v;->c(Landroid/view/View;Z)V

    .line 59
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->l:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 60
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->m:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const v0, 0x7f10041d

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(I)V

    .line 61
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->n:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07098e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setPadding(IIII)V

    .line 62
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->l:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->n:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 63
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraOpenSourceSettingActivity;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
