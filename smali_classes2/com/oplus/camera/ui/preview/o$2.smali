.class Lcom/oplus/camera/ui/preview/o$2;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/o;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/o;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/o;)V
    .locals 0

    .line 1058
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/o$2;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1061
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o$2;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/o;->a(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/n;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o$2;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/o;->a(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/n;->e()V

    .line 1063
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o$2;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/o;->b(Lcom/oplus/camera/ui/preview/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o$2;->a:Lcom/oplus/camera/ui/preview/o;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/o;->c(Lcom/oplus/camera/ui/preview/o;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1064
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o$2;->a:Lcom/oplus/camera/ui/preview/o;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/preview/o;->a(Lcom/oplus/camera/ui/preview/o;I)I

    :cond_1
    return-void
.end method
