.class Lcom/oplus/camera/i$3$1;
.super Ljava/lang/Object;
.source "CameraStatementAlert.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUIFullPageStatement$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/i$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/i$3;


# direct methods
.method constructor <init>(Lcom/oplus/camera/i$3;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/oplus/camera/i$3$1;->a:Lcom/oplus/camera/i$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/oplus/camera/i$3$1;->a:Lcom/oplus/camera/i$3;

    iget-object v0, v0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    invoke-static {v0}, Lcom/oplus/camera/i;->h(Lcom/oplus/camera/i;)Lcom/oplus/camera/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/v;->dismiss()V

    .line 251
    iget-object v0, p0, Lcom/oplus/camera/i$3$1;->a:Lcom/oplus/camera/i$3;

    iget-object v0, v0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/i;->a(Lcom/oplus/camera/i;Z)Z

    .line 253
    iget-object v0, p0, Lcom/oplus/camera/i$3$1;->a:Lcom/oplus/camera/i$3;

    iget-object v0, v0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    invoke-static {v0}, Lcom/oplus/camera/i;->a(Lcom/oplus/camera/i;)Lcom/oplus/camera/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object p0, p0, Lcom/oplus/camera/i$3$1;->a:Lcom/oplus/camera/i$3;

    iget-object p0, p0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    invoke-static {p0}, Lcom/oplus/camera/i;->a(Lcom/oplus/camera/i;)Lcom/oplus/camera/i$a;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/oplus/camera/i$a;->b(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/oplus/camera/i$3$1;->a:Lcom/oplus/camera/i$3;

    iget-object p0, p0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    invoke-static {p0}, Lcom/oplus/camera/i;->c(Lcom/oplus/camera/i;)Landroidx/appcompat/app/c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->finish()V

    return-void
.end method
