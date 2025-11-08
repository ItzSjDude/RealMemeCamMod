.class Lcom/oplus/camera/filmvideomode/k$2;
.super Ljava/lang/Object;
.source "FilmParamsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/filmvideomode/k;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/oplus/camera/filmvideomode/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/filmvideomode/k;IZ)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/k$2;->c:Lcom/oplus/camera/filmvideomode/k;

    iput p2, p0, Lcom/oplus/camera/filmvideomode/k$2;->a:I

    iput-boolean p3, p0, Lcom/oplus/camera/filmvideomode/k$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k$2;->c:Lcom/oplus/camera/filmvideomode/k;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/k;->b(Lcom/oplus/camera/filmvideomode/k;)Lcom/oplus/camera/filmvideomode/h;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/filmvideomode/k$2;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/h;->a(I)Lcom/oplus/camera/filmvideomode/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-boolean v1, p0, Lcom/oplus/camera/filmvideomode/k$2;->b:Z

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/j;->c(Z)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k$2;->c:Lcom/oplus/camera/filmvideomode/k;

    iget v1, p0, Lcom/oplus/camera/filmvideomode/k$2;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/k;->c(I)V

    .line 166
    iget-boolean v0, p0, Lcom/oplus/camera/filmvideomode/k$2;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k$2;->c:Lcom/oplus/camera/filmvideomode/k;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/k;->c(Lcom/oplus/camera/filmvideomode/k;)Lcom/oplus/camera/filmvideomode/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/l;->getVisibilityPanelIndex()I

    move-result v0

    iget v1, p0, Lcom/oplus/camera/filmvideomode/k$2;->a:I

    if-ne v0, v1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k$2;->c:Lcom/oplus/camera/filmvideomode/k;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/k;->c(Lcom/oplus/camera/filmvideomode/k;)Lcom/oplus/camera/filmvideomode/l;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/filmvideomode/k$2;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/filmvideomode/l;->a(IZ)V

    .line 168
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k$2;->c:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {v0}, Lcom/oplus/camera/filmvideomode/k;->d()V

    .line 169
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k$2;->c:Lcom/oplus/camera/filmvideomode/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/k;->a(Z)V

    .line 173
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k$2;->c:Lcom/oplus/camera/filmvideomode/k;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/k;->d(Lcom/oplus/camera/filmvideomode/k;)Lcom/oplus/camera/filmvideomode/k$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/k$2;->c:Lcom/oplus/camera/filmvideomode/k;

    invoke-static {p0}, Lcom/oplus/camera/filmvideomode/k;->d(Lcom/oplus/camera/filmvideomode/k;)Lcom/oplus/camera/filmvideomode/k$a;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/oplus/camera/filmvideomode/k$a;->e(Z)V

    :cond_1
    return-void
.end method
