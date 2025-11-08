.class Lcom/oplus/camera/screen/a/e$2;
.super Landroid/os/Handler;
.source "ScreenSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/screen/a/e;-><init>(Landroid/content/Context;Lcom/oplus/camera/screen/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/screen/a/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/screen/a/e;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 75
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 97
    :pswitch_0
    iget-object p1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {p1}, Lcom/oplus/camera/screen/a/e;->g(Lcom/oplus/camera/screen/a/e;)Lcom/oplus/camera/screen/a/a;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {v1}, Lcom/oplus/camera/screen/a/e;->f(Lcom/oplus/camera/screen/a/e;)Lcom/oplus/camera/screen/a/d;

    move-result-object v2

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    .line 98
    invoke-static {v1}, Lcom/oplus/camera/screen/a/e;->d(Lcom/oplus/camera/screen/a/e;)I

    move-result v3

    sget v4, Lcom/oplus/camera/util/Util;->i:I

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {v1}, Lcom/oplus/camera/screen/a/e;->e(Lcom/oplus/camera/screen/a/e;)I

    move-result v5

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {v1}, Lcom/oplus/camera/screen/a/e;->h(Lcom/oplus/camera/screen/a/e;)Z

    move-result v6

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/camera/screen/a/d;->a(IIIZZ)Lcom/oplus/camera/screen/f$a;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {p0}, Lcom/oplus/camera/screen/a/e;->h(Lcom/oplus/camera/screen/a/e;)Z

    move-result p0

    .line 97
    invoke-interface {p1, v1, v0, p0}, Lcom/oplus/camera/screen/a/a;->b(Lcom/oplus/camera/screen/f$a;ZZ)V

    goto/16 :goto_0

    .line 93
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {p1}, Lcom/oplus/camera/screen/a/e;->g(Lcom/oplus/camera/screen/a/e;)Lcom/oplus/camera/screen/a/a;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {v1}, Lcom/oplus/camera/screen/a/e;->f(Lcom/oplus/camera/screen/a/e;)Lcom/oplus/camera/screen/a/d;

    move-result-object v2

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    .line 94
    invoke-static {v1}, Lcom/oplus/camera/screen/a/e;->d(Lcom/oplus/camera/screen/a/e;)I

    move-result v3

    sget v4, Lcom/oplus/camera/util/Util;->i:I

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {v1}, Lcom/oplus/camera/screen/a/e;->e(Lcom/oplus/camera/screen/a/e;)I

    move-result v5

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {v1}, Lcom/oplus/camera/screen/a/e;->h(Lcom/oplus/camera/screen/a/e;)Z

    move-result v6

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/camera/screen/a/d;->a(IIIZZ)Lcom/oplus/camera/screen/f$a;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {p0}, Lcom/oplus/camera/screen/a/e;->h(Lcom/oplus/camera/screen/a/e;)Z

    move-result p0

    .line 93
    invoke-interface {p1, v1, v0, p0}, Lcom/oplus/camera/screen/a/a;->b(Lcom/oplus/camera/screen/f$a;ZZ)V

    goto :goto_0

    .line 87
    :pswitch_2
    iget-object p1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {p1}, Lcom/oplus/camera/screen/a/e;->g(Lcom/oplus/camera/screen/a/e;)Lcom/oplus/camera/screen/a/a;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {v1}, Lcom/oplus/camera/screen/a/e;->f(Lcom/oplus/camera/screen/a/e;)Lcom/oplus/camera/screen/a/d;

    move-result-object v2

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    .line 88
    invoke-static {v1}, Lcom/oplus/camera/screen/a/e;->d(Lcom/oplus/camera/screen/a/e;)I

    move-result v3

    sget v4, Lcom/oplus/camera/util/Util;->i:I

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {v1}, Lcom/oplus/camera/screen/a/e;->e(Lcom/oplus/camera/screen/a/e;)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/camera/screen/a/d;->a(IIIZZ)Lcom/oplus/camera/screen/f$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 87
    invoke-interface {p1, v1, v0, v2}, Lcom/oplus/camera/screen/a/a;->b(Lcom/oplus/camera/screen/f$a;ZZ)V

    .line 89
    iget-object p0, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {p0}, Lcom/oplus/camera/screen/a/e;->g(Lcom/oplus/camera/screen/a/e;)Lcom/oplus/camera/screen/a/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/screen/a/a;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->o()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/camera/screen/a/e;->a(Lcom/oplus/camera/screen/a/e;Z)Z

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x2

    .line 77
    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {v1}, Lcom/oplus/camera/screen/a/e;->c(Lcom/oplus/camera/screen/a/e;)I

    move-result v1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x3

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    .line 78
    invoke-static {v1}, Lcom/oplus/camera/screen/a/e;->c(Lcom/oplus/camera/screen/a/e;)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    sget v1, Lcom/oplus/camera/util/Util;->i:I

    invoke-static {p1, v1}, Lcom/oplus/camera/screen/a/e;->b(Lcom/oplus/camera/screen/a/e;I)I

    .line 80
    iget-object p1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {p1}, Lcom/oplus/camera/screen/a/e;->g(Lcom/oplus/camera/screen/a/e;)Lcom/oplus/camera/screen/a/a;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {v1}, Lcom/oplus/camera/screen/a/e;->f(Lcom/oplus/camera/screen/a/e;)Lcom/oplus/camera/screen/a/d;

    move-result-object v2

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    .line 81
    invoke-static {v1}, Lcom/oplus/camera/screen/a/e;->d(Lcom/oplus/camera/screen/a/e;)I

    move-result v3

    sget v4, Lcom/oplus/camera/util/Util;->i:I

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {v1}, Lcom/oplus/camera/screen/a/e;->e(Lcom/oplus/camera/screen/a/e;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/camera/screen/a/d;->a(IIIZZ)Lcom/oplus/camera/screen/f$a;

    move-result-object v1

    .line 80
    invoke-interface {p1, v1, v0, v0}, Lcom/oplus/camera/screen/a/a;->b(Lcom/oplus/camera/screen/f$a;ZZ)V

    .line 82
    iget-object p0, p0, Lcom/oplus/camera/screen/a/e$2;->a:Lcom/oplus/camera/screen/a/e;

    invoke-static {p0, v0}, Lcom/oplus/camera/screen/a/e;->a(Lcom/oplus/camera/screen/a/e;Z)Z

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
