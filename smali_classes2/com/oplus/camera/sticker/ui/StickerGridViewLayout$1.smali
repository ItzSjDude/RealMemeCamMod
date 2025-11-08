.class Lcom/oplus/camera/sticker/ui/StickerGridViewLayout$1;
.super Ljava/lang/Object;
.source "StickerGridViewLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;


# direct methods
.method constructor <init>(Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout$1;->a:Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 149
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout$1;->a:Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;->a(Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout$1;->a:Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;->a(Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/sticker/ui/i;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout$1;->a:Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;->b(Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;)Lcom/oplus/camera/sticker/ui/a;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout$1;->a:Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;->b(Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;)Lcom/oplus/camera/sticker/ui/a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/oplus/camera/sticker/ui/a;->b(I)Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 157
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout$1;->a:Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;

    invoke-static {p2}, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;->a(Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lcom/oplus/camera/sticker/ui/i;->a(Lcom/oplus/camera/sticker/data/StickerItem;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 158
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout$1;->a:Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;->b(Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;)Lcom/oplus/camera/sticker/ui/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/a;->a()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "StickerGridViewLayout"

    const-string p1, "onItemClick, return"

    .line 150
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
