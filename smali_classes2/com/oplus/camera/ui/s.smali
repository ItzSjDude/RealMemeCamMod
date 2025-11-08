.class public Lcom/oplus/camera/ui/s;
.super Landroidx/fragment/app/b;
.source "PageGuideDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/s$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/DialogInterface$OnShowListener;

.field private c:Landroid/content/DialogInterface$OnDismissListener;

.field private d:Lcom/oplus/camera/ui/s$a;

.field private e:Lcom/oplus/camera/ui/CameraUIListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/oplus/camera/ui/CameraUIListener;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/b;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/oplus/camera/ui/s;->a:Landroid/view/View;

    .line 30
    iput-object v0, p0, Lcom/oplus/camera/ui/s;->d:Lcom/oplus/camera/ui/s$a;

    .line 31
    iput-object v0, p0, Lcom/oplus/camera/ui/s;->e:Lcom/oplus/camera/ui/CameraUIListener;

    .line 34
    iput-object p1, p0, Lcom/oplus/camera/ui/s;->a:Landroid/view/View;

    .line 35
    iput-object p2, p0, Lcom/oplus/camera/ui/s;->e:Lcom/oplus/camera/ui/CameraUIListener;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/s;)Landroid/content/DialogInterface$OnShowListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oplus/camera/ui/s;->b:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method private a(Landroid/view/Window;)V
    .locals 1

    const/16 p0, 0x400

    .line 142
    invoke-virtual {p1, p0, p0}, Landroid/view/Window;->setFlags(II)V

    .line 144
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-ge v0, p0, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->ab()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1704

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 p0, 0x0

    .line 151
    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 152
    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0xa06

    .line 158
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/s;Landroid/view/Window;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/s;->a(Landroid/view/Window;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/oplus/camera/ui/s;->a:Landroid/view/View;

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/oplus/camera/ui/s;->c:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/oplus/camera/ui/s;->b:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/s$a;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/oplus/camera/ui/s;->d:Lcom/oplus/camera/ui/s$a;

    return-void
.end method

.method public b()Z
    .locals 0

    .line 167
    invoke-virtual {p0}, Lcom/oplus/camera/ui/s;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    const-string p1, "PageGuideDialogFragment"

    const-string v0, "onCreateDialog"

    .line 68
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/oplus/camera/ui/s;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_0
    new-instance v0, Landroidx/appcompat/app/f;

    const v1, 0x7f110168

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/app/f;-><init>(Landroid/content/Context;I)V

    .line 77
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 80
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f110167

    .line 81
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 83
    iget-object v2, p0, Lcom/oplus/camera/ui/s;->e:Lcom/oplus/camera/ui/CameraUIListener;

    const/16 v3, 0x20

    const/4 v4, 0x5

    const/4 v5, 0x3

    if-eqz v2, :cond_2

    .line 84
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v2

    if-ne v5, v2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/oplus/camera/ui/s;->e:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result v2

    if-nez v2, :cond_1

    .line 86
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 88
    :cond_1
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 91
    :goto_0
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/ui/s;->e:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz v2, :cond_4

    const/4 v6, 0x4

    .line 93
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v2

    if-ne v6, v2, :cond_4

    .line 94
    iget-object v2, p0, Lcom/oplus/camera/ui/s;->e:Lcom/oplus/camera/ui/CameraUIListener;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIListener;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v2

    const/16 v6, 0x5a

    if-ne v2, v6, :cond_3

    .line 95
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    .line 97
    :cond_3
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 100
    :goto_1
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 103
    :cond_4
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 105
    new-instance v1, Lcom/oplus/camera/ui/s$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/s$1;-><init>(Lcom/oplus/camera/ui/s;Landroid/view/Window;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 118
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/s;->d:Lcom/oplus/camera/ui/s$a;

    if-eqz p1, :cond_6

    .line 119
    invoke-interface {p1}, Lcom/oplus/camera/ui/s$a;->onGuideDialogShowAction()V

    .line 122
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/ui/s;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 123
    iget-object p0, p0, Lcom/oplus/camera/ui/s;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .line 130
    invoke-super {p0}, Landroidx/fragment/app/b;->onDestroyView()V

    .line 132
    iget-object p0, p0, Lcom/oplus/camera/ui/s;->a:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onDismiss(Landroid/content/DialogInterface;)V

    .line 191
    iget-object p0, p0, Lcom/oplus/camera/ui/s;->c:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p0, :cond_0

    .line 192
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 44
    invoke-super {p0}, Landroidx/fragment/app/b;->onStart()V

    .line 46
    iget-object v0, p0, Lcom/oplus/camera/ui/s;->e:Lcom/oplus/camera/ui/CameraUIListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 50
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v0

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/oplus/camera/ui/s;->e:Lcom/oplus/camera/ui/CameraUIListener;

    .line 51
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIListener;->ca()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/s;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 55
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 58
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, -0x1

    .line 60
    invoke-virtual {p0, v0, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_2
    return-void
.end method
