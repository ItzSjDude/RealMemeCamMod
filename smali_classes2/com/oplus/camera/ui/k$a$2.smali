.class Lcom/oplus/camera/ui/k$a$2;
.super Ljava/lang/Object;
.source "GalleryPreviewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/k$a;-><init>(Lcom/oplus/camera/ui/k;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/k;

.field final synthetic b:Lcom/oplus/camera/ui/k$a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/k$a;Lcom/oplus/camera/ui/k;)V
    .locals 0

    .line 982
    iput-object p1, p0, Lcom/oplus/camera/ui/k$a$2;->b:Lcom/oplus/camera/ui/k$a;

    iput-object p2, p0, Lcom/oplus/camera/ui/k$a$2;->a:Lcom/oplus/camera/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/oplus/camera/ui/k$a$2;->b:Lcom/oplus/camera/ui/k$a;

    iget-object v0, v0, Lcom/oplus/camera/ui/k$a;->a:Lcom/oplus/camera/ui/k;

    iget-object p0, p0, Lcom/oplus/camera/ui/k$a$2;->b:Lcom/oplus/camera/ui/k$a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/k$a;->getAbsoluteAdapterPosition()I

    move-result p0

    invoke-static {v0, p1, p0}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;Landroid/view/View;I)V

    return-void
.end method
