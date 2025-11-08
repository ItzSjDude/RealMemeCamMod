.class Lcom/oplus/camera/i$3;
.super Ljava/lang/Object;
.source "CameraStatementAlert.java"

# interfaces
.implements Lcom/oplus/camera/ui/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/i;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/i;


# direct methods
.method constructor <init>(Lcom/oplus/camera/i;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    invoke-static {v0}, Lcom/oplus/camera/i;->h(Lcom/oplus/camera/i;)Lcom/oplus/camera/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/v;->b()Lcom/coui/appcompat/widget/COUIFullPageStatement;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->c(Lcom/oplus/camera/i;)Landroidx/appcompat/app/c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070150

    .line 246
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 245
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setStatementMaxHeight(I)V

    .line 247
    new-instance v1, Lcom/oplus/camera/i$3$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/i$3$1;-><init>(Lcom/oplus/camera/i$3;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setButtonListener(Lcom/coui/appcompat/widget/COUIFullPageStatement$a;)V

    .line 266
    iget-object v1, p0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->f(Lcom/oplus/camera/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->g(Lcom/oplus/camera/i;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f100126

    goto :goto_0

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->f(Lcom/oplus/camera/i;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->g(Lcom/oplus/camera/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f100121

    goto :goto_0

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->f(Lcom/oplus/camera/i;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->g(Lcom/oplus/camera/i;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 271
    invoke-static {}, Lcom/oplus/camera/util/Util;->al()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f100123

    goto :goto_0

    :cond_2
    const v1, 0x7f100122

    goto :goto_0

    :cond_3
    const v1, 0x7f100125

    .line 275
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    const v2, 0x7f100643

    invoke-static {p0, v1, v2, v0}, Lcom/oplus/camera/i;->a(Lcom/oplus/camera/i;IILcom/coui/appcompat/widget/COUIFullPageStatement;)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    invoke-static {p0}, Lcom/oplus/camera/i;->b(Lcom/oplus/camera/i;)Lcom/oplus/camera/ui/v;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/v;->dismiss()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 286
    iget-object p0, p0, Lcom/oplus/camera/i$3;->a:Lcom/oplus/camera/i;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oplus/camera/i;->b(Lcom/oplus/camera/i;Z)Z

    return-void
.end method
