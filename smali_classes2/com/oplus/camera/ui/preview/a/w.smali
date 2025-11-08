.class public Lcom/oplus/camera/ui/preview/a/w;
.super Lcom/oplus/camera/ui/preview/a/y;
.source "StickerTexturePreview.java"


# static fields
.field public static a:Ljava/lang/String; = "0ms"


# instance fields
.field private A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field private D:Z

.field private E:F

.field private final F:Ljava/lang/Object;

.field private G:Lcom/oplus/camera/sticker/d;

.field private H:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/oplus/camera/sticker/b;",
            "Ljava/util/List<",
            "Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private I:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oplus/camera/sticker/b;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

.field private K:Lcom/sensetime/stmobile/STMobileHardwareBufferNative;

.field private L:Lcom/sensetime/stmobile/STGLRender;

.field private M:[B

.field private N:Landroid/os/Handler;

.field private b:I

.field private c:I

.field private d:I

.field private k:I

.field private l:I

.field private m:Z

.field private volatile n:I

.field private o:I

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/gl/s;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/oplus/camera/gl/s;

.field private r:Lcom/oplus/camera/gl/s;

.field private s:Lcom/oplus/camera/gl/s;

.field private t:Z

.field private u:Z

.field private volatile v:Z

.field private w:Lcom/oplus/camera/ui/preview/a/aa;

.field private x:Lcom/sensetime/stmobile/STSoundPlayManager;

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 93
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/w;->b:I

    .line 58
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/w;->c:I

    .line 59
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/w;->d:I

    .line 60
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/w;->k:I

    .line 61
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/w;->l:I

    .line 62
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/w;->m:Z

    .line 63
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/w;->n:I

    .line 64
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/w;->o:I

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->p:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->q:Lcom/oplus/camera/gl/s;

    .line 67
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->r:Lcom/oplus/camera/gl/s;

    .line 68
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->s:Lcom/oplus/camera/gl/s;

    .line 69
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/w;->t:Z

    .line 70
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/w;->u:Z

    .line 71
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/w;->v:Z

    .line 72
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->w:Lcom/oplus/camera/ui/preview/a/aa;

    .line 73
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->x:Lcom/sensetime/stmobile/STSoundPlayManager;

    .line 74
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->y:Ljava/util/ArrayList;

    .line 75
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->z:Ljava/util/ArrayList;

    .line 76
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    .line 77
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->B:Ljava/util/Map;

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/w;->C:Z

    .line 79
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/w;->D:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 80
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/w;->E:F

    .line 81
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/w;->F:Ljava/lang/Object;

    .line 82
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->G:Lcom/oplus/camera/sticker/d;

    .line 84
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/w;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 86
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    .line 87
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->K:Lcom/sensetime/stmobile/STMobileHardwareBufferNative;

    .line 88
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->L:Lcom/sensetime/stmobile/STGLRender;

    .line 89
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->M:[B

    .line 90
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->N:Landroid/os/Handler;

    return-void
.end method

.method private A()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->B:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->B:Ljava/util/Map;

    .line 150
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->B:Ljava/util/Map;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100682

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->B:Ljava/util/Map;

    const-wide/16 v1, 0x4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f10068a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->B:Ljava/util/Map;

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f10068d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->B:Ljava/util/Map;

    const-wide/16 v1, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100688

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->B:Ljava/util/Map;

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f10068b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    .line 159
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f10068e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    const-wide/16 v1, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100685

    .line 161
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 160
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    const-wide/32 v1, 0x8000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100686

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100683

    .line 164
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 163
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100684

    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 165
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    const-wide/16 v1, 0x800

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f10068f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    const-wide/16 v1, 0x200

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100689

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    const-wide/16 v1, 0x400

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f100690

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    const-wide/16 v1, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f10068c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    const-wide/32 v0, 0x100000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const v1, 0x7f100687

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 171
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private B()V
    .locals 2

    .line 177
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/w;->u:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/w;->t:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/w;->v:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "initGLRes"

    .line 181
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    const-string v0, "StickerTexturePreview"

    const-string v1, "initGLRes"

    .line 183
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->F:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/w;->G()V

    .line 187
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 189
    new-instance v0, Lcom/sensetime/stmobile/STSoundPlayManager;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sensetime/stmobile/STSoundPlayManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->x:Lcom/sensetime/stmobile/STSoundPlayManager;

    .line 191
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->F:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    .line 192
    :try_start_1
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/w;->u:Z

    .line 193
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p0, "initGLRes"

    .line 195
    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 193
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 187
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private C()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->x:Lcom/sensetime/stmobile/STSoundPlayManager;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/sensetime/stmobile/STSoundPlayManager;->release()V

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->x:Lcom/sensetime/stmobile/STSoundPlayManager;

    :cond_0
    return-void
.end method

.method private D()V
    .locals 5

    .line 232
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/w;->b:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oplus/camera/ui/preview/a/w;->c:I

    if-eqz v0, :cond_2

    .line 233
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/w;->g:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x140

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e0

    :goto_0
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/w;->d:I

    .line 235
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/w;->b:I

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/w;->c:I

    if-lt v0, v1, :cond_1

    int-to-float v2, v0

    .line 236
    iget v3, p0, Lcom/oplus/camera/ui/preview/a/w;->d:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    iput v2, p0, Lcom/oplus/camera/ui/preview/a/w;->E:F

    .line 237
    iput v3, p0, Lcom/oplus/camera/ui/preview/a/w;->k:I

    mul-int/2addr v1, v3

    .line 238
    div-int/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/ui/preview/a/w;->l:I

    goto :goto_1

    :cond_1
    int-to-float v2, v1

    .line 240
    iget v3, p0, Lcom/oplus/camera/ui/preview/a/w;->d:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    iput v2, p0, Lcom/oplus/camera/ui/preview/a/w;->E:F

    .line 241
    iput v3, p0, Lcom/oplus/camera/ui/preview/a/w;->l:I

    mul-int/2addr v0, v3

    .line 242
    div-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/w;->k:I

    .line 245
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkInitActionDetectImageSize, mActionDetectImageWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/w;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mActionDetectImageHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/preview/a/w;->l:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StickerTexturePreview"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private E()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->w:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/aa;->o()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object v1

    .line 408
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->x:Lcom/sensetime/stmobile/STSoundPlayManager;

    if-eqz p0, :cond_1

    .line 409
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/q;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sensetime/stmobile/STSoundPlayManager;->setPauseState(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "StickerTexturePreview"

    const-string v0, "checkStickerMusicPauseState, non selected sticker!"

    .line 412
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private F()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    const-string v0, "StickerTexturePreview"

    const-string v1, "destroyStInstance"

    .line 418
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/sticker/b;

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/b;->a()Lcom/sensetime/stmobile/STMobileStickerNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensetime/stmobile/STMobileStickerNative;->destroyInstance()V

    goto :goto_0

    .line 426
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_2
    return-void
.end method

.method private G()V
    .locals 4

    .line 431
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "StickerTexturePreview"

    const-string v1, "createStInstance"

    .line 432
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 435
    new-instance v1, Lcom/oplus/camera/sticker/b;

    invoke-direct {v1}, Lcom/oplus/camera/sticker/b;-><init>()V

    .line 436
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/b;->a()Lcom/sensetime/stmobile/STMobileStickerNative;

    move-result-object v2

    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sensetime/stmobile/STMobileStickerNative;->createInstance(Landroid/content/Context;)I

    .line 438
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/w;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private H()Lcom/oplus/camera/gl/s;
    .locals 4

    .line 708
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/sticker/b;

    .line 709
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 711
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    .line 712
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;

    invoke-virtual {v2}, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;->getPositionType()I

    move-result v2

    if-nez v2, :cond_0

    .line 713
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/b;->c()Lcom/oplus/camera/gl/s;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(ILcom/oplus/camera/gl/s;)I
    .locals 16

    move-object/from16 v0, p0

    .line 684
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v2, p1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/sticker/b;

    .line 685
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_0

    .line 687
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    .line 688
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;

    invoke-virtual {v4}, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;->getPositionType()I

    move-result v4

    if-nez v4, :cond_0

    .line 689
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 690
    invoke-virtual {v3}, Lcom/oplus/camera/sticker/b;->a()Lcom/sensetime/stmobile/STMobileStickerNative;

    move-result-object v5

    invoke-virtual {v3}, Lcom/oplus/camera/sticker/b;->c()Lcom/oplus/camera/gl/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v6

    iget v2, v0, Lcom/oplus/camera/ui/preview/a/w;->E:F

    .line 691
    invoke-virtual {v3, v2}, Lcom/oplus/camera/sticker/b;->b(F)Lcom/sensetime/stmobile/model/STHumanAction;

    move-result-object v7

    iget v8, v0, Lcom/oplus/camera/ui/preview/a/w;->o:I

    .line 692
    invoke-virtual {v3}, Lcom/oplus/camera/sticker/b;->c()Lcom/oplus/camera/gl/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->f()I

    move-result v9

    invoke-virtual {v3}, Lcom/oplus/camera/sticker/b;->c()Lcom/oplus/camera/gl/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->g()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 694
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v15

    .line 690
    invoke-virtual/range {v5 .. v15}, Lcom/sensetime/stmobile/STMobileStickerNative;->processTexture(ILcom/sensetime/stmobile/model/STHumanAction;IIIIIZLcom/sensetime/stmobile/model/STStickerInputParams;I)I

    move-result v2

    .line 695
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 697
    invoke-static {}, Lcom/oplus/camera/util/Util;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "FORE"

    move-object/from16 v4, p2

    .line 698
    invoke-static {v4, v3}, Lcom/oplus/camera/util/Util;->a(Lcom/oplus/camera/gl/c;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    goto :goto_0

    :cond_1
    return v2
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/w;)Ljava/lang/Object;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->F:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;",
            ">;>;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->w:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/aa;->o()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "StickerTexturePreview"

    const-string p1, "getExtendedInfoMap, item is null"

    .line 304
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 309
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->j:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oplus/camera/sticker/g;->a(Landroid/content/Context;Lcom/oplus/camera/sticker/data/StickerItem;)Ljava/util/List;

    move-result-object p0

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_3

    .line 312
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 313
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;

    if-eqz p1, :cond_1

    .line 315
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;->getStickerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;->getStickerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 319
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;->getStickerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 325
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/camera/sticker/b;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->w:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/aa;->o()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 342
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/data/StickerItem;->getFileContentUri()Ljava/lang/String;

    move-result-object v0

    .line 343
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 347
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/w;->F:Ljava/lang/Object;

    monitor-enter v2

    .line 348
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v6, v0

    move v0, v4

    move v5, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 349
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 351
    iget-object v9, p0, Lcom/oplus/camera/ui/preview/a/w;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    if-lt v0, v9, :cond_1

    const-string v7, "StickerTexturePreview"

    .line 352
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMaterialInfoMap, Just support "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/oplus/camera/ui/preview/a/w;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " materials."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v9, p0, Lcom/oplus/camera/ui/preview/a/w;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v9, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/sticker/b;

    if-eqz v8, :cond_4

    .line 360
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 361
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;

    invoke-virtual {v6}, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;->getPositionType()I

    move-result v6

    if-nez v6, :cond_2

    .line 362
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/a/w;->q:Lcom/oplus/camera/gl/s;

    goto :goto_1

    .line 363
    :cond_2
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;

    invoke-virtual {v6}, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;->getPositionType()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_3

    .line 364
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/a/w;->r:Lcom/oplus/camera/gl/s;

    goto :goto_1

    .line 366
    :cond_3
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/a/w;->p:Ljava/util/ArrayList;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/oplus/camera/gl/s;

    move v5, v9

    .line 369
    :goto_1
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;

    iget v9, p0, Lcom/oplus/camera/ui/preview/a/w;->c:I

    iget v11, p0, Lcom/oplus/camera/ui/preview/a/w;->b:I

    invoke-static {v9, v11}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result v9

    invoke-static {v8, v9}, Lcom/oplus/camera/sticker/c;->a(Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 372
    :cond_4
    iget-object v8, p0, Lcom/oplus/camera/ui/preview/a/w;->r:Lcom/oplus/camera/gl/s;

    move-object v12, v8

    move-object v8, v6

    move-object v6, v12

    .line 375
    :goto_2
    iget v9, p0, Lcom/oplus/camera/ui/preview/a/w;->b:I

    invoke-virtual {v6}, Lcom/oplus/camera/gl/s;->f()I

    move-result v11

    div-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual {v0, v9}, Lcom/oplus/camera/sticker/b;->a(F)V

    .line 376
    invoke-virtual {v0, v6}, Lcom/oplus/camera/sticker/b;->a(Lcom/oplus/camera/gl/s;)V

    .line 377
    invoke-direct {p0, v0, v8}, Lcom/oplus/camera/ui/preview/a/w;->a(Lcom/oplus/camera/sticker/b;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v8

    move v0, v10

    goto/16 :goto_0

    .line 380
    :cond_5
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 337
    :cond_6
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMaterialInfoMap, item: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", extendedInfoMap: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StickerTexturePreview"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;)V
    .locals 12

    .line 655
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/preview/a/w;->c(Lcom/oplus/camera/gl/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    .line 656
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/preview/a/w;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;I)V

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/sticker/b;

    .line 660
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 662
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 663
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;

    .line 664
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/b;->c()Lcom/oplus/camera/gl/s;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 665
    invoke-virtual {p2}, Lcom/oplus/camera/gl/s;->f()I

    move-result v4

    .line 666
    invoke-virtual {p2}, Lcom/oplus/camera/gl/s;->g()I

    move-result v5

    .line 665
    invoke-static {v3, v4, v5}, Lcom/oplus/camera/sticker/c;->a(Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;II)Landroid/graphics/RectF;

    move-result-object v11

    .line 667
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/b;->c()Lcom/oplus/camera/gl/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->f()I

    move-result v3

    invoke-virtual {v1}, Lcom/oplus/camera/sticker/b;->c()Lcom/oplus/camera/gl/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/gl/s;->g()I

    move-result v4

    invoke-static {v3, v4, v11}, Lcom/oplus/camera/sticker/c;->a(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v10

    .line 670
    invoke-virtual {v1}, Lcom/oplus/camera/sticker/b;->c()Lcom/oplus/camera/gl/s;

    move-result-object v8

    move-object v6, p0

    move-object v7, p1

    move-object v9, p2

    invoke-direct/range {v6 .. v11}, Lcom/oplus/camera/ui/preview/a/w;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Lcom/oplus/camera/gl/s;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 672
    invoke-static {}, Lcom/oplus/camera/util/Util;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OUTPUT"

    .line 673
    invoke-static {p2, v3}, Lcom/oplus/camera/util/Util;->a(Lcom/oplus/camera/gl/c;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;I)V
    .locals 6

    .line 885
    invoke-interface {p1, p2}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/s;)V

    .line 886
    invoke-virtual {p2}, Lcom/oplus/camera/gl/s;->h()I

    move-result p0

    int-to-float v3, p0

    invoke-virtual {p2}, Lcom/oplus/camera/gl/s;->i()I

    move-result p0

    int-to-float v4, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/gl/h;->a(FFFFI)V

    .line 887
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->h()V

    return-void
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Lcom/oplus/camera/gl/s;)V
    .locals 6

    .line 873
    invoke-interface {p1, p3}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/s;)V

    .line 874
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->f()I

    move-result v4

    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->g()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;IIII)V

    .line 875
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->h()V

    return-void
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Lcom/oplus/camera/gl/s;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .line 879
    invoke-interface {p1, p3}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/s;)V

    .line 880
    invoke-interface {p1, p2, p4, p5}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 881
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->h()V

    return-void
