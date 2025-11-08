.class Lcom/oplus/camera/professional/l$1;
.super Ljava/lang/Object;
.source "MainBarItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/l;->setItemTitleImage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/professional/l;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/l;I)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/oplus/camera/professional/l$1;->b:Lcom/oplus/camera/professional/l;

    iput p2, p0, Lcom/oplus/camera/professional/l$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/oplus/camera/professional/l$1;->b:Lcom/oplus/camera/professional/l;

    invoke-static {v0}, Lcom/oplus/camera/professional/l;->a(Lcom/oplus/camera/professional/l;)Lcom/oplus/camera/ui/RotateLottieAnimationView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/oplus/camera/professional/l$1;->b:Lcom/oplus/camera/professional/l;

    invoke-static {v0}, Lcom/oplus/camera/professional/l;->a(Lcom/oplus/camera/professional/l;)Lcom/oplus/camera/ui/RotateLottieAnimationView;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/professional/l$1;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setImageResource(I)V

    .line 208
    iget-object p0, p0, Lcom/oplus/camera/professional/l$1;->b:Lcom/oplus/camera/professional/l;

    invoke-static {p0}, Lcom/oplus/camera/professional/l;->a(Lcom/oplus/camera/professional/l;)Lcom/oplus/camera/ui/RotateLottieAnimationView;

    move-result-object p0

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->U()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->measure(II)V

    :cond_0
    return-void
.end method
