.class public Lcom/oplus/camera/filmvideomode/o;
.super Landroid/widget/ListView;
.source "FilmSubMenuPanel.java"


# instance fields
.field private a:Lcom/oplus/camera/filmvideomode/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/oplus/camera/filmvideomode/o;->a:Lcom/oplus/camera/filmvideomode/m;

    .line 14
    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/o;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070803

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/o;->setDividerHeight(I)V

    return-void
.end method
