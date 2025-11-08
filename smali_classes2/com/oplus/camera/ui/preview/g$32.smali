.class Lcom/oplus/camera/ui/preview/g$32;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$32;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 489
    sget p2, Lcom/oplus/camera/Storage;->w:I

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 497
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$32;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->y(Lcom/oplus/camera/ui/preview/g;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {}, Lcom/oplus/camera/ui/preview/g;->aq()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/camera/util/f;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 498
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$32;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->y(Lcom/oplus/camera/ui/preview/g;)Landroid/app/Activity;

    move-result-object p0

    const p1, 0x7f10011d

    invoke-static {}, Lcom/oplus/camera/ui/preview/g;->aq()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/camera/util/f;->a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$32;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->T(Lcom/oplus/camera/ui/preview/g;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 501
    new-instance p1, Landroid/content/Intent;

    const-string p2, "oplus.intent.action.CLEAR_MAIN_ACTIVITY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/oplus/camera/ui/preview/g;->aq()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x4000000

    .line 505
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 506
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$32;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->y(Lcom/oplus/camera/ui/preview/g;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 508
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mDialogOnClickListener.onClick, Exception when start ClearMainActivity: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraPreviewUI"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method
