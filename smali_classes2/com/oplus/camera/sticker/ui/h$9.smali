.class Lcom/oplus/camera/sticker/ui/h$9;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/sticker/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/sticker/ui/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/sticker/ui/h;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h$9;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 133
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$9;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 134
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$9;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/sticker/ui/i;->g()V

    :cond_0
    return-void
.end method
