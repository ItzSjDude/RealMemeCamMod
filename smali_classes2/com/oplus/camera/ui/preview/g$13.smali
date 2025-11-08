.class Lcom/oplus/camera/ui/preview/g$13;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;Z)V
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$13;->b:Lcom/oplus/camera/ui/preview/g;

    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/g$13;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 p0, 0x2

    if-eq p2, p0, :cond_0

    goto/16 :goto_1

    .line 2613
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_1

    .line 2588
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$13;->b:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->ab(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/g$13;->b:Lcom/oplus/camera/ui/preview/g;

    .line 2589
    invoke-static {p2}, Lcom/oplus/camera/ui/preview/g;->y(Lcom/oplus/camera/ui/preview/g;)Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f100411

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pref_camera_storage_key"

    .line 2588
    invoke-virtual {p1, v0, p2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2591
    iget-boolean p2, p0, Lcom/oplus/camera/ui/preview/g$13;->a:Z

    const-string v1, "off"

    const-string v2, "on"

    if-eqz p2, :cond_3

    .line 2592
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2593
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$13;->b:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->ab(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2594
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2595
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2598
    :cond_2
    sput-object v2, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    goto :goto_0

    .line 2600
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2601
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$13;->b:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->ab(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2602
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2603
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2606
    :cond_4
    sput-object v1, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    .line 2609
    :goto_0
    sget-object p0, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/camera/Storage;->b(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/oplus/camera/Storage;->w:I

    goto :goto_1

    .line 2571
    :cond_5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2573
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$13;->b:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->T(Lcom/oplus/camera/ui/preview/g;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2574
    new-instance p1, Landroid/content/Intent;

    const-string p2, "oplus.intent.action.CLEAR_MAIN_ACTIVITY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2575
    invoke-static {}, Lcom/oplus/camera/ui/preview/g;->aq()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x4000000

    .line 2578
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2579
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$13;->b:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->y(Lcom/oplus/camera/ui/preview/g;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 2581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "makeMultipleOptionStorageDialog, Exception when start ClearMainActivity: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraPreviewUI"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
