.class Lcom/oplus/camera/professional/f$1;
.super Ljava/lang/Object;
.source "HSMainBarItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/f;->setItemTitleImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/oplus/camera/professional/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/f;Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/oplus/camera/professional/f$1;->b:Lcom/oplus/camera/professional/f;

    iput-object p2, p0, Lcom/oplus/camera/professional/f$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/oplus/camera/professional/f$1;->b:Lcom/oplus/camera/professional/f;

    invoke-static {v0}, Lcom/oplus/camera/professional/f;->a(Lcom/oplus/camera/professional/f;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/oplus/camera/professional/f$1;->b:Lcom/oplus/camera/professional/f;

    invoke-static {v0}, Lcom/oplus/camera/professional/f;->a(Lcom/oplus/camera/professional/f;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/professional/f$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object p0, p0, Lcom/oplus/camera/professional/f$1;->b:Lcom/oplus/camera/professional/f;

    invoke-static {p0}, Lcom/oplus/camera/professional/f;->a(Lcom/oplus/camera/professional/f;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->measure(II)V

    :cond_0
    return-void
.end method
