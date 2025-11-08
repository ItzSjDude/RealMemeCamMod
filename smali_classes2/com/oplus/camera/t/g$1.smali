.class Lcom/oplus/camera/t/g$1;
.super Ljava/lang/Object;
.source "StreetTrackHelper.java"

# interfaces
.implements Lcom/oplus/camera/t/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/t/g;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/t/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/t/g;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->a(Lcom/oplus/camera/t/g;)V

    .line 96
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->b(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object p0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {p0}, Lcom/oplus/camera/t/g;->b(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/g$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/t/g$a;->k()Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouch: motionEvent onTracKMove:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StreetTrackHelp"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-virtual {v0}, Lcom/oplus/camera/t/g;->f()Z

    move-result v0

    goto :goto_1

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->j(Lcom/oplus/camera/t/g;)Z

    move-result v0

    goto :goto_1

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->h(Lcom/oplus/camera/t/g;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->i(Lcom/oplus/camera/t/g;)Z

    move-result v0

    goto :goto_1

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->h(Lcom/oplus/camera/t/g;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 139
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-virtual {v0}, Lcom/oplus/camera/t/g;->e()Z

    move-result v0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->a(Lcom/oplus/camera/t/g;)V

    .line 166
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->b(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/g$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 167
    iget-object p0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {p0}, Lcom/oplus/camera/t/g;->b(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/g$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/t/g$a;->a(I)V

    :cond_6
    return-void
.end method

.method public b()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->b(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object p0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {p0}, Lcom/oplus/camera/t/g;->b(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/g$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/t/g$a;->j()Z

    move-result p0

    return p0

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {p0}, Lcom/oplus/camera/t/g;->c(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/capmode/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public c()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->d(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->d(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->p(Z)V

    .line 118
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->d(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->h(ZZ)V

    .line 119
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->c(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->b(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/g$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->b(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/g$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/t/g$a;->g()V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->a(Lcom/oplus/camera/t/g;)V

    .line 127
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->e(Lcom/oplus/camera/t/g;)V

    .line 128
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->f(Lcom/oplus/camera/t/g;)V

    .line 129
    iget-object p0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {p0}, Lcom/oplus/camera/t/g;->g(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/t/h;->getY()F

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/camera/t/g;->a(Lcom/oplus/camera/t/g;F)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->k(Lcom/oplus/camera/t/g;)V

    .line 175
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->b(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->b(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/g$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/t/g$a;->h()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->l(Lcom/oplus/camera/t/g;)V

    .line 180
    iget-object p0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {p0}, Lcom/oplus/camera/t/g;->m(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/t/a;->e()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {v0}, Lcom/oplus/camera/t/g;->b(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/oplus/camera/t/g$1;->a:Lcom/oplus/camera/t/g;

    invoke-static {p0}, Lcom/oplus/camera/t/g;->b(Lcom/oplus/camera/t/g;)Lcom/oplus/camera/t/g$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/t/g$a;->i()V

    :cond_0
    return-void
.end method
