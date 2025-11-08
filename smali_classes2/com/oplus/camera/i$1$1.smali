.class Lcom/oplus/camera/i$1$1;
.super Ljava/lang/Object;
.source "CameraStatementAlert.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUIFullPageStatement$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/i$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/i$1;


# direct methods
.method constructor <init>(Lcom/oplus/camera/i$1;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/oplus/camera/i$1$1;->a:Lcom/oplus/camera/i$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/oplus/camera/i$1$1;->a:Lcom/oplus/camera/i$1;

    iget-object v0, v0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v0}, Lcom/oplus/camera/i;->b(Lcom/oplus/camera/i;)Lcom/oplus/camera/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/v;->dismiss()V

    .line 109
    iget-object v0, p0, Lcom/oplus/camera/i$1$1;->a:Lcom/oplus/camera/i$1;

    iget-object v0, v0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/i;->a(Lcom/oplus/camera/i;Z)Z

    .line 111
    iget-object v0, p0, Lcom/oplus/camera/i$1$1;->a:Lcom/oplus/camera/i$1;

    iget-object v0, v0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v0}, Lcom/oplus/camera/i;->a(Lcom/oplus/camera/i;)Lcom/oplus/camera/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/oplus/camera/i$1$1;->a:Lcom/oplus/camera/i$1;

    iget-object p0, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {p0}, Lcom/oplus/camera/i;->a(Lcom/oplus/camera/i;)Lcom/oplus/camera/i$a;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/camera/i$a;->b(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 119
    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/i$1$1;->a:Lcom/oplus/camera/i$1;

    iget-object v0, v0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v0}, Lcom/oplus/camera/i;->a(Lcom/oplus/camera/i;)Lcom/oplus/camera/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/oplus/camera/i$1$1;->a:Lcom/oplus/camera/i$1;

    iget-object v0, v0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v0}, Lcom/oplus/camera/i;->a(Lcom/oplus/camera/i;)Lcom/oplus/camera/i$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/i$a;->a(Z)V

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/i$1$1;->a:Lcom/oplus/camera/i$1;

    iget-object p0, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {p0}, Lcom/oplus/camera/i;->e(Lcom/oplus/camera/i;)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/i$1$1;->a:Lcom/oplus/camera/i$1;

    iget-object p0, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {p0}, Lcom/oplus/camera/i;->c(Lcom/oplus/camera/i;)Landroidx/appcompat/app/c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->finish()V

    :goto_0
    return-void
.end method
