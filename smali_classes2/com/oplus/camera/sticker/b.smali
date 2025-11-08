.class public Lcom/oplus/camera/sticker/b;
.super Ljava/lang/Object;
.source "MaterailInfo.java"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lcom/sensetime/stmobile/STMobileStickerNative;

.field private c:Lcom/sensetime/stmobile/model/STHumanAction;

.field private d:Lcom/sensetime/stmobile/model/STHumanAction;

.field private e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/sensetime/stmobile/model/STHumanAction;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Lcom/oplus/camera/gl/s;

.field private h:I

.field private i:Landroid/util/Size;

.field private j:F

.field private k:F

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/sticker/b;->a:Ljava/lang/Object;

    .line 19
    new-instance v0, Lcom/sensetime/stmobile/STMobileStickerNative;

    invoke-direct {v0}, Lcom/sensetime/stmobile/STMobileStickerNative;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/sticker/b;->b:Lcom/sensetime/stmobile/STMobileStickerNative;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/oplus/camera/sticker/b;->c:Lcom/sensetime/stmobile/model/STHumanAction;

    .line 21
    iput-object v0, p0, Lcom/oplus/camera/sticker/b;->d:Lcom/sensetime/stmobile/model/STHumanAction;

    .line 22
    iput-object v0, p0, Lcom/oplus/camera/sticker/b;->e:Ljava/util/LinkedHashMap;

    const-wide/16 v1, 0x0

    .line 23
    iput-wide v1, p0, Lcom/oplus/camera/sticker/b;->f:J

    .line 24
    iput-object v0, p0, Lcom/oplus/camera/sticker/b;->g:Lcom/oplus/camera/gl/s;

    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lcom/oplus/camera/sticker/b;->h:I

    .line 26
    iput-object v0, p0, Lcom/oplus/camera/sticker/b;->i:Landroid/util/Size;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    iput v0, p0, Lcom/oplus/camera/sticker/b;->j:F

    .line 28
    iput v0, p0, Lcom/oplus/camera/sticker/b;->k:F

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/oplus/camera/sticker/b;->l:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/sensetime/stmobile/STMobileStickerNative;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oplus/camera/sticker/b;->b:Lcom/sensetime/stmobile/STMobileStickerNative;

    return-object p0
.end method

.method public a(F)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/oplus/camera/sticker/b;->j:F

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 120
    iput-wide p1, p0, Lcom/oplus/camera/sticker/b;->f:J

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/s;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/oplus/camera/sticker/b;->g:Lcom/oplus/camera/gl/s;

    return-void
.end method

.method public a(Lcom/sensetime/stmobile/model/STHumanAction;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/oplus/camera/sticker/b;->c:Lcom/sensetime/stmobile/model/STHumanAction;

    return-void
.end method

.method public b()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/oplus/camera/sticker/b;->f:J

    return-wide v0
.end method

.method public b(F)Lcom/sensetime/stmobile/model/STHumanAction;
    .locals 1

    .line 100
    iget v0, p0, Lcom/oplus/camera/sticker/b;->j:F

    div-float/2addr p1, v0

    iget-object p0, p0, Lcom/oplus/camera/sticker/b;->c:Lcom/sensetime/stmobile/model/STHumanAction;

    invoke-static {p1, p0}, Lcom/sensetime/stmobile/model/STHumanAction;->humanActionResize(FLcom/sensetime/stmobile/model/STHumanAction;)Lcom/sensetime/stmobile/model/STHumanAction;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sensetime/stmobile/model/STHumanAction;)V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/oplus/camera/sticker/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/sticker/b;->e:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/sticker/b;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/oplus/camera/sticker/b;->l:Z

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/oplus/camera/sticker/b;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 61
    iget-object v3, p0, Lcom/oplus/camera/sticker/b;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 62
    iget-object p0, p0, Lcom/oplus/camera/sticker/b;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "MaterialInfo"

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewSTHumanActionForCheck, timeStamp: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/oplus/camera/sticker/b;->g:Lcom/oplus/camera/gl/s;

    return-object p0
.end method
