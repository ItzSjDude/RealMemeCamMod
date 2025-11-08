.class Lcom/oplus/camera/ui/d$6;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/screen/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 1240
    iput-object p1, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1291
    iget-object v0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->I(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->H(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/a/b$b;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/screen/a/b;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/a/b$b;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 1244
    iget-object v0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1245
    iget-object v0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dH()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1246
    iget-object v0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->aw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->ax()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->F(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/modepanel/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/modepanel/h;->a()V

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/d;->g(Lcom/oplus/camera/ui/d;I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 1254
    iget-object v0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->ao()V

    goto :goto_0

    .line 1256
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->cv()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/d;->aV()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/control/a;->a(ILjava/lang/String;)V

    .line 1259
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/a;->l(Z)V

    .line 1262
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1263
    iget-object v0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bU()V

    .line 1265
    iget-object v0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->L()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1266
    iget-object v0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->M()V

    .line 1269
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1270
    iget-object v0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->e()V

    :cond_5
    if-nez p1, :cond_6

    .line 1275
    iget-object p1, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1276
    iget-object p1, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bZ()V

    .line 1280
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->G(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/g;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->G(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/g;->n()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1281
    iget-object p1, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/oplus/camera/ui/d;->a(ZZZZ)V

    .line 1282
    iget-object p1, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->aK()V

    .line 1285
    :cond_7
    iget-object p0, p0, Lcom/oplus/camera/ui/d$6;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->i()V

    return-void
.end method
