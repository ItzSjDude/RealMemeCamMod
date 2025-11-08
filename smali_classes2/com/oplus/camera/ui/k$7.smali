.class Lcom/oplus/camera/ui/k$7;
.super Ljava/lang/Object;
.source "GalleryPreviewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/k;->a(Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/oplus/camera/ui/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/k;Ljava/lang/String;I)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/oplus/camera/ui/k$7;->c:Lcom/oplus/camera/ui/k;

    iput-object p2, p0, Lcom/oplus/camera/ui/k$7;->a:Ljava/lang/String;

    iput p3, p0, Lcom/oplus/camera/ui/k$7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/oplus/camera/ui/k$7;->c:Lcom/oplus/camera/ui/k;

    iget-object v1, p0, Lcom/oplus/camera/ui/k$7;->a:Ljava/lang/String;

    iget p0, p0, Lcom/oplus/camera/ui/k$7;->b:I

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;Ljava/lang/String;I)V

    return-void
.end method
