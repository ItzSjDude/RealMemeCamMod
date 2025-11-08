.class Lcom/oplus/camera/professional/h$11;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->b(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Boolean;

.field final synthetic c:Lcom/oplus/camera/professional/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/h;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 3140
    iput-object p1, p0, Lcom/oplus/camera/professional/h$11;->c:Lcom/oplus/camera/professional/h;

    iput-object p2, p0, Lcom/oplus/camera/professional/h$11;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/camera/professional/h$11;->b:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3143
    iget-object v0, p0, Lcom/oplus/camera/professional/h$11;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pref_camera_flashmode_key"

    if-nez v0, :cond_0

    .line 3144
    iget-object v0, p0, Lcom/oplus/camera/professional/h$11;->c:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->aw(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3145
    iget-object v0, p0, Lcom/oplus/camera/professional/h$11;->c:Lcom/oplus/camera/professional/h;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oplus/camera/professional/h$11;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/oplus/camera/professional/h;->b(Lcom/oplus/camera/professional/h;ZZ)V

    .line 3146
    iget-object p0, p0, Lcom/oplus/camera/professional/h$11;->c:Lcom/oplus/camera/professional/h;

    invoke-static {p0}, Lcom/oplus/camera/professional/h;->ax(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3149
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h$11;->c:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->ay(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3150
    iget-object v0, p0, Lcom/oplus/camera/professional/h$11;->c:Lcom/oplus/camera/professional/h;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oplus/camera/professional/h$11;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/oplus/camera/professional/h;->b(Lcom/oplus/camera/professional/h;ZZ)V

    .line 3151
    iget-object p0, p0, Lcom/oplus/camera/professional/h$11;->c:Lcom/oplus/camera/professional/h;

    invoke-static {p0}, Lcom/oplus/camera/professional/h;->az(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    const-string v0, "off"

    invoke-interface {p0, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
