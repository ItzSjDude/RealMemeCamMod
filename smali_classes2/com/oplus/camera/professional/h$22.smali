.class Lcom/oplus/camera/professional/h$22;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/h;)V
    .locals 0

    .line 1706
    iput-object p1, p0, Lcom/oplus/camera/professional/h$22;->a:Lcom/oplus/camera/professional/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1709
    iget-object p1, p0, Lcom/oplus/camera/professional/h$22;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p1}, Lcom/oplus/camera/professional/h;->z(Lcom/oplus/camera/professional/h;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_parameter_saving"

    const-string v1, "off"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1710
    iget-object v0, p0, Lcom/oplus/camera/professional/h$22;->a:Lcom/oplus/camera/professional/h;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/h;ZLjava/lang/String;)V

    .line 1711
    iget-object p0, p0, Lcom/oplus/camera/professional/h$22;->a:Lcom/oplus/camera/professional/h;

    invoke-static {p0}, Lcom/oplus/camera/professional/h;->A(Lcom/oplus/camera/professional/h;)V

    return-void
.end method
