.class Lcom/oplus/camera/ui/preview/a/q$5;
.super Ljava/lang/Object;
.source "ImageStickerTools.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/app/Activity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/q;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/q;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/q$5;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 692
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/q$5;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/q;->b(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/camera/ui/preview/a/q;->a(Lcom/oplus/camera/ui/preview/a/q;Lcom/oplus/camera/sticker/data/StickerItem;)V

    .line 694
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/q$5;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/q;->c(Lcom/oplus/camera/ui/preview/a/q;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 695
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q$5;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/q;->d(Lcom/oplus/camera/ui/preview/a/q;)V

    :cond_0
    return-void
.end method
