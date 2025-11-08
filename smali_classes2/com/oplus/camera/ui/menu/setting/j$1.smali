.class Lcom/oplus/camera/ui/menu/setting/j$1;
.super Ljava/lang/Object;
.source "CameraMenuOptionSecondLevel.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/oplus/camera/ui/menu/setting/j;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/j;II)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/j$1;->c:Lcom/oplus/camera/ui/menu/setting/j;

    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/j$1;->a:I

    iput p3, p0, Lcom/oplus/camera/ui/menu/setting/j$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j$1;->c:Lcom/oplus/camera/ui/menu/setting/j;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/j;->G()I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j$1;->c:Lcom/oplus/camera/ui/menu/setting/j;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/setting/j;->a(Lcom/oplus/camera/ui/menu/setting/j;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j$1;->c:Lcom/oplus/camera/ui/menu/setting/j;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/setting/j;->b(Lcom/oplus/camera/ui/menu/setting/j;)Lcom/oplus/camera/ui/widget/c;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/j$1;->a:I

    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/j$1;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/widget/c;->a(II)V

    .line 151
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/j$1;->c:Lcom/oplus/camera/ui/menu/setting/j;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/setting/j;->b(Lcom/oplus/camera/ui/menu/setting/j;)Lcom/oplus/camera/ui/widget/c;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/j$1;->c:Lcom/oplus/camera/ui/menu/setting/j;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/setting/j;->a(Lcom/oplus/camera/ui/menu/setting/j;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/ui/widget/c;->a(Landroid/view/View;I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSubMenuOptionTipsBubble, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraMenuOptionSecondLevel"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
