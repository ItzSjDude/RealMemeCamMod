.class public Lcom/oplus/camera/filmvideomode/f;
.super Landroid/widget/LinearLayout;
.source "FilmMenuLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/filmvideomode/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/BaseAdapter;

.field private b:Lcom/oplus/camera/filmvideomode/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/filmvideomode/f;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/f;->a:Landroid/widget/BaseAdapter;

    .line 37
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/f;->b:Lcom/oplus/camera/filmvideomode/f$a;

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/f;->setLayoutDirection(I)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/f;->setOrientation(I)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/oplus/camera/filmvideomode/f;->setAdapter(Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method private getMenuView()Landroid/view/View;
    .locals 2

    .line 77
    new-instance v0, Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/f;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/16 p0, 0x10e

    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/f;->b:Lcom/oplus/camera/filmvideomode/f$a;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/f;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/f;->b:Lcom/oplus/camera/filmvideomode/f$a;

    invoke-interface {v1, p0, p1, v0}, Lcom/oplus/camera/filmvideomode/f$a;->b(Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/f;->removeAllViews()V

    .line 56
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/f;->a:Landroid/widget/BaseAdapter;

    .line 57
    iget-object p1, p0, Lcom/oplus/camera/filmvideomode/f;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 61
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/f;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0707be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 62
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/f;->a:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Lcom/oplus/camera/filmvideomode/f;->getMenuView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v1, v3, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 65
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.oplus.10bits.heic.encode.support"

    .line 66
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    if-ne v3, v1, :cond_1

    .line 68
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    :cond_1
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p0, v2, v4}, Lcom/oplus/camera/filmvideomode/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setMenuItemClickListener(Lcom/oplus/camera/filmvideomode/f$a;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/f;->b:Lcom/oplus/camera/filmvideomode/f$a;

    return-void
.end method
