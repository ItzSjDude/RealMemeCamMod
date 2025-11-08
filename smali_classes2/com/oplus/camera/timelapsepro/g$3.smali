.class Lcom/oplus/camera/timelapsepro/g$3;
.super Ljava/lang/Object;
.source "TimeLapseProMenuLayout.java"

# interfaces
.implements Lcom/oplus/camera/timelapsepro/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/g;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/g;)V
    .locals 0

    .line 1183
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1186
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/g;->t(Lcom/oplus/camera/timelapsepro/g;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1191
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/g;->b(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 1197
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p2, p1, v0, v0}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p1, v1, v1}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/g;ZZ)V

    goto :goto_0

    .line 1200
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    const/4 p2, 0x0

    invoke-static {p1, p2, v1}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/g;ZZ)V

    :goto_0
    if-nez p3, :cond_1

    .line 1204
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    const-string p1, "value_clear"

    invoke-static {p0, v0, p1}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1206
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p0, p3}, Lcom/oplus/camera/timelapsepro/g;->b(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 1218
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v1}, Lcom/oplus/camera/timelapsepro/g;->x(Lcom/oplus/camera/timelapsepro/g;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1219
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v8, 0x5dc

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v9}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJ)V

    goto :goto_0

    .line 1222
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/g;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1228
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0, p1}, Lcom/oplus/camera/timelapsepro/g;->c(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;)Ljava/lang/String;

    .line 1229
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p1, p2}, Lcom/oplus/camera/timelapsepro/g;->d(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;)Ljava/lang/String;

    .line 1231
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/g;->y(Lcom/oplus/camera/timelapsepro/g;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0, p1}, Lcom/oplus/camera/timelapsepro/g;->c(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;)Ljava/lang/String;

    .line 1237
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0, p2}, Lcom/oplus/camera/timelapsepro/g;->d(Lcom/oplus/camera/timelapsepro/g;Ljava/lang/String;)Ljava/lang/String;

    .line 1239
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p2}, Lcom/oplus/camera/timelapsepro/g;->k(Lcom/oplus/camera/timelapsepro/g;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xc

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p2}, Lcom/oplus/camera/timelapsepro/g;->k(Lcom/oplus/camera/timelapsepro/g;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    .line 1240
    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/g;->y(Lcom/oplus/camera/timelapsepro/g;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1245
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$3;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/g;->y(Lcom/oplus/camera/timelapsepro/g;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 p1, 0x3e8

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