.end method

.method private a(Lcom/oplus/camera/sticker/b;Ljava/lang/String;)V
    .locals 4

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeStickerNative, sticker: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->j:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/b;->a()Lcom/sensetime/stmobile/STMobileStickerNative;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/sensetime/stmobile/STMobileStickerNative;->changeStickerFromBuffer([BI)I

    goto :goto_0

    .line 393
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeStickerNative failed, bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/w;->o()V

    .line 398
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/b;->a()Lcom/sensetime/stmobile/STMobileStickerNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensetime/stmobile/STMobileStickerNative;->getTriggerAction()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/preview/a/w;->b(J)V

    .line 399
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/b;->a()Lcom/sensetime/stmobile/STMobileStickerNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensetime/stmobile/STMobileStickerNative;->getTriggerAction()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oplus/camera/ui/preview/a/w;->a(Lcom/oplus/camera/sticker/b;Ljava/lang/String;J)V

    return-void
.end method

.method private a(Lcom/oplus/camera/sticker/b;Ljava/lang/String;J)V
    .locals 0

    if-nez p2, :cond_0

    const-wide/16 p3, 0x0

    .line 613
    :cond_0
    invoke-virtual {p1, p3, p4}, Lcom/oplus/camera/sticker/b;->a(J)V

    return-void
.end method

.method private a(Lcom/sensetime/stmobile/model/STHumanAction;)V
    .locals 3

    .line 617
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/sticker/b;

    .line 618
    invoke-virtual {v1, p1}, Lcom/oplus/camera/sticker/b;->b(Lcom/sensetime/stmobile/model/STHumanAction;)V

    .line 619
    invoke-virtual {v1, p1}, Lcom/oplus/camera/sticker/b;->a(Lcom/sensetime/stmobile/model/STHumanAction;)V

    .line 620
    iget v2, p0, Lcom/oplus/camera/ui/preview/a/w;->E:F

    invoke-virtual {v1, v2}, Lcom/oplus/camera/sticker/b;->b(F)Lcom/sensetime/stmobile/model/STHumanAction;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/preview/a/w;->b(Lcom/sensetime/stmobile/model/STHumanAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/w;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/w;->v:Z

    return p1
.end method

.method private b(Lcom/oplus/camera/gl/s;)I
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "processNoFrontTexture"

    .line 625
    invoke-static {v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 629
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/sticker/b;

    .line 630
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1

    .line 633
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    .line 634
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;

    invoke-virtual {v5}, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;->getPositionType()I

    move-result v5

    if-eqz v5, :cond_0

    .line 635
    :cond_1
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 637
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/b;->a()Lcom/sensetime/stmobile/STMobileStickerNative;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/camera/gl/s;->e()I

    move-result v7

    iget v3, v0, Lcom/oplus/camera/ui/preview/a/w;->E:F

    .line 638
    invoke-virtual {v4, v3}, Lcom/oplus/camera/sticker/b;->b(F)Lcom/sensetime/stmobile/model/STHumanAction;

    move-result-object v8

    iget v9, v0, Lcom/oplus/camera/ui/preview/a/w;->o:I

    .line 639
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/b;->c()Lcom/oplus/camera/gl/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->f()I

    move-result v10

    invoke-virtual {v4}, Lcom/oplus/camera/sticker/b;->c()Lcom/oplus/camera/gl/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->g()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 640
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/b;->c()Lcom/oplus/camera/gl/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v16

    .line 637
    invoke-virtual/range {v6 .. v16}, Lcom/sensetime/stmobile/STMobileStickerNative;->processTexture(ILcom/sensetime/stmobile/model/STHumanAction;IIIIIZLcom/sensetime/stmobile/model/STStickerInputParams;I)I

    move-result v3

    .line 641
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 643
    invoke-static {}, Lcom/oplus/camera/util/Util;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 644
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/b;->c()Lcom/oplus/camera/gl/s;

    move-result-object v4

    const-string v5, "NONFORE"

    invoke-static {v4, v5}, Lcom/oplus/camera/util/Util;->a(Lcom/oplus/camera/gl/c;Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :cond_2
    invoke-static {v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return v3
.end method

.method private b(J)V
    .locals 8

    .line 969
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->y:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 970
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->y:Ljava/util/ArrayList;

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 975
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->z:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 976
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->z:Ljava/util/ArrayList;

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 981
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/w;->A()V

    .line 982
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 983
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    .line 986
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, p1, v2

    if-ltz v6, :cond_2

    and-long v6, p1, v4

    cmp-long v6, v6, v2

    if-lez v6, :cond_2

    .line 988
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/a/w;->y:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    .line 994
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, p1, v2

    if-ltz v1, :cond_4

    and-long v6, p1, v4

    cmp-long v1, v6, v2

    if-lez v1, :cond_4

    .line 996
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->z:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    move p2, p1

    .line 1001
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_7

    .line 1002
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    if-eqz v0, :cond_6

    .line 1003
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/w;->C:Z

    .line 1004
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/w;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->B:Ljava/util/Map;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->y:Ljava/util/ArrayList;

    .line 1005
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1004
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1006
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/y$b;->a(Ljava/lang/String;)V

    return-void

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    move p2, p1

    .line 1011
    :goto_3
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_9

    .line 1012
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    if-eqz v0, :cond_8

    .line 1013
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/w;->C:Z

    .line 1014
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/w;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->z:Ljava/util/ArrayList;

    .line 1015
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1014
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1016
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/y$b;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_9
    return-void
.end method

.method private b(Lcom/sensetime/stmobile/model/STHumanAction;)V
    .locals 10

    if-eqz p1, :cond_6

    .line 1023
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/w;->C:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1027
    :cond_0
    iget v0, p1, Lcom/sensetime/stmobile/model/STHumanAction;->faceCount:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v3

    .line 1028
    :goto_0
    iget v5, p1, Lcom/sensetime/stmobile/model/STHumanAction;->faceCount:I

    if-ge v0, v5, :cond_3

    .line 1029
    iget-object v5, p1, Lcom/sensetime/stmobile/model/STHumanAction;->faces:[Lcom/sensetime/stmobile/model/STMobileFaceInfo;

    aget-object v5, v5, v0

    iget-wide v5, v5, Lcom/sensetime/stmobile/model/STMobileFaceInfo;->faceAction:J

    move v7, v3

    .line 1031
    :goto_1
    iget-object v8, p0, Lcom/oplus/camera/ui/preview/a/w;->y:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1032
    iget-object v8, p0, Lcom/oplus/camera/ui/preview/a/w;->y:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    and-long/2addr v8, v5

    cmp-long v8, v8, v1

    if-lez v8, :cond_1

    .line 1033
    iput-boolean v4, p0, Lcom/oplus/camera/ui/preview/a/w;->C:Z

    .line 1034
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/w;->o()V

    return-void

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1041
    :cond_3
    iget v0, p1, Lcom/sensetime/stmobile/model/STHumanAction;->handCount:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v3

    .line 1042
    :goto_2
    iget v5, p1, Lcom/sensetime/stmobile/model/STHumanAction;->handCount:I

    if-ge v0, v5, :cond_6

    .line 1043
    iget-object v5, p1, Lcom/sensetime/stmobile/model/STHumanAction;->hands:[Lcom/sensetime/stmobile/model/STMobileHandInfo;

    aget-object v5, v5, v0

    iget-wide v5, v5, Lcom/sensetime/stmobile/model/STMobileHandInfo;->handAction:J

    move v7, v3

    .line 1045
    :goto_3
    iget-object v8, p0, Lcom/oplus/camera/ui/preview/a/w;->z:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1046
    iget-object v8, p0, Lcom/oplus/camera/ui/preview/a/w;->z:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    and-long/2addr v8, v5

    cmp-long v8, v8, v1

    if-lez v8, :cond_4

    .line 1047
    iput-boolean v4, p0, Lcom/oplus/camera/ui/preview/a/w;->C:Z

    .line 1048
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/w;->o()V

    return-void

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-void
.end method

.method private c(Lcom/oplus/camera/gl/s;)Z
    .locals 9

    .line 725
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/sticker/b;

    .line 726
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_0

    .line 728
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 729
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;

    .line 730
    invoke-virtual {v4}, Lcom/oplus/camera/sticker/b;->c()Lcom/oplus/camera/gl/s;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    move v3, v5

    goto :goto_1

    .line 735
    :cond_2
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;

    invoke-virtual {v4}, Lcom/oplus/camera/sticker/data/MultiStickerExtendedInfo;->getPositionType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    move v2, v5

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    move v1, v5

    :cond_4
    return v1
.end method

.method private e(I)V
    .locals 8

    const-string v0, "doHumanActionDetect"

    .line 852
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->K:Lcom/sensetime/stmobile/STMobileHardwareBufferNative;

    invoke-virtual {v0}, Lcom/sensetime/stmobile/STMobileHardwareBufferNative;->getTextureId()I

    move-result v0

    .line 855
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->L:Lcom/sensetime/stmobile/STGLRender;

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/w;->k:I

    iget v3, p0, Lcom/oplus/camera/ui/preview/a/w;->l:I

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/sensetime/stmobile/STGLRender;->resizeTexture(IIII)I

    move-result p1

    .line 856
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->L:Lcom/sensetime/stmobile/STGLRender;

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/w;->k:I

    iget v3, p0, Lcom/oplus/camera/ui/preview/a/w;->l:I

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/sensetime/stmobile/STGLRender;->copyTexture(IIII)V

    .line 857
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/w;->K:Lcom/sensetime/stmobile/STMobileHardwareBufferNative;

    iget v0, p0, Lcom/oplus/camera/ui/preview/a/w;->k:I

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/w;->l:I

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/w;->M:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/sensetime/stmobile/STMobileHardwareBufferNative;->downloadRgbaImage(II[B)V

    .line 860
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/w;->F:Ljava/lang/Object;

    monitor-enter p1

    .line 861
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/w;->r()V

    .line 862
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->M:[B

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    .line 863
    invoke-static {v3}, Lcom/oplus/camera/sticker/c;->a(Ljava/util/Map;)J

    move-result-wide v3

    iget v5, p0, Lcom/oplus/camera/ui/preview/a/w;->o:I

    iget v6, p0, Lcom/oplus/camera/ui/preview/a/w;->k:I

    iget v7, p0, Lcom/oplus/camera/ui/preview/a/w;->l:I

    .line 862
    invoke-virtual/range {v0 .. v7}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->humanActionDetect([BIJIII)Lcom/sensetime/stmobile/model/STHumanAction;

    move-result-object v0

    .line 865
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/a/w;->a(Lcom/sensetime/stmobile/model/STHumanAction;)V

    const-string p0, "doHumanActionDetect"

    .line 869
    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 865
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize, height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/w;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/w;->b:I

    .line 228
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/w;->c:I

    :cond_1
    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Landroid/util/Size;Z)V
    .locals 0

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;)V
    .locals 6

    .line 488
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/w;->B()V

    const-string v0, "Sticker.prepareTextures"

    .line 490
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->p:Ljava/util/ArrayList;

    const-string v2, "prepareTextures, texture id: "

    const-string v3, "StickerTexturePreview"

    if-eqz v1, :cond_1

    .line 493
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/gl/s;

    if-eqz v4, :cond_0

    .line 494
    invoke-virtual {v4}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v5

    if-nez v5, :cond_0

    .line 495
    invoke-virtual {v4, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 497
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/oplus/camera/gl/s;->e()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->q:Lcom/oplus/camera/gl/s;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v1

    if-nez v1, :cond_2

    .line 503
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->q:Lcom/oplus/camera/gl/s;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/w;->q:Lcom/oplus/camera/gl/s;

    invoke-virtual {v4}, Lcom/oplus/camera/gl/s;->e()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->r:Lcom/oplus/camera/gl/s;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v1

    if-nez v1, :cond_3

    .line 509
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->r:Lcom/oplus/camera/gl/s;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/w;->r:Lcom/oplus/camera/gl/s;

    invoke-virtual {v4}, Lcom/oplus/camera/gl/s;->e()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->s:Lcom/oplus/camera/gl/s;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v1

    if-nez v1, :cond_4

    .line 515
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->s:Lcom/oplus/camera/gl/s;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 517
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->s:Lcom/oplus/camera/gl/s;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/s;->e()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_4
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/w;->w:Lcom/oplus/camera/ui/preview/a/aa;

    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(I)Z
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->w:Lcom/oplus/camera/ui/preview/a/aa;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 761
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/w;->a_(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 765
    :cond_1
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/w;->t:Z

    if-nez p1, :cond_2

    return v1

    .line 769
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/w;->w:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/aa;->r()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/w;->w:Lcom/oplus/camera/ui/preview/a/aa;

    .line 770
    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/aa;->s()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->w:Lcom/oplus/camera/ui/preview/a/aa;

    .line 771
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/aa;->o()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/q;->b(Lcom/oplus/camera/sticker/data/StickerItem;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$a;)Z
    .locals 8

    .line 780
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v0

    const/4 v2, 0x0

    const-string v3, "StickerTexturePreview"

    if-nez p1, :cond_0

    .line 783
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "process, frameInfo: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v4, -0x1

    .line 790
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/a/w;->w:Lcom/oplus/camera/ui/preview/a/aa;

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    if-eqz v5, :cond_5

    .line 791
    iget-boolean v4, p0, Lcom/oplus/camera/ui/preview/a/w;->m:Z

    if-nez v4, :cond_2

    .line 792
    iget-boolean v4, p0, Lcom/oplus/camera/ui/preview/a/w;->u:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/w;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 793
    iput-boolean v6, p0, Lcom/oplus/camera/ui/preview/a/w;->m:Z

    goto :goto_0

    .line 795
    :cond_1
    iget-object p1, p1, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->s:Lcom/oplus/camera/gl/s;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->r:Lcom/oplus/camera/gl/s;

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/ui/preview/a/w;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Lcom/oplus/camera/gl/s;)V

    const-string p0, "process, non selected sticker!"

    .line 797
    invoke-static {v3, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 803
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/w;->K:Lcom/sensetime/stmobile/STMobileHardwareBufferNative;

    if-nez v4, :cond_3

    .line 804
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/w;->D()V

    .line 805
    new-instance v4, Lcom/sensetime/stmobile/STMobileHardwareBufferNative;

    invoke-direct {v4}, Lcom/sensetime/stmobile/STMobileHardwareBufferNative;-><init>()V

    iput-object v4, p0, Lcom/oplus/camera/ui/preview/a/w;->K:Lcom/sensetime/stmobile/STMobileHardwareBufferNative;

    .line 806
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/w;->K:Lcom/sensetime/stmobile/STMobileHardwareBufferNative;

    iget v5, p0, Lcom/oplus/camera/ui/preview/a/w;->k:I

    iget v7, p0, Lcom/oplus/camera/ui/preview/a/w;->l:I

    invoke-virtual {v4, v5, v7, v2, v6}, Lcom/sensetime/stmobile/STMobileHardwareBufferNative;->init(IIII)I

    .line 809
    iget v4, p0, Lcom/oplus/camera/ui/preview/a/w;->k:I

    iget v5, p0, Lcom/oplus/camera/ui/preview/a/w;->l:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/oplus/camera/ui/preview/a/w;->M:[B

    .line 811
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/w;->L:Lcom/sensetime/stmobile/STGLRender;

    if-nez v4, :cond_3

    .line 812
    new-instance v4, Lcom/sensetime/stmobile/STGLRender;

    invoke-direct {v4}, Lcom/sensetime/stmobile/STGLRender;-><init>()V

    iput-object v4, p0, Lcom/oplus/camera/ui/preview/a/w;->L:Lcom/sensetime/stmobile/STGLRender;

    .line 813
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/w;->L:Lcom/sensetime/stmobile/STGLRender;

    iget v5, p0, Lcom/oplus/camera/ui/preview/a/w;->b:I

    iget v7, p0, Lcom/oplus/camera/ui/preview/a/w;->c:I

    invoke-virtual {v4, v5, v7}, Lcom/sensetime/stmobile/STGLRender;->init(II)V

    .line 817
    :cond_3
    iget-object v4, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    invoke-virtual {v4}, Lcom/oplus/camera/gl/s;->e()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/oplus/camera/ui/preview/a/w;->e(I)V

    .line 818
    iget-object v4, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    invoke-direct {p0, v4}, Lcom/oplus/camera/ui/preview/a/w;->b(Lcom/oplus/camera/gl/s;)I

    move-result v4

    .line 819
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/w;->H()Lcom/oplus/camera/gl/s;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 822
    iget-object p1, p1, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    invoke-direct {p0, p1, v5}, Lcom/oplus/camera/ui/preview/a/w;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;)V

    .line 823
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/w;->r:Lcom/oplus/camera/gl/s;

    invoke-direct {p0, v4, p1}, Lcom/oplus/camera/ui/preview/a/w;->a(ILcom/oplus/camera/gl/s;)I

    move-result p0

    move v4, p0

    goto :goto_1

    .line 825
    :cond_4
    iget-object p1, p1, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/a/w;->r:Lcom/oplus/camera/gl/s;

    invoke-direct {p0, p1, v5}, Lcom/oplus/camera/ui/preview/a/w;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;)V

    :goto_1
    const-string p0, "process"

    .line 828
    invoke-static {p0}, Lcom/oplus/camera/util/k;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 830
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->w:Lcom/oplus/camera/ui/preview/a/aa;

    if-nez p0, :cond_6

    const-string p0, "process, mRequest is null"

    .line 831
    invoke-static {v3, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 836
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "process, result: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_7
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide p0

    .line 841
    invoke-static {v0, v1, p0, p1}, Lcom/oplus/camera/algovisualization/a;->a(JJ)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/ui/preview/a/w;->a:Ljava/lang/String;

    if-nez v4, :cond_8

    move v2, v6

    :cond_8
    return v2
.end method

.method public b()V
    .locals 3

    .line 951
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->N:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 953
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->N:Landroid/os/Handler;

    .line 956
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/w;->F()V

    .line 958
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->F:Ljava/lang/Object;

    monitor-enter v0

    .line 959
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_1

    .line 960
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 961
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    .line 964
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/w;->q()V

    .line 965
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(I)V
    .locals 1

    .line 123
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/w;->n:I

    .line 125
    iget p1, p0, Lcom/oplus/camera/ui/preview/a/w;->n:I

    if-eqz p1, :cond_3

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 139
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/w;->o:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 135
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/w;->o:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 131
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/w;->o:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 127
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/w;->o:I

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->N:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InitResThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 448
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->N:Landroid/os/Handler;

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->N:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/w$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/w$1;-><init>(Lcom/oplus/camera/ui/preview/a/w;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public e()V
    .locals 1

    const-string p0, "StickerTexturePreview"

    const-string v0, "destroyEngine"

    .line 108
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->s:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public g()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->r:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public h()Z
    .locals 8

    .line 266
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->w:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/aa;->o()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    .line 268
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/w;->t:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "Sticker.onPreviewEffectChanged"

    .line 274
    invoke-static {v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/w;->E()V

    const/4 v2, 0x1

    .line 278
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/w;->D:Z

    .line 280
    invoke-virtual {v0}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/a/w;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 281
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/a/w;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v3

    .line 283
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_1

    .line 284
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0

    .line 286
    :cond_1
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_0
    if-eqz v3, :cond_2

    .line 290
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 291
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/camera/sticker/b;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v6, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 295
    :cond_2
    invoke-static {v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return v2

    .line 269
    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMaterialInfos, mbTextureInited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/w;->t:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", item: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StickerTexturePreview"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public i()V
    .locals 6

    const-string v0, "StickerTexturePreview"

    const-string v1, "newTextures"

    .line 469
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Sticker.newTextures"

    .line 471
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 474
    new-instance v2, Lcom/oplus/camera/gl/s;

    iget v4, p0, Lcom/oplus/camera/ui/preview/a/w;->b:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/oplus/camera/ui/preview/a/w;->c:I

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    .line 475
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/w;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    :cond_0
    new-instance v1, Lcom/oplus/camera/gl/s;

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/w;->b:I

    iget v4, p0, Lcom/oplus/camera/ui/preview/a/w;->c:I

    invoke-direct {v1, v2, v4, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->q:Lcom/oplus/camera/gl/s;

    .line 479
    new-instance v1, Lcom/oplus/camera/gl/s;

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/w;->b:I

    iget v4, p0, Lcom/oplus/camera/ui/preview/a/w;->c:I

    invoke-direct {v1, v2, v4, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->r:Lcom/oplus/camera/gl/s;

    .line 480
    new-instance v1, Lcom/oplus/camera/gl/s;

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/w;->b:I

    iget v4, p0, Lcom/oplus/camera/ui/preview/a/w;->c:I

    invoke-direct {v1, v2, v4, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->s:Lcom/oplus/camera/gl/s;

    .line 481
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/w;->t:Z

    .line 483
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 6

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recycleTextures, mbGLInit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/w;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbTextureInited: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/w;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/w;->u:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string v0, "Sticker.eglInit"

    .line 528
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->F:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    :try_start_0
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    if-eqz v3, :cond_0

    .line 532
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    invoke-virtual {v3}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->reset()V

    .line 534
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/w;->m:Z

    .line 537
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/w;->C()V

    .line 539
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 540
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 541
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/a/w;->A:Ljava/util/Map;

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->B:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 545
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 546
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/a/w;->B:Ljava/util/Map;

    .line 549
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/w;->o()V

    .line 550
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/w;->u:Z

    const-string v0, "Sticker.eglInit"

    .line 552
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 534
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 555
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/w;->t:Z

    if-eqz v0, :cond_b

    const-string v0, "Sticker.recycleTextures"

    .line 556
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 559
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/gl/s;

    if-eqz v3, :cond_4

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recycleTextures, texture id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StickerTexturePreview"

    invoke-static {v5, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->o()V

    goto :goto_1

    .line 567
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 570
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->q:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_7

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recycleTextures, texture id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/w;->q:Lcom/oplus/camera/gl/s;

    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StickerTexturePreview"

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->q:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 574
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/a/w;->q:Lcom/oplus/camera/gl/s;

    .line 577
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->r:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_8

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recycleTextures, texture id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/w;->r:Lcom/oplus/camera/gl/s;

    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StickerTexturePreview"

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->r:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 581
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/a/w;->r:Lcom/oplus/camera/gl/s;

    .line 584
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->s:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_9

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recycleTextures, texture id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/w;->s:Lcom/oplus/camera/gl/s;

    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StickerTexturePreview"

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->s:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 588
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/a/w;->s:Lcom/oplus/camera/gl/s;

    .line 591
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->K:Lcom/sensetime/stmobile/STMobileHardwareBufferNative;

    if-eqz v0, :cond_a

    .line 592
    invoke-virtual {v0}, Lcom/sensetime/stmobile/STMobileHardwareBufferNative;->release()V

    .line 593
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/a/w;->K:Lcom/sensetime/stmobile/STMobileHardwareBufferNative;

    .line 594
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/a/w;->M:[B

    .line 596
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->L:Lcom/sensetime/stmobile/STGLRender;

    if-eqz v0, :cond_a

    .line 597
    invoke-virtual {v0}, Lcom/sensetime/stmobile/STGLRender;->destroy()V

    .line 598
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/a/w;->L:Lcom/sensetime/stmobile/STGLRender;

    .line 602
    :cond_a
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/w;->t:Z

    const-string p0, "Sticker.recycleTextures"

    .line 604
    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public m()V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->x:Lcom/sensetime/stmobile/STSoundPlayManager;

    if-eqz p0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/sensetime/stmobile/STSoundPlayManager;->pauseSound()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->x:Lcom/sensetime/stmobile/STSoundPlayManager;

    if-eqz p0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/sensetime/stmobile/STSoundPlayManager;->resumeSound()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    if-eqz v0, :cond_0

    .line 253
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/a/y$b;->a()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->H:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    const-string v0, "StickerTexturePreview"

    const-string v1, "destroyHumanAction"

    .line 900
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    if-eqz v0, :cond_0

    .line 903
    invoke-virtual {v0}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->reset()V

    .line 904
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    invoke-virtual {v0}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->destroyInstance()V

    .line 905
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    invoke-virtual {v0}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->destroyInstanceImage()V

    const/4 v0, 0x0

    .line 906
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    :cond_0
    const/4 v0, 0x0

    .line 909
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/w;->v:Z

    return-void
.end method

.method public r()V
    .locals 6

    .line 913
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    if-nez v0, :cond_1

    const-string v0, "StickerTexturePreview"

    const-string v1, "initNativeInstance"

    .line 914
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    new-instance v0, Lcom/sensetime/stmobile/STMobileHumanActionNative;

    invoke-direct {v0}, Lcom/sensetime/stmobile/STMobileHumanActionNative;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    .line 919
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    sget v1, Lcom/oplus/camera/sticker/c;->a:I

    .line 920
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "M_SenseME_Action_5.2.12.model"

    .line 919
    invoke-virtual {v0, v3, v1, v2}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->createInstanceFromAssetFile(Ljava/lang/String;ILandroid/content/res/AssetManager;)I

    move-result v0

    .line 921
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    sget v2, Lcom/oplus/camera/sticker/c;->b:I

    .line 922
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 921
    invoke-virtual {v1, v3, v2, v4}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->createInstanceImage(Ljava/lang/String;ILandroid/content/res/AssetManager;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v3, v4}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->setParam(IF)I

    .line 927
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-virtual {v0, v2, v4}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->setParam(IF)I

    .line 929
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    const/16 v4, 0x14

    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v4, v5}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->setParam(IF)I

    .line 931
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    const/4 v4, 0x3

    const-string v5, "com.oplus.sticker.support.max.face.num"

    .line 932
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    .line 931
    invoke-virtual {v0, v4, v5}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->setParam(IF)I

    :cond_0
    if-nez v1, :cond_1

    .line 936
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v3, v1}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->setParamImage(IF)I

    .line 938
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/w;->J:Lcom/sensetime/stmobile/STMobileHumanActionNative;

    const/high16 v0, 0x44200000    # 640.0f

    invoke-virtual {p0, v2, v0}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->setParamImage(IF)I

    :cond_1
    return-void
.end method
