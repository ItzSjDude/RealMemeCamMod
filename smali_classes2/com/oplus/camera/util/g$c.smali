.class Lcom/oplus/camera/util/g$c;
.super Lcom/coui/appcompat/dialog/panel/b;
.source "ExportPGrantUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/dialog/panel/b;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .line 252
    invoke-super {p0}, Lcom/coui/appcompat/dialog/panel/b;->onAttachedToWindow()V

    .line 253
    invoke-virtual {p0}, Lcom/oplus/camera/util/g$c;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/util/g$c;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f06004d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method
