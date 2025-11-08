.class Lcom/oplus/camera/professional/r$8;
.super Ljava/lang/Object;
.source "ProMenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/r;->v()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/r;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/r;)V
    .locals 0

    .line 1141
    iput-object p1, p0, Lcom/oplus/camera/professional/r$8;->a:Lcom/oplus/camera/professional/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1144
    iget-object v0, p0, Lcom/oplus/camera/professional/r$8;->a:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/r;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/r;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v0}, Lcom/oplus/camera/ui/control/b;-><init>()V

    .line 1147
    iget-object v1, p0, Lcom/oplus/camera/professional/r$8;->a:Lcom/oplus/camera/professional/r;

    iget-object v1, v1, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v1

    const/16 v2, 0x9

    const-string v3, "button_color_inside_none"

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    .line 1148
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 1149
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    .line 1151
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 1152
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 1155
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/professional/r$8;->a:Lcom/oplus/camera/professional/r;

    iget-object p0, p0, Lcom/oplus/camera/professional/r;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    :cond_1
    return-void
.end method
