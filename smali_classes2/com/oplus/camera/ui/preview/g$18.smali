.class Lcom/oplus/camera/ui/preview/g$18;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/screen/b/a;Landroid/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/screen/b/a;

.field final synthetic b:Landroid/util/Size;

.field final synthetic c:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;Lcom/oplus/camera/screen/b/a;Landroid/util/Size;)V
    .locals 0

    .line 3038
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$18;->c:Lcom/oplus/camera/ui/preview/g;

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/g$18;->a:Lcom/oplus/camera/screen/b/a;

    iput-object p3, p0, Lcom/oplus/camera/ui/preview/g$18;->b:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3041
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$18;->c:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g$18;->a:Lcom/oplus/camera/screen/b/a;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$18;->b:Landroid/util/Size;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g$18;->c:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/g;->ae(Lcom/oplus/camera/ui/preview/g;)J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/preview/g$b;->a(Lcom/oplus/camera/screen/b/a;Landroid/util/Size;J)V

    .line 3043
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$18;->c:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->f(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3044
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$18;->c:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->f(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
