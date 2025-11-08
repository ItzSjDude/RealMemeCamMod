.class Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$2;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;I)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$2;->b:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$2;->b:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->a(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;I)I

    .line 682
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$2;->b:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->e(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->b(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;F)V

    .line 684
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$2;->b:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->e(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$2;->b:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->f(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$2;->a:I

    if-nez p1, :cond_0

    .line 685
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout$2;->b:Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;->f(Lcom/oplus/camera/ui/menu/setting/down/DrawerLayout;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_subsetting_key"

    const-string v0, "off"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
