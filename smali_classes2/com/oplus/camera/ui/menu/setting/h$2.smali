.class Lcom/oplus/camera/ui/menu/setting/h$2;
.super Ljava/lang/Object;
.source "CameraMenuOptionFirstLevel.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/h;->a(Ljava/lang/String;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/ui/menu/setting/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/h;I)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/h$2;->b:Lcom/oplus/camera/ui/menu/setting/h;

    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/h$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h$2;->b:Lcom/oplus/camera/ui/menu/setting/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/setting/h;->a(Lcom/oplus/camera/ui/menu/setting/h;)Lcom/oplus/camera/ui/menu/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h$2;->b:Lcom/oplus/camera/ui/menu/setting/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/setting/h;->a(Lcom/oplus/camera/ui/menu/setting/h;)Lcom/oplus/camera/ui/menu/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/i;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h$2;->b:Lcom/oplus/camera/ui/menu/setting/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/setting/h;->a(Lcom/oplus/camera/ui/menu/setting/h;)Lcom/oplus/camera/ui/menu/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/i;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 275
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h$2;->b:Lcom/oplus/camera/ui/menu/setting/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/setting/h;->b(Lcom/oplus/camera/ui/menu/setting/h;)Lcom/oplus/camera/ui/widget/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/h$2;->b:Lcom/oplus/camera/ui/menu/setting/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/setting/h;->b(Lcom/oplus/camera/ui/menu/setting/h;)Lcom/oplus/camera/ui/widget/c;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/h$2;->b:Lcom/oplus/camera/ui/menu/setting/h;

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/setting/h;->a(Lcom/oplus/camera/ui/menu/setting/h;)Lcom/oplus/camera/ui/menu/i;

    move-result-object v1

    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/h$2;->a:I

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/widget/c;->a(Landroid/view/View;I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
