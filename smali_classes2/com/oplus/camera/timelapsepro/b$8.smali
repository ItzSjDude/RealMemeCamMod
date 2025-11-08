.class Lcom/oplus/camera/timelapsepro/b$8;
.super Landroid/os/Handler;
.source "ParameterContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/b;-><init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/b;Landroid/os/Looper;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b$8;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b$8;->a:Lcom/oplus/camera/timelapsepro/b;

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/timelapsepro/b;ZII)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b$8;->a:Lcom/oplus/camera/timelapsepro/b;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v1, v0, p1}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/timelapsepro/b;ZII)V

    :goto_0
    return-void
.end method
