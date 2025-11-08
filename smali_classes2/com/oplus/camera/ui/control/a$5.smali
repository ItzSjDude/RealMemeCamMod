.class Lcom/oplus/camera/ui/control/a$5;
.super Lcom/a/a/e;
.source "CameraControlUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/a;->ab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/a;)V
    .locals 0

    .line 3138
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a$5;->a:Lcom/oplus/camera/ui/control/a;

    invoke-direct {p0}, Lcom/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/f;)V
    .locals 12

    .line 3141
    invoke-virtual {p1}, Lcom/a/a/f;->c()D

    move-result-wide v10

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fecccccc0000000L    # 0.8999999761581421

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide v0, v10

    .line 3142
    invoke-static/range {v0 .. v9}, Lcom/a/a/l;->a(DDDDD)D

    move-result-wide v0

    double-to-float p1, v0

    const-wide v6, 0x3fe3333340000000L    # 0.6000000238418579

    move-wide v0, v10

    .line 3144
    invoke-static/range {v0 .. v9}, Lcom/a/a/l;->a(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 3147
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a$5;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/a;->f(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ShutterButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3148
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a$5;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/a;->f(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ShutterButton;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setScaleX(F)V

    .line 3149
    iget-object v1, p0, Lcom/oplus/camera/ui/control/a$5;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/a;->f(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ShutterButton;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setScaleY(F)V

    .line 3150
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$5;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->f(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ShutterButton;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setAlpha(F)V

    :cond_0
    return-void
.end method
