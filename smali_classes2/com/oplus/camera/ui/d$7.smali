.class Lcom/oplus/camera/ui/d$7;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/screen/a/c$b;


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

    .line 1295
    iput-object p1, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1317
    iget-object v0, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->L(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/a/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/screen/a/c;->a(Z)V

    .line 1318
    iget-object v0, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->I(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v2}, Lcom/oplus/camera/ui/d;->H(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/a/b$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/screen/a/b;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/a/b$b;)V

    .line 1319
    iget-object p0, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    const/16 v0, 0x47

    const-string v1, "1"

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/out/e;)V
    .locals 13

    .line 1298
    iget-object v0, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/screen/out/e;)V

    .line 1299
    iget-object v0, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->J(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/screen/out/e;)V

    .line 1300
    iget-object p1, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->K(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/OutScreenButtonBoxView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->setHighLight(Z)V

    .line 1301
    iget-object p1, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->p(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    const/4 p1, 0x0

    new-array v12, p1, [Ljava/lang/Object;

    const v1, 0x7f100298

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x157c

    const v5, 0x7f0805e9

    const v6, 0x7f0604ff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual/range {v0 .. v12}, Lcom/oplus/camera/ui/a/a;->a(IZZIIIIZZZI[Ljava/lang/Object;)V

    .line 1303
    iget-object p0, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->dm()V

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1333
    iget-object p0, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIListener;->a(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public b()V
    .locals 2

    .line 1325
    iget-object v0, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1326
    iget-object p0, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    const-string v0, "disable_code"

    const-string v1, "camera_high_temperature_out_preview_disable"

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/oplus/camera/screen/out/e;)V
    .locals 3

    .line 1308
    iget-object p1, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/screen/out/e;)V

    .line 1309
    iget-object p1, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->J(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/screen/out/e;)V

    .line 1310
    iget-object p1, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->K(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/OutScreenButtonBoxView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/OutScreenButtonBoxView;->setHighLight(Z)V

    .line 1311
    iget-object p1, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->p(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/a/a;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f100298

    aput v2, v1, v0

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/a/a;->a([I)V

    .line 1312
    iget-object p0, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->L(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/a/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/a/c;->c()V

    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1338
    iget-object p0, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIListener;->b(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public c()V
    .locals 0

    .line 1343
    iget-object p0, p0, Lcom/oplus/camera/ui/d$7;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->I(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/a/b;->a()V

    return-void
.end method
