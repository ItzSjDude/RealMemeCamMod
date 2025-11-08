.class Lcom/oplus/camera/i$1;
.super Ljava/lang/Object;
.source "CameraStatementAlert.java"

# interfaces
.implements Lcom/oplus/camera/ui/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/i;->c()V
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

    .line 94
    iput-object p1, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v0}, Lcom/oplus/camera/i;->a(Lcom/oplus/camera/i;)Lcom/oplus/camera/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v0}, Lcom/oplus/camera/i;->a(Lcom/oplus/camera/i;)Lcom/oplus/camera/i$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/i$a;->a(Z)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v0}, Lcom/oplus/camera/i;->b(Lcom/oplus/camera/i;)Lcom/oplus/camera/ui/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/v;->b()Lcom/coui/appcompat/widget/COUIFullPageStatement;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/i;->a(Lcom/oplus/camera/i;Lcom/coui/appcompat/widget/COUIFullPageStatement;)Lcom/coui/appcompat/widget/COUIFullPageStatement;

    .line 103
    iget-object v0, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v0}, Lcom/oplus/camera/i;->d(Lcom/oplus/camera/i;)Lcom/coui/appcompat/widget/COUIFullPageStatement;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->c(Lcom/oplus/camera/i;)Landroidx/appcompat/app/c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070150

    .line 104
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setStatementMaxHeight(I)V

    .line 105
    iget-object v0, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v0}, Lcom/oplus/camera/i;->d(Lcom/oplus/camera/i;)Lcom/coui/appcompat/widget/COUIFullPageStatement;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/i$1$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/i$1$1;-><init>(Lcom/oplus/camera/i$1;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setButtonListener(Lcom/coui/appcompat/widget/COUIFullPageStatement$a;)V

    const v0, 0x7f100405

    .line 133
    iget-object v1, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->f(Lcom/oplus/camera/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->g(Lcom/oplus/camera/i;)Z

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f100406

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->f(Lcom/oplus/camera/i;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->g(Lcom/oplus/camera/i;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f1001cb

    goto :goto_0

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->f(Lcom/oplus/camera/i;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->g(Lcom/oplus/camera/i;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 138
    invoke-static {}, Lcom/oplus/camera/util/Util;->al()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f1003fa

    goto :goto_0

    :cond_3
    const v0, 0x7f100290

    .line 142
    :cond_4
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7f1003f8

    .line 144
    iget-object v1, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->d(Lcom/oplus/camera/i;)Lcom/coui/appcompat/widget/COUIFullPageStatement;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v2}, Lcom/oplus/camera/i;->c(Lcom/oplus/camera/i;)Landroidx/appcompat/app/c;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setButtonText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->d(Lcom/oplus/camera/i;)Lcom/coui/appcompat/widget/COUIFullPageStatement;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v2}, Lcom/oplus/camera/i;->c(Lcom/oplus/camera/i;)Landroidx/appcompat/app/c;

    move-result-object v2

    const v3, 0x7f10013a

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/c;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setExitButtonText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    const v1, 0x7f100643

    invoke-static {p0}, Lcom/oplus/camera/i;->d(Lcom/oplus/camera/i;)Lcom/coui/appcompat/widget/COUIFullPageStatement;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/oplus/camera/i;->a(Lcom/oplus/camera/i;IILcom/coui/appcompat/widget/COUIFullPageStatement;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {v0}, Lcom/oplus/camera/i;->a(Lcom/oplus/camera/i;)Lcom/oplus/camera/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object p0, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    invoke-static {p0}, Lcom/oplus/camera/i;->a(Lcom/oplus/camera/i;)Lcom/oplus/camera/i$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/i$a;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 160
    iget-object p0, p0, Lcom/oplus/camera/i$1;->a:Lcom/oplus/camera/i;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oplus/camera/i;->b(Lcom/oplus/camera/i;Z)Z

    return-void
.end method
