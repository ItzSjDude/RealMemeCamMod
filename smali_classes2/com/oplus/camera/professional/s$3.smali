.class Lcom/oplus/camera/professional/s$3;
.super Ljava/lang/Object;
.source "ProSwitchButtonManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/SwitchButton$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/s;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/s;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/s;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/oplus/camera/professional/s$3;->a:Lcom/oplus/camera/professional/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/ui/SwitchButton;Z)V
    .locals 2

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initSwitchButton, onCheckedChanged, isChecked: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProSwitchButtonManager"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/oplus/camera/professional/s$3;->a:Lcom/oplus/camera/professional/s;

    invoke-static {p1}, Lcom/oplus/camera/professional/s;->b(Lcom/oplus/camera/professional/s;)Lcom/oplus/camera/ui/SwitchButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/SwitchButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/oplus/camera/professional/s$3;->a:Lcom/oplus/camera/professional/s;

    invoke-static {v0}, Lcom/oplus/camera/professional/s;->c(Lcom/oplus/camera/professional/s;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/s$3;->a:Lcom/oplus/camera/professional/s;

    invoke-static {v0}, Lcom/oplus/camera/professional/s;->c(Lcom/oplus/camera/professional/s;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/s$3;->a:Lcom/oplus/camera/professional/s;

    invoke-static {v0}, Lcom/oplus/camera/professional/s;->b(Lcom/oplus/camera/professional/s;)Lcom/oplus/camera/ui/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/SwitchButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object p1, p0, Lcom/oplus/camera/professional/s$3;->a:Lcom/oplus/camera/professional/s;

    invoke-static {p1}, Lcom/oplus/camera/professional/s;->e(Lcom/oplus/camera/professional/s;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/professional/s$3;->a:Lcom/oplus/camera/professional/s;

    invoke-static {p0}, Lcom/oplus/camera/professional/s;->d(Lcom/oplus/camera/professional/s;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_1

    const-string p2, "on"

    goto :goto_1

    :cond_1
    const-string p2, "off"

    :goto_1
    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
