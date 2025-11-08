.class Lcom/oplus/camera/sticker/ui/StickerGridViewLayout$2;
.super Ljava/lang/Object;
.source "StickerGridViewLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

    .line 163
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout$2;->a:Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemLongClick, position: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "StickerGridViewLayout"

    invoke-static {p4, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout$2;->a:Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;->a(Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p1

    const/4 p5, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout$2;->a:Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;->a(Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/sticker/ui/i;->i()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout$2;->a:Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;->b(Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;)Lcom/oplus/camera/sticker/ui/a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/oplus/camera/sticker/ui/a;->b(I)Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 176
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout$2;->a:Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;->a(Lcom/oplus/camera/sticker/ui/StickerGridViewLayout;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p0

    invoke-interface {p0, p2, p1, p3}, Lcom/oplus/camera/sticker/ui/i;->a(Landroid/view/View;Lcom/oplus/camera/sticker/data/StickerItem;I)Z

    move-result p0

    if-nez p0, :cond_1

    return p5

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const-string p0, "onItemLongClick, return"

    .line 169
    invoke-static {p4, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p5
.end method
