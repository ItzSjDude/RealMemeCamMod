.class Lcom/oplus/camera/professional/v$13;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->b(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Boolean;

.field final synthetic c:Lcom/oplus/camera/professional/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 3334
    iput-object p1, p0, Lcom/oplus/camera/professional/v$13;->c:Lcom/oplus/camera/professional/v;

    iput-object p2, p0, Lcom/oplus/camera/professional/v$13;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/camera/professional/v$13;->b:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3337
    iget-object v0, p0, Lcom/oplus/camera/professional/v$13;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pref_camera_flashmode_key"

    if-nez v0, :cond_0

    .line 3338
    iget-object v0, p0, Lcom/oplus/camera/professional/v$13;->c:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->aE(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3339
    iget-object v0, p0, Lcom/oplus/camera/professional/v$13;->c:Lcom/oplus/camera/professional/v;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oplus/camera/professional/v$13;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/oplus/camera/professional/v;->b(Lcom/oplus/camera/professional/v;ZZ)V

    .line 3340
    iget-object p0, p0, Lcom/oplus/camera/professional/v$13;->c:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->aF(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3343
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v$13;->c:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->aG(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3344
    iget-object v0, p0, Lcom/oplus/camera/professional/v$13;->c:Lcom/oplus/camera/professional/v;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oplus/camera/professional/v$13;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/oplus/camera/professional/v;->b(Lcom/oplus/camera/professional/v;ZZ)V

    .line 3345
    iget-object p0, p0, Lcom/oplus/camera/professional/v$13;->c:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->aH(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    const-string v0, "off"

    invoke-interface {p0, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
