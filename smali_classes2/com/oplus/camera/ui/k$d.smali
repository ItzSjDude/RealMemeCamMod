.class Lcom/oplus/camera/ui/k$d;
.super Ljava/lang/Object;
.source "GalleryPreviewAdapter.java"

# interfaces
.implements Lcom/oplus/c/a/d/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/k;

.field private b:Lcom/oplus/c/a/d/b/b;

.field private c:Lcom/oplus/camera/ui/k$a;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/k;Lcom/oplus/c/a/d/b/b;Lcom/oplus/camera/ui/k$a;)V
    .locals 0

    .line 895
    iput-object p1, p0, Lcom/oplus/camera/ui/k$d;->a:Lcom/oplus/camera/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput-object p2, p0, Lcom/oplus/camera/ui/k$d;->b:Lcom/oplus/c/a/d/b/b;

    .line 897
    iput-object p3, p0, Lcom/oplus/camera/ui/k$d;->c:Lcom/oplus/camera/ui/k$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 902
    iget-object v0, p0, Lcom/oplus/camera/ui/k$d;->a:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->p(Lcom/oplus/camera/ui/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/oplus/camera/ui/k$d;->b:Lcom/oplus/c/a/d/b/b;

    invoke-interface {v0}, Lcom/oplus/c/a/d/b/b;->c()V

    .line 904
    invoke-virtual {p0}, Lcom/oplus/camera/ui/k$d;->b()V

    goto :goto_0

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/k$d;->a:Lcom/oplus/camera/ui/k;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oplus/camera/ui/k$d;->c:Lcom/oplus/camera/ui/k$a;

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;ZLcom/oplus/camera/ui/k$a;)V

    .line 909
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/k$d;->b:Lcom/oplus/c/a/d/b/b;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/c/a/d/b/b;->a(F)V

    return-void
.end method

.method public a(IILjava/lang/String;)Z
    .locals 0

    .line 918
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onError, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GalleryPreviewAdapter"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 2

    .line 913
    iget-object v0, p0, Lcom/oplus/camera/ui/k$d;->a:Lcom/oplus/camera/ui/k;

    iget-object p0, p0, Lcom/oplus/camera/ui/k$d;->c:Lcom/oplus/camera/ui/k$a;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;ZLcom/oplus/camera/ui/k$a;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 925
    iget-object v0, p0, Lcom/oplus/camera/ui/k$d;->a:Lcom/oplus/camera/ui/k;

    iget-object p0, p0, Lcom/oplus/camera/ui/k$d;->c:Lcom/oplus/camera/ui/k$a;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;ZLcom/oplus/camera/ui/k$a;)V

    return-void
.end method
