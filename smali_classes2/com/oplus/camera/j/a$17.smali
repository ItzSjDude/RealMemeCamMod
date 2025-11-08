.class Lcom/oplus/camera/j/a$17;
.super Ljava/lang/Object;
.source "CommonBottomGuide.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/j/a;->e(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/j/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/j/a;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/oplus/camera/j/a$17;->a:Lcom/oplus/camera/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 479
    iget-object p1, p0, Lcom/oplus/camera/j/a$17;->a:Lcom/oplus/camera/j/a;

    invoke-static {p1}, Lcom/oplus/camera/j/a;->b(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 480
    iget-object p0, p0, Lcom/oplus/camera/j/a$17;->a:Lcom/oplus/camera/j/a;

    invoke-static {p0}, Lcom/oplus/camera/j/a;->b(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "key_bottom_guide_type_night_tripod"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
