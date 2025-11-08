.class Lcom/oplus/camera/ui/k$12;
.super Ljava/lang/Object;
.source "GalleryPreviewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/k;->a(Landroid/graphics/SurfaceTexture;Lcom/oplus/c/a/b/a;Lcom/oplus/camera/ui/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/k;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/oplus/camera/ui/k$12;->a:Lcom/oplus/camera/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const-string p0, "GalleryPreviewAdapter"

    const-string p1, "prepareVideoPlayer, click the block region"

    .line 820
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
