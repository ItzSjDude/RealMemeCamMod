.class public Lcom/oplus/camera/s/e;
.super Ljava/lang/Object;
.source "StarryUIControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/s/e$b;,
        Lcom/oplus/camera/s/e$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:Landroid/app/Activity;

.field private e:Landroid/os/Handler;

.field private f:Lcom/oplus/camera/ui/CameraUIInterface;

.field private g:Ljava/util/ArrayList;

.field private h:Lcom/oplus/camera/s/e$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/s/e$a;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/oplus/camera/s/e;->a:J

    .line 35
    iput-wide v0, p0, Lcom/oplus/camera/s/e;->b:J

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/oplus/camera/s/e;->c:Z

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/oplus/camera/s/e;->g:Ljava/util/ArrayList;

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/s/e;->h:Lcom/oplus/camera/s/e$a;

    .line 50
    iput-object p1, p0, Lcom/oplus/camera/s/e;->d:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 52
    iput-object p3, p0, Lcom/oplus/camera/s/e;->h:Lcom/oplus/camera/s/e$a;

    .line 53
    new-instance p1, Lcom/oplus/camera/s/e$b;

    invoke-direct {p1, p0, v0}, Lcom/oplus/camera/s/e$b;-><init>(Lcom/oplus/camera/s/e;Lcom/oplus/camera/s/e$1;)V

    iput-object p1, p0, Lcom/oplus/camera/s/e;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/s/e;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/oplus/camera/s/e;->e()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/s/e;J)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/s/e;->b(J)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/s/e;Lcom/oplus/camera/ui/control/b;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/s/e;->b(Lcom/oplus/camera/ui/control/b;Z)V

    return-void
.end method

.method private b(J)V
    .locals 2

    .line 122
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v0}, Lcom/oplus/camera/ui/control/b;-><init>()V

    const-string v1, "button_color_inside_none"

    .line 123
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    const/4 v1, 0x7

    .line 124
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 125
    iget-object v1, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    long-to-int p1, p1

    invoke-interface {v1, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->h(I)V

    .line 126
    iget-object p1, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 127
    iget-object p0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/s/e;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/oplus/camera/s/e;->f()V

    return-void
.end method

.method private b(Lcom/oplus/camera/ui/control/b;Z)V
    .locals 7

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->n()V

    .line 185
    iget-object v1, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f10031e

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 188
    iget-object v0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;Z)V

    .line 189
    iget-object p1, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Z)V

    const-string p1, "com.oplus.star.video.support"

    .line 191
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(I)V

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(IZ)V

    .line 195
    iget-object p1, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 196
    iget-object p1, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    if-eqz p2, :cond_1

    .line 198
    iget-object p1, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->as()V

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/s/e;->h:Lcom/oplus/camera/s/e$a;

    invoke-interface {p1}, Lcom/oplus/camera/s/e$a;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 202
    iget-object p0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    goto :goto_0

    .line 204
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->y(Z)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/s/e;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/oplus/camera/s/e;->g()V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/s/e;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/oplus/camera/s/e;->a:J

    return-wide v0
.end method

.method private d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/oplus/camera/s/e;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/s/e;->g:Ljava/util/ArrayList;

    .line 107
    iget-object v0, p0, Lcom/oplus/camera/s/e;->g:Ljava/util/ArrayList;

    const v1, 0x7f10031c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/oplus/camera/s/e;->g:Ljava/util/ArrayList;

    const v1, 0x7f100315

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/oplus/camera/s/e;->g:Ljava/util/ArrayList;

    const v1, 0x7f100312

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object p0, p0, Lcom/oplus/camera/s/e;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method private e()V
    .locals 6

    .line 131
    iget-wide v0, p0, Lcom/oplus/camera/s/e;->b:J

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/camera/s/e;->b:J

    .line 132
    iget-object v0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-wide v4, p0, Lcom/oplus/camera/s/e;->b:J

    const/4 v1, 0x0

    invoke-interface {v0, v4, v5, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(JZ)V

    .line 134
    iget-wide v0, p0, Lcom/oplus/camera/s/e;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 135
    iget-object p0, p0, Lcom/oplus/camera/s/e;->e:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/s/e;->e:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/s/e;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/oplus/camera/s/e;->h()V

    return-void
.end method

.method private f()V
    .locals 2

    const-string v0, "StarryUIControl"

    const-string v1, "doOnCountDownEnd"

    .line 142
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-boolean v0, p0, Lcom/oplus/camera/s/e;->c:Z

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v0}, Lcom/oplus/camera/ui/control/b;-><init>()V

    const-string v1, "button_color_inside_none"

    .line 146
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 147
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 149
    iget-object v1, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 150
    iget-object p0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Z)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/s/e;->h:Lcom/oplus/camera/s/e$a;

    invoke-interface {p0}, Lcom/oplus/camera/s/e$a;->a()V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(I)V

    .line 158
    iget-object v0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 159
    iget-object v0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(IZ)V

    .line 160
    iget-object v0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 161
    iget-object v0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/s/e;->h:Lcom/oplus/camera/s/e$a;

    invoke-interface {v0}, Lcom/oplus/camera/s/e$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object p0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->y(Z)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/s/e;->d:Landroid/app/Activity;

    .line 220
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 219
    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->i(I)V

    .line 221
    iget-object v0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-wide v1, p0, Lcom/oplus/camera/s/e;->a:J

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(JZ)V

    .line 222
    iget-wide v0, p0, Lcom/oplus/camera/s/e;->a:J

    iput-wide v0, p0, Lcom/oplus/camera/s/e;->b:J

    .line 223
    iget-object p0, p0, Lcom/oplus/camera/s/e;->e:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/oplus/camera/s/e;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Z)V

    .line 171
    iget-object p0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f10031e

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    return-void
.end method

.method public a(I)V
    .locals 8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 93
    iget-object p1, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-direct {p0}, Lcom/oplus/camera/s/e;->d()Ljava/util/List;

    move-result-object p0

    const-wide/16 v0, 0x1388

    invoke-interface {p1, p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/util/List;J)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f10031e

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/oplus/camera/s/e;->c:Z

    .line 116
    iput-wide p1, p0, Lcom/oplus/camera/s/e;->a:J

    .line 117
    iget-object p1, p0, Lcom/oplus/camera/s/e;->e:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-object p0, p0, Lcom/oplus/camera/s/e;->e:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/b;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 175
    iput-wide v0, p0, Lcom/oplus/camera/s/e;->a:J

    .line 176
    iget-object v0, p0, Lcom/oplus/camera/s/e;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/s/e;->e:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 178
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 179
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 180
    iget-object p0, p0, Lcom/oplus/camera/s/e;->e:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/oplus/camera/s/e;->c:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/oplus/camera/s/e;->d:Landroid/app/Activity;

    .line 214
    iput-object v0, p0, Lcom/oplus/camera/s/e;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 215
    iput-object v0, p0, Lcom/oplus/camera/s/e;->e:Landroid/os/Handler;

    return-void
.end method
