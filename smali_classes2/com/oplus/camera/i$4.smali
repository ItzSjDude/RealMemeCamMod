.class Lcom/oplus/camera/i$4;
.super Ljava/lang/Object;
.source "CameraStatementAlert.java"

# interfaces
.implements Lcom/coui/appcompat/widget/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/i;->a(II)Ljava/lang/CharSequence;
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

    .line 301
    iput-object p1, p0, Lcom/oplus/camera/i$4;->a:Lcom/oplus/camera/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/i$4;->a:Lcom/oplus/camera/i;

    invoke-static {v0}, Lcom/oplus/camera/i;->i(Lcom/oplus/camera/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/oplus/camera/i$4;->a:Lcom/oplus/camera/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/i;->b(Lcom/oplus/camera/i;Z)Z

    .line 307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.bootreg.activity.statementpage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "statement_intent_flag"

    const/4 v2, 0x2

    .line 308
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    iget-object v1, p0, Lcom/oplus/camera/i$4;->a:Lcom/oplus/camera/i;

    invoke-static {v1}, Lcom/oplus/camera/i;->c(Lcom/oplus/camera/i;)Landroidx/appcompat/app/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/c;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    iget-object p0, p0, Lcom/oplus/camera/i$4;->a:Lcom/oplus/camera/i;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oplus/camera/i;->b(Lcom/oplus/camera/i;Z)Z

    :cond_0
    :goto_0
    return-void
.end method
