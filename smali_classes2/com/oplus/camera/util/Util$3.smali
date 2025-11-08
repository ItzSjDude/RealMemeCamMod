.class Lcom/oplus/camera/util/Util$3;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1090
    iput-object p1, p0, Lcom/oplus/camera/util/Util$3;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/oplus/camera/util/Util$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1093
    new-instance v0, Lcom/oplus/camera/util/Util$3$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/util/Util$3$1;-><init>(Lcom/oplus/camera/util/Util$3;)V

    .line 1101
    invoke-static {}, Lcom/oplus/camera/util/Util;->aV()Lcom/coui/appcompat/dialog/app/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1102
    invoke-static {}, Lcom/oplus/camera/util/Util;->aV()Lcom/coui/appcompat/dialog/app/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/b;->cancel()V

    const/4 v1, 0x0

    .line 1103
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Lcom/coui/appcompat/dialog/app/b;)Lcom/coui/appcompat/dialog/app/b;

    .line 1106
    :cond_0
    new-instance v1, Lcom/coui/appcompat/dialog/app/b$a;

    iget-object v2, p0, Lcom/oplus/camera/util/Util$3;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 1107
    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;->a(Z)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v1

    const v2, 0x1010355

    .line 1108
    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;->d(I)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v1

    iget p0, p0, Lcom/oplus/camera/util/Util$3;->b:I

    .line 1109
    invoke-virtual {v1, p0}, Lcom/coui/appcompat/dialog/app/b$a;->a(I)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    const v1, 0x7f1000f1

    .line 1110
    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/dialog/app/b$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p0

    .line 1111
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b$a;->b()Lcom/coui/appcompat/dialog/app/b;

    move-result-object p0

    .line 1106
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Lcom/coui/appcompat/dialog/app/b;)Lcom/coui/appcompat/dialog/app/b;

    return-void
.end method
