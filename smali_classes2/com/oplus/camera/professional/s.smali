.class public Lcom/oplus/camera/professional/s;
.super Ljava/lang/Object;
.source "ProSwitchButtonManager.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/oplus/camera/ui/CameraUIInterface;

.field private c:Lcom/oplus/camera/capmode/a;

.field private d:Landroid/content/SharedPreferences;

.field private e:Lcom/oplus/camera/ui/SwitchButton$a;

.field private f:Lcom/oplus/camera/ui/SwitchButton;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/oplus/camera/professional/s;->e:Lcom/oplus/camera/ui/SwitchButton$a;

    .line 33
    iput-object v0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    .line 35
    iput-object v0, p0, Lcom/oplus/camera/professional/s;->g:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/oplus/camera/professional/s;->a:Landroid/app/Activity;

    .line 39
    iput-object p3, p0, Lcom/oplus/camera/professional/s;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 40
    iput-object p2, p0, Lcom/oplus/camera/professional/s;->c:Lcom/oplus/camera/capmode/a;

    .line 41
    iget-object p1, p0, Lcom/oplus/camera/professional/s;->c:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/professional/s;->d:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/s;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oplus/camera/professional/s;->c:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/professional/s;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/s;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/professional/s;)Lcom/oplus/camera/ui/SwitchButton;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/professional/s;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/s;->c(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSwitch, needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProSwitchButtonManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/professional/s;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 110
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    if-nez v0, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/oplus/camera/professional/s;->g()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 119
    iget-object p0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    const/4 p1, 0x0

    const-wide/16 v1, 0x12c

    invoke-static {p0, v0, p1, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/SwitchButton;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/professional/s;)Landroid/app/Activity;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oplus/camera/professional/s;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private c(Z)V
    .locals 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideSwitch, needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProSwitchButtonManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    if-nez v0, :cond_0

    const-string p0, "hideSwitch, mProSwitchButton is null"

    .line 194
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "hideSwitch, mCameraRootView is null"

    .line 200
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 206
    iget-object p0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    const/4 p1, 0x0

    const-wide/16 v1, 0x12c

    invoke-static {p0, v0, p1, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 208
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/SwitchButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/professional/s;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oplus/camera/professional/s;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/professional/s;)Landroid/content/SharedPreferences;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oplus/camera/professional/s;->d:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private g()V
    .locals 4

    const-string v0, "ProSwitchButtonManager"

    const-string v1, "initSwitchButton"

    .line 131
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/oplus/camera/ui/SwitchButton;

    iget-object v1, p0, Lcom/oplus/camera/professional/s;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/SwitchButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    .line 134
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/SwitchButton;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b40

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/oplus/camera/professional/s;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b3a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 138
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x14

    .line 139
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v0, 0x2

    const v1, 0x7f0900e5

    .line 140
    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 142
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->d:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/s;->g:Ljava/lang/String;

    const-string v3, "off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/oplus/camera/professional/s;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0708e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/s;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0708e0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/professional/s;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070b3c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 152
    iget-object v1, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/SwitchButton;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->a:Landroid/app/Activity;

    const v1, 0x7f08063c

    invoke-static {v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/oplus/camera/professional/s;->a:Landroid/app/Activity;

    const v3, 0x7f08063d

    invoke-static {v1, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 156
    iget-object v3, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    invoke-virtual {v3, v0, v1}, Lcom/oplus/camera/ui/SwitchButton;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 158
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    new-instance v1, Lcom/oplus/camera/professional/s$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/s$2;-><init>(Lcom/oplus/camera/professional/s;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/SwitchButton;->setSwitchClickableListener(Lcom/oplus/camera/ui/SwitchButton$c;)V

    .line 170
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    new-instance v1, Lcom/oplus/camera/professional/s$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/s$3;-><init>(Lcom/oplus/camera/professional/s;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/SwitchButton;->setOnCheckedChangeListener(Lcom/oplus/camera/ui/SwitchButton$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "ProSwitchButtonManager"

    const-string v1, "unInit"

    .line 63
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/professional/s;->a(IZ)V

    .line 67
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProSwitchButtonManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->a:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/s$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/camera/professional/s$1;-><init>(Lcom/oplus/camera/professional/s;IZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/oplus/camera/professional/s;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProSwitchButtonManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    if-nez p0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/SwitchButton;->setChecked(Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 88
    iget-object p0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/oplus/camera/ui/SwitchButton;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public c()V
    .locals 4

    const-string v0, "ProSwitchButtonManager"

    const-string v1, "onAfterStartPreview"

    .line 96
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->d:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 101
    iget-object v0, p0, Lcom/oplus/camera/professional/s;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aw()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/s;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p0, v1, v1}, Lcom/oplus/camera/professional/s;->a(IZ)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    .line 213
    iget-object p0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/SwitchButton;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 219
    iget-object p0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/SwitchButton;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 225
    iget-object p0, p0, Lcom/oplus/camera/professional/s;->f:Lcom/oplus/camera/ui/SwitchButton;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 226
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/SwitchButton;->setClickable(Z)V

    :cond_0
    return-void
.end method
