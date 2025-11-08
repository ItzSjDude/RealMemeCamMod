.class Lcom/oplus/camera/timelapsepro/g$6;
.super Landroid/os/Handler;
.source "TimeLapseProMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/g;-><init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/g;Landroid/os/Looper;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g$6;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 264
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 266
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 278
    :pswitch_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$6;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/g;->k(Lcom/oplus/camera/timelapsepro/g;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$6;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/g;->l(Lcom/oplus/camera/timelapsepro/g;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :pswitch_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$6;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/g;->j(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/a;->b()I

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->e(Lcom/oplus/camera/timelapsepro/g;I)V

    goto :goto_0

    .line 268
    :pswitch_2
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$6;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/g;->i(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/i;->f_()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
