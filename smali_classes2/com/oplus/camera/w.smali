.class public Lcom/oplus/camera/w;
.super Ljava/lang/Object;
.source "OplusPlaySound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/w$b;,
        Lcom/oplus/camera/w$a;
    }
.end annotation


# instance fields
.field private a:Landroid/media/SoundPool;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/media/AudioManager;

.field private f:Z

.field private g:Landroid/os/HandlerThread;

.field private h:Landroid/os/Handler;

.field private i:I

.field private j:Lcom/oplus/camera/w$a;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/w;->d:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/oplus/camera/w;->f:Z

    const/4 v1, -0x1

    .line 50
    iput v1, p0, Lcom/oplus/camera/w;->i:I

    .line 51
    iput-object v0, p0, Lcom/oplus/camera/w;->j:Lcom/oplus/camera/w$a;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/oplus/camera/w;->k:Z

    .line 55
    invoke-static {}, Lcom/oplus/camera/l/a;->c()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/w;->f:Z

    .line 57
    iget-boolean v1, p0, Lcom/oplus/camera/w;->f:Z

    const/16 v2, 0xa

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Landroid/media/SoundPool;

    sget v3, Lcom/oplus/compat/media/a;->a:I

    invoke-direct {v1, v2, v3, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    goto :goto_0

    .line 60
    :cond_0
    new-instance v1, Landroid/media/SoundPool;

    invoke-direct {v1, v2, v0, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 65
    new-instance v0, Lcom/oplus/camera/w$a;

    invoke-direct {v0}, Lcom/oplus/camera/w$a;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/w;->j:Lcom/oplus/camera/w$a;

    .line 66
    iput-object p1, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    .line 67
    iget-object p1, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/oplus/camera/w;->e:Landroid/media/AudioManager;

    .line 69
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "OplusPlaySound Thread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/camera/w;->g:Landroid/os/HandlerThread;

    .line 70
    iget-object p1, p0, Lcom/oplus/camera/w;->g:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance p1, Lcom/oplus/camera/w$1;

    iget-object v0, p0, Lcom/oplus/camera/w;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oplus/camera/w$1;-><init>(Lcom/oplus/camera/w;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/w;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/w;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/oplus/camera/w;->f:Z

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/w;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/oplus/camera/w;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/w;)Ljava/util/HashMap;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/w;)Landroid/media/SoundPool;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/w;)I
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/oplus/camera/w;->g()I

    move-result p0

    return p0
.end method

.method private g()I
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/oplus/camera/w;->e:Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    .line 192
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 114
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    if-nez v0, :cond_3

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    .line 117
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const v8, 0x7f0f0008

    .line 119
    invoke-virtual {v6, v7, v8, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 118
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const v7, 0x7f0f0009

    .line 121
    invoke-virtual {v5, v6, v7, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 120
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const v6, 0x7f0f0004

    .line 123
    invoke-virtual {v3, v5, v6, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 122
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const v5, 0x7f0f0005

    .line 125
    invoke-virtual {v2, v3, v5, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 124
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const v5, 0x7f0f0007

    .line 127
    invoke-virtual {v2, v3, v5, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 126
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const v5, 0x7f0f0006

    .line 129
    invoke-virtual {v2, v3, v5, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 128
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const v8, 0x7f0f000c

    .line 132
    invoke-virtual {v6, v7, v8, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 131
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const v7, 0x7f0f000d

    .line 134
    invoke-virtual {v5, v6, v7, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 133
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const/high16 v6, 0x7f0f0000

    .line 136
    invoke-virtual {v3, v5, v6, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 135
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const v5, 0x7f0f0001

    .line 138
    invoke-virtual {v2, v3, v5, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/camera/w;->f:Z

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const v7, 0x7f0f0010

    .line 143
    invoke-virtual {v5, v6, v7, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 142
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const v7, 0x7f0f0012

    .line 145
    invoke-virtual {v5, v6, v7, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 144
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 147
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const v7, 0x7f0f000a

    .line 149
    invoke-virtual {v5, v6, v7, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 148
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const v7, 0x7f0f000b

    .line 151
    invoke-virtual {v5, v6, v7, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 150
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const v7, 0x7f0f000f

    .line 154
    invoke-virtual {v5, v6, v7, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 153
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/oplus/camera/w;->b:Landroid/content/Context;

    const v7, 0x7f0f0011

    .line 156
    invoke-virtual {v5, v6, v7, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 155
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/w;->j:Lcom/oplus/camera/w$a;

    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/w$a;->a(II)V

    :cond_3
    return-void
.end method

.method public a(I)Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/w;->d:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/w;->d:Ljava/util/HashMap;

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/w;->d:Ljava/util/HashMap;

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/oplus/camera/w;->e:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/w;->i:I

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/oplus/camera/w;->j:Lcom/oplus/camera/w$a;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/w$a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/oplus/camera/w;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 233
    iget-object p0, p0, Lcom/oplus/camera/w;->h:Landroid/os/Handler;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 0

    .line 205
    iget-boolean p0, p0, Lcom/oplus/camera/w;->k:Z

    return p0
.end method

.method public d()V
    .locals 3

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioSilent, mRestoreRingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/w;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusPlaySound"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/oplus/camera/w;->e:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/w;->i:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/w;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object p0, p0, Lcom/oplus/camera/w;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 4

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreAudioMode, mRestoreRingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/w;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusPlaySound"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/oplus/camera/w;->e:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/w;->i:I

    if-ne v2, v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/oplus/camera/w;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    iget-object p0, p0, Lcom/oplus/camera/w;->h:Landroid/os/Handler;

    invoke-virtual {p0, v2, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/w;->e:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/w;->i:I

    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/oplus/camera/w;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object p0, p0, Lcom/oplus/camera/w;->h:Landroid/os/Handler;

    invoke-virtual {p0, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/w;->g:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 240
    iput-object v1, p0, Lcom/oplus/camera/w;->g:Landroid/os/HandlerThread;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/w;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 245
    iput-object v1, p0, Lcom/oplus/camera/w;->h:Landroid/os/Handler;

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 250
    iput-object v1, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_3

    .line 254
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 255
    iget-object v0, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 256
    iput-object v1, p0, Lcom/oplus/camera/w;->a:Landroid/media/SoundPool;

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/w;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 261
    iput-object v1, p0, Lcom/oplus/camera/w;->e:Landroid/media/AudioManager;

    return-void
.end method

.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 2

    if-eqz p3, :cond_0

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadComplete, load sound fail for soundId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "OplusPlaySound"

    invoke-static {p3, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 171
    iget-object p1, p0, Lcom/oplus/camera/w;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 173
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 174
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/oplus/camera/w;->d:Ljava/util/HashMap;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method
