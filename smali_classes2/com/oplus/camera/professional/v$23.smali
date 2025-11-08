.class Lcom/oplus/camera/professional/v$23;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v;)V
    .locals 0

    .line 1822
    iput-object p1, p0, Lcom/oplus/camera/professional/v$23;->a:Lcom/oplus/camera/professional/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1825
    iget-object p1, p0, Lcom/oplus/camera/professional/v$23;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p1}, Lcom/oplus/camera/professional/v;->C(Lcom/oplus/camera/professional/v;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_parameter_saving"

    const-string v1, "off"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1826
    iget-object v0, p0, Lcom/oplus/camera/professional/v$23;->a:Lcom/oplus/camera/professional/v;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/v;ZLjava/lang/String;)V

    .line 1827
    iget-object p1, p0, Lcom/oplus/camera/professional/v$23;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p1}, Lcom/oplus/camera/professional/v;->D(Lcom/oplus/camera/professional/v;)V

    .line 1828
    iget-object p0, p0, Lcom/oplus/camera/professional/v$23;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->E(Lcom/oplus/camera/professional/v;)V

    return-void
.end method
