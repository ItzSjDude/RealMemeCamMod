.class Lcom/oplus/camera/j/a$b$1;
.super Ljava/lang/Object;
.source "CommonBottomGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/j/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/oplus/camera/j/a$b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/j/a$b;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1569
    iput-object p1, p0, Lcom/oplus/camera/j/a$b$1;->b:Lcom/oplus/camera/j/a$b;

    iput-object p2, p0, Lcom/oplus/camera/j/a$b$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1572
    iget-object v0, p0, Lcom/oplus/camera/j/a$b$1;->b:Lcom/oplus/camera/j/a$b;

    invoke-static {v0}, Lcom/oplus/camera/j/a$b;->a(Lcom/oplus/camera/j/a$b;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/oplus/camera/j/a$b$1;->b:Lcom/oplus/camera/j/a$b;

    invoke-static {v0}, Lcom/oplus/camera/j/a$b;->a(Lcom/oplus/camera/j/a$b;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1574
    iget-object v0, p0, Lcom/oplus/camera/j/a$b$1;->b:Lcom/oplus/camera/j/a$b;

    invoke-static {v0}, Lcom/oplus/camera/j/a$b;->a(Lcom/oplus/camera/j/a$b;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/j/a$b$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
