.class Lcom/oplus/camera/ComboPreferences$a;
.super Ljava/lang/Object;
.source "ComboPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ComboPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ComboPreferences;

.field private b:Landroid/content/SharedPreferences$Editor;

.field private c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ComboPreferences;)V
    .locals 1

    .line 472
    iput-object p1, p0, Lcom/oplus/camera/ComboPreferences$a;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    invoke-static {p1}, Lcom/oplus/camera/ComboPreferences;->a(Lcom/oplus/camera/ComboPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    invoke-static {p1}, Lcom/oplus/camera/ComboPreferences;->a(Lcom/oplus/camera/ComboPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ComboPreferences$a;->b:Landroid/content/SharedPreferences$Editor;

    .line 477
    :cond_0
    invoke-static {p1}, Lcom/oplus/camera/ComboPreferences;->b(Lcom/oplus/camera/ComboPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 478
    invoke-static {p1}, Lcom/oplus/camera/ComboPreferences;->b(Lcom/oplus/camera/ComboPreferences;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ComboPreferences$a;->c:Landroid/content/SharedPreferences$Editor;

    :cond_1
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ComboPreferences$a;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/oplus/camera/ComboPreferences$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ComboPreferences$a;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 507
    iget-object p0, p0, Lcom/oplus/camera/ComboPreferences$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 510
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/oplus/camera/ComboPreferences$a;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 518
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ComboPreferences$a;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 522
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    :cond_1
    return-object p0
.end method

.method public commit()Z
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/oplus/camera/ComboPreferences$a;->b:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 487
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 492
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ComboPreferences$a;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz p0, :cond_1

    .line 493
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/oplus/camera/ComboPreferences$a;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-static {v0, p1}, Lcom/oplus/camera/ComboPreferences;->a(Lcom/oplus/camera/ComboPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-static {p1}, Lcom/oplus/camera/ComboPreferences;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ComboPreferences$a;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    .line 600
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 601
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ComboPreferences$a;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_1

    .line 602
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/oplus/camera/ComboPreferences$a;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-static {v0, p1}, Lcom/oplus/camera/ComboPreferences;->a(Lcom/oplus/camera/ComboPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-static {p1}, Lcom/oplus/camera/ComboPreferences;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ComboPreferences$a;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    .line 587
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 588
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ComboPreferences$a;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_1

    .line 589
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/oplus/camera/ComboPreferences$a;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-static {v0, p1}, Lcom/oplus/camera/ComboPreferences;->a(Lcom/oplus/camera/ComboPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-static {p1}, Lcom/oplus/camera/ComboPreferences;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ComboPreferences$a;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    .line 561
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 562
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ComboPreferences$a;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_1

    .line 563
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/oplus/camera/ComboPreferences$a;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-static {v0, p1}, Lcom/oplus/camera/ComboPreferences;->a(Lcom/oplus/camera/ComboPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-static {p1}, Lcom/oplus/camera/ComboPreferences;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ComboPreferences$a;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    .line 574
    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 575
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ComboPreferences$a;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_1

    .line 576
    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/oplus/camera/ComboPreferences$a;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-static {v0, p1}, Lcom/oplus/camera/ComboPreferences;->a(Lcom/oplus/camera/ComboPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-static {p1}, Lcom/oplus/camera/ComboPreferences;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ComboPreferences$a;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    .line 548
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 549
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ComboPreferences$a;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_1

    .line 550
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/oplus/camera/ComboPreferences$a;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-static {v0, p1}, Lcom/oplus/camera/ComboPreferences;->a(Lcom/oplus/camera/ComboPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    invoke-static {p1}, Lcom/oplus/camera/ComboPreferences;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ComboPreferences$a;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    .line 613
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 614
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ComboPreferences$a;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_1

    .line 615
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/oplus/camera/ComboPreferences$a;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-static {v0, p1}, Lcom/oplus/camera/ComboPreferences;->a(Lcom/oplus/camera/ComboPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 532
    iget-object v0, p0, Lcom/oplus/camera/ComboPreferences$a;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 533
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ComboPreferences$a;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 537
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    return-object p0
.end method
