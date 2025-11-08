.class public Lcom/oplus/camera/ui/menu/setting/q;
.super Landroid/view/View;
.source "ExpandableMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/setting/q$a;,
        Lcom/oplus/camera/ui/menu/setting/q$b;
    }
.end annotation


# static fields
.field public static final DEFALUT_MENU:Ljava/lang/String; = "DefaultExpandPanel"

.field public static final EXPAND_MENU_HIDE:I = 0x0

.field public static final EXPAND_MENU_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExpandableMenuPanel"

.field public static mCurrentMenuKey:Ljava/lang/String; = "DefaultExpandPanel"


# instance fields
.field public mExpandMenuListener:Lcom/oplus/camera/ui/menu/setting/q$b;

.field protected mMenuTranslateY:I

.field public mbEnterAnimationRunning:Z

.field public mbExitAnimationRunning:Z

.field private mbViewExpand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbViewExpand:Z

    .line 20
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mMenuTranslateY:I

    .line 25
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbEnterAnimationRunning:Z

    .line 26
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbExitAnimationRunning:Z

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mExpandMenuListener:Lcom/oplus/camera/ui/menu/setting/q$b;

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070494

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/q;->mMenuTranslateY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbViewExpand:Z

    .line 20
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/q;->mMenuTranslateY:I

    .line 25
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbEnterAnimationRunning:Z

    .line 26
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbExitAnimationRunning:Z

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/q;->mExpandMenuListener:Lcom/oplus/camera/ui/menu/setting/q$b;

    return-void
.end method


# virtual methods
.method public getCurrentMenuKey()Ljava/lang/String;
    .locals 0

    .line 106
    sget-object p0, Lcom/oplus/camera/ui/menu/setting/q;->mCurrentMenuKey:Ljava/lang/String;

    return-object p0
.end method

.method public hideMenuPanel(ZZ)V
    .locals 2

    const-string v0, "ExpandableMenuPanel"

    const-string v1, "hideMenuPanel"

    .line 52
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbViewExpand:Z

    .line 56
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mExpandMenuListener:Lcom/oplus/camera/ui/menu/setting/q$b;

    if-eqz v0, :cond_0

    .line 57
    sget-object v1, Lcom/oplus/camera/ui/menu/setting/q;->mCurrentMenuKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/oplus/camera/ui/menu/setting/q$b;->a(Ljava/lang/String;ZZ)V

    :cond_0
    const-string p1, "DefaultExpandPanel"

    .line 60
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/q;->setCurrentMenuKey(Ljava/lang/String;)V

    return-void
.end method

.method public hideWithoutAnim(ZZ)V
    .locals 0

    return-void
.end method

.method public isAnimationRunning()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbEnterAnimationRunning:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbExitAnimationRunning:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isEffectMenuOpen()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbViewExpand:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbEnterAnimationRunning:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isEffectOpen()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbViewExpand:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbEnterAnimationRunning:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 85
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbViewExpand:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/q;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/menu/setting/q;->hideMenuPanel(ZZ)V

    return v0

    :cond_1
    return v1
.end method

.method public onSingleTapUp(II)Z
    .locals 1

    .line 72
    iget-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbViewExpand:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/q;->respondSingleTouchEventY()I

    move-result p1

    if-ge p2, p1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/q;->isAnimationRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/setting/q;->hideMenuPanel(ZZ)V

    return p1

    :cond_1
    return v0
.end method

.method public openMenuCanDisableHighLight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public respondSingleTouchEventY()I
    .locals 1

    .line 68
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result p0

    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v0

    sub-int/2addr p0, v0

    return p0
.end method

.method public scrollToNext()V
    .locals 0

    return-void
.end method

.method public scrollToPrevious()V
    .locals 0

    return-void
.end method

.method public setCurrentMenuKey(Ljava/lang/String;)V
    .locals 0

    .line 102
    sput-object p1, Lcom/oplus/camera/ui/menu/setting/q;->mCurrentMenuKey:Ljava/lang/String;

    return-void
.end method

.method public setExpandMenuAnimation(Landroid/view/View;IZ)V
    .locals 12

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    const v2, 0x7f010082

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 139
    new-instance v5, Lcom/oplus/camera/ui/menu/setting/q$a;

    invoke-direct {v5, p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/q$a;-><init>(Lcom/oplus/camera/ui/menu/setting/q;Landroid/view/View;I)V

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IIZZLandroid/view/animation/Animation$AnimationListener;)Z

    goto :goto_0

    :cond_0
    const v8, 0x7f010083

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 142
    new-instance v11, Lcom/oplus/camera/ui/menu/setting/q$a;

    invoke-direct {v11, p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/q$a;-><init>(Lcom/oplus/camera/ui/menu/setting/q;Landroid/view/View;I)V

    move-object v6, p1

    move v7, p2

    invoke-static/range {v6 .. v11}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IIZZLandroid/view/animation/Animation$AnimationListener;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 147
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbEnterAnimationRunning:Z

    .line 149
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbExitAnimationRunning:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setExpandMenuListener(Lcom/oplus/camera/ui/menu/setting/q$b;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/q;->mExpandMenuListener:Lcom/oplus/camera/ui/menu/setting/q$b;

    return-void
.end method

.method public setExpandTextAnimation(Landroid/view/View;IZ)V
    .locals 12

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    const v2, 0x7f010085

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 156
    new-instance v5, Lcom/oplus/camera/ui/menu/setting/q$a;

    invoke-direct {v5, p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/q$a;-><init>(Lcom/oplus/camera/ui/menu/setting/q;Landroid/view/View;I)V

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IIZZLandroid/view/animation/Animation$AnimationListener;)Z

    goto :goto_0

    :cond_0
    const v8, 0x7f010084

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 159
    new-instance v11, Lcom/oplus/camera/ui/menu/setting/q$a;

    invoke-direct {v11, p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/q$a;-><init>(Lcom/oplus/camera/ui/menu/setting/q;Landroid/view/View;I)V

    move-object v6, p1

    move v7, p2

    invoke-static/range {v6 .. v11}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IIZZLandroid/view/animation/Animation$AnimationListener;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showMenuPanel(Ljava/lang/String;ZZ)V
    .locals 0

    const-string p2, "ExpandableMenuPanel"

    const-string p3, "showMenuPanel"

    .line 41
    invoke-static {p2, p3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 43
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/q;->mbViewExpand:Z

    .line 44
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/q;->setCurrentMenuKey(Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/q;->mExpandMenuListener:Lcom/oplus/camera/ui/menu/setting/q$b;

    if-eqz p0, :cond_0

    .line 47
    sget-object p1, Lcom/oplus/camera/ui/menu/setting/q;->mCurrentMenuKey:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/menu/setting/q$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
