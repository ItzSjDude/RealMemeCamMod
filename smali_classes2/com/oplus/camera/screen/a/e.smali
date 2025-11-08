.class public Lcom/oplus/camera/screen/a/e;
.super Ljava/lang/Object;
.source "ScreenSwitchController.java"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Lcom/oplus/camera/screen/a/a;

.field private c:Lcom/oplus/camera/screen/a/d;

.field private d:Landroid/content/Context;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/os/Handler;

.field private j:Lcom/oplus/camera/capmode/BaseMode;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private final m:Lcom/oplus/camera/screen/a/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/screen/a/a;)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/oplus/camera/screen/a/e;->a:Landroid/content/ContentResolver;

    .line 31
    iput-object v0, p0, Lcom/oplus/camera/screen/a/e;->b:Lcom/oplus/camera/screen/a/a;

    .line 32
    iput-object v0, p0, Lcom/oplus/camera/screen/a/e;->c:Lcom/oplus/camera/screen/a/d;

    .line 33
    iput-object v0, p0, Lcom/oplus/camera/screen/a/e;->d:Landroid/content/Context;

    const/4 v1, 0x1

    .line 34
    iput v1, p0, Lcom/oplus/camera/screen/a/e;->e:I

    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lcom/oplus/camera/screen/a/e;->f:I

    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/oplus/camera/screen/a/e;->g:I

    .line 37
    sget v2, Lcom/oplus/camera/util/Util;->i:I

    iput v2, p0, Lcom/oplus/camera/screen/a/e;->h:I

    .line 39
    iput-object v0, p0, Lcom/oplus/camera/screen/a/e;->i:Landroid/os/Handler;

    .line 40
    iput-object v0, p0, Lcom/oplus/camera/screen/a/e;->j:Lcom/oplus/camera/capmode/BaseMode;

    .line 41
    iput-object v0, p0, Lcom/oplus/camera/screen/a/e;->k:Ljava/util/ArrayList;

    .line 42
    iput-boolean v1, p0, Lcom/oplus/camera/screen/a/e;->l:Z

    .line 44
    new-instance v0, Lcom/oplus/camera/screen/a/e$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/screen/a/e$1;-><init>(Lcom/oplus/camera/screen/a/e;)V

    iput-object v0, p0, Lcom/oplus/camera/screen/a/e;->m:Lcom/oplus/camera/screen/a/a$a;

    .line 68
    iput-object p1, p0, Lcom/oplus/camera/screen/a/e;->d:Landroid/content/Context;

    .line 69
    invoke-direct {p0, p2}, Lcom/oplus/camera/screen/a/e;->a(Lcom/oplus/camera/screen/a/a;)V

    .line 70
    iget-object p1, p0, Lcom/oplus/camera/screen/a/e;->m:Lcom/oplus/camera/screen/a/a$a;

    invoke-static {p1}, Lcom/oplus/camera/screen/FolderAngleDetectService;->a(Lcom/oplus/camera/screen/a/a$a;)V

    .line 72
    new-instance p1, Lcom/oplus/camera/screen/a/e$2;

    invoke-direct {p1, p0}, Lcom/oplus/camera/screen/a/e$2;-><init>(Lcom/oplus/camera/screen/a/e;)V

    iput-object p1, p0, Lcom/oplus/camera/screen/a/e;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/screen/a/e;I)I
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/a/e;->e(I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/screen/a/e;)Landroid/os/Handler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oplus/camera/screen/a/e;->i:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Lcom/oplus/camera/screen/a/a;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/oplus/camera/screen/a/e;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/screen/a/e;->a:Landroid/content/ContentResolver;

    .line 107
    new-instance v0, Lcom/oplus/camera/screen/a/d;

    invoke-direct {v0}, Lcom/oplus/camera/screen/a/d;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/screen/a/e;->c:Lcom/oplus/camera/screen/a/d;

    .line 108
    iput-object p1, p0, Lcom/oplus/camera/screen/a/e;->b:Lcom/oplus/camera/screen/a/a;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/screen/a/e;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/oplus/camera/screen/a/e;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/screen/a/e;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/oplus/camera/screen/a/e;->h:I

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/screen/a/e;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/oplus/camera/screen/a/e;->h:I

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/screen/a/e;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/oplus/camera/screen/a/e;->e:I

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/screen/a/e;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/oplus/camera/screen/a/e;->f:I

    return p0
.end method

.method private e(I)I
    .locals 0

    const/16 p0, 0x3c

    if-ge p1, p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/16 p0, 0x96

    if-ge p1, p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/screen/a/e;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/oplus/camera/screen/a/e;->g:I

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/screen/a/e;)Lcom/oplus/camera/screen/a/d;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oplus/camera/screen/a/e;->c:Lcom/oplus/camera/screen/a/d;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/screen/a/e;)Lcom/oplus/camera/screen/a/a;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oplus/camera/screen/a/e;->b:Lcom/oplus/camera/screen/a/a;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/screen/a/e;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/oplus/camera/screen/a/e;->l:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/screen/a/e;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 242
    iput-object v1, p0, Lcom/oplus/camera/screen/a/e;->i:Landroid/os/Handler;

    .line 245
    :cond_0
    iput-object v1, p0, Lcom/oplus/camera/screen/a/e;->d:Landroid/content/Context;

    .line 247
    iget-object p0, p0, Lcom/oplus/camera/screen/a/e;->m:Lcom/oplus/camera/screen/a/a$a;

    invoke-static {p0}, Lcom/oplus/camera/screen/FolderAngleDetectService;->b(Lcom/oplus/camera/screen/a/a$a;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation, mOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/screen/a/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenSwitchController"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/oplus/camera/screen/a/e;->f:I

    if-eq p1, v0, :cond_2

    .line 115
    iput p1, p0, Lcom/oplus/camera/screen/a/e;->f:I

    const/4 p1, 0x2

    .line 117
    iget v0, p0, Lcom/oplus/camera/screen/a/e;->e:I

    if-eq p1, v0, :cond_1

    const/4 p1, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->f()V

    .line 124
    iget-object p1, p0, Lcom/oplus/camera/screen/a/e;->i:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 125
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x66

    .line 126
    iput v0, p1, Landroid/os/Message;->what:I

    .line 127
    iget-object p0, p0, Lcom/oplus/camera/screen/a/e;->i:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 119
    :cond_1
    :goto_0
    iget p1, p0, Lcom/oplus/camera/screen/a/e;->f:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/a/e;->c(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(IIZZ)V
    .locals 7

    if-nez p4, :cond_0

    .line 193
    iget-boolean v0, p0, Lcom/oplus/camera/screen/a/e;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 199
    :cond_0
    sget v0, Lcom/oplus/camera/util/Util;->i:I

    iput v0, p0, Lcom/oplus/camera/screen/a/e;->h:I

    .line 201
    iget-object v0, p0, Lcom/oplus/camera/screen/a/e;->j:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getLockedScreenMode()Lcom/oplus/camera/screen/f$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    iget-object p1, p0, Lcom/oplus/camera/screen/a/e;->b:Lcom/oplus/camera/screen/a/a;

    iget-object p0, p0, Lcom/oplus/camera/screen/a/e;->j:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getLockedScreenMode()Lcom/oplus/camera/screen/f$a;

    move-result-object p0

    invoke-interface {p1, p0, p4, p3}, Lcom/oplus/camera/screen/a/a;->b(Lcom/oplus/camera/screen/f$a;ZZ)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/screen/a/e;->b:Lcom/oplus/camera/screen/a/a;

    iget-object v1, p0, Lcom/oplus/camera/screen/a/e;->c:Lcom/oplus/camera/screen/a/d;

    sget v3, Lcom/oplus/camera/util/Util;->i:I

    const/4 v6, 0x0

    move v2, p1

    move v4, p2

    move v5, p3

    .line 205
    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/screen/a/d;->a(IIIZZ)Lcom/oplus/camera/screen/f$a;

    move-result-object p0

    .line 204
    invoke-interface {v0, p0, p4, p3}, Lcom/oplus/camera/screen/a/a;->b(Lcom/oplus/camera/screen/f$a;ZZ)V

    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/capmode/BaseMode;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/screen/a/e;->j:Lcom/oplus/camera/capmode/BaseMode;

    if-eq v0, p1, :cond_6

    const/4 v0, 0x2

    iget v1, p0, Lcom/oplus/camera/screen/a/e;->e:I

    if-eq v0, v1, :cond_6

    const/4 v0, 0x3

    if-eq v0, v1, :cond_6

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCapMode, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenSwitchController"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lcom/oplus/camera/screen/a/e;->j:Lcom/oplus/camera/capmode/BaseMode;

    .line 154
    iget-object v0, p0, Lcom/oplus/camera/screen/a/e;->b:Lcom/oplus/camera/screen/a/a;

    invoke-interface {v0, p1}, Lcom/oplus/camera/screen/a/a;->a(Lcom/oplus/camera/capmode/BaseMode;)V

    .line 155
    iget-object v0, p0, Lcom/oplus/camera/screen/a/e;->b:Lcom/oplus/camera/screen/a/a;

    invoke-interface {v0}, Lcom/oplus/camera/screen/a/a;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    .line 156
    iget-object v2, p0, Lcom/oplus/camera/screen/a/e;->b:Lcom/oplus/camera/screen/a/a;

    invoke-interface {v2}, Lcom/oplus/camera/screen/a/a;->i()Lcom/oplus/camera/screen/f$a;

    move-result-object v2

    .line 157
    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->c()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/camera/screen/a/e;->k:Ljava/util/ArrayList;

    .line 159
    iget-object v3, p0, Lcom/oplus/camera/screen/a/e;->k:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    return-void

    .line 163
    :cond_1
    iget v3, p0, Lcom/oplus/camera/screen/a/e;->f:I

    invoke-virtual {p1, v3}, Lcom/oplus/camera/capmode/BaseMode;->getPreferredScreenMode(I)Lcom/oplus/camera/screen/f$a;

    move-result-object v3

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCapMode, preferredScreenMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v4, p0, Lcom/oplus/camera/screen/a/e;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    sget-object p1, Lcom/oplus/camera/screen/f$a;->common:Lcom/oplus/camera/screen/f$a;

    if-ne p1, v3, :cond_3

    .line 169
    :cond_2
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/oplus/camera/screen/f$a;->out:Lcom/oplus/camera/screen/f$a;

    if-ne p1, v2, :cond_4

    .line 170
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCapMode, notifyFolderChange, preferredScreenMode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iput-boolean v5, p0, Lcom/oplus/camera/screen/a/e;->l:Z

    .line 173
    iget-object p0, p0, Lcom/oplus/camera/screen/a/e;->b:Lcom/oplus/camera/screen/a/a;

    invoke-interface {p0, v3, v4, v5}, Lcom/oplus/camera/screen/a/a;->b(Lcom/oplus/camera/screen/f$a;ZZ)V

    return-void

    .line 177
    :cond_4
    iget-boolean p1, p0, Lcom/oplus/camera/screen/a/e;->l:Z

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->o()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 181
    :cond_5
    iget-object v6, p0, Lcom/oplus/camera/screen/a/e;->c:Lcom/oplus/camera/screen/a/d;

    iget v7, p0, Lcom/oplus/camera/screen/a/e;->f:I

    sget v8, Lcom/oplus/camera/util/Util;->i:I

    iget v9, p0, Lcom/oplus/camera/screen/a/e;->g:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/oplus/camera/screen/a/d;->a(IIIZZ)Lcom/oplus/camera/screen/f$a;

    move-result-object p1

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/screen/a/e;->b:Lcom/oplus/camera/screen/a/a;

    invoke-interface {v0}, Lcom/oplus/camera/screen/a/a;->i()Lcom/oplus/camera/screen/f$a;

    move-result-object v0

    if-eq p1, v0, :cond_6

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCapMode, targetScreenMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object p0, p0, Lcom/oplus/camera/screen/a/e;->b:Lcom/oplus/camera/screen/a/a;

    invoke-interface {p0, p1, v4, v5}, Lcom/oplus/camera/screen/a/a;->b(Lcom/oplus/camera/screen/f$a;ZZ)V

    :cond_6
    return-void
.end method

.method public a(Lcom/oplus/camera/screen/f$a;)V
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/oplus/camera/screen/a/e;->c:Lcom/oplus/camera/screen/a/d;

    iput-object p1, p0, Lcom/oplus/camera/screen/a/d;->b:Lcom/oplus/camera/screen/f$a;

    .line 252
    iput-object p1, p0, Lcom/oplus/camera/screen/a/d;->a:Lcom/oplus/camera/screen/f$a;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .line 273
    invoke-static {p1}, Lcom/oplus/camera/screen/f$a;->valueOf(Ljava/lang/String;)Lcom/oplus/camera/screen/f$a;

    move-result-object p1

    .line 275
    iget-object v0, p0, Lcom/oplus/camera/screen/a/e;->c:Lcom/oplus/camera/screen/a/d;

    iget v1, p0, Lcom/oplus/camera/screen/a/e;->f:I

    sget v2, Lcom/oplus/camera/util/Util;->i:I

    iget v3, p0, Lcom/oplus/camera/screen/a/e;->g:I

    .line 276
    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/screen/a/d;->a(III)Lcom/oplus/camera/screen/f$a;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 278
    :goto_0
    iget-boolean p0, p0, Lcom/oplus/camera/screen/a/e;->l:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/oplus/camera/screen/f$a;->left:Lcom/oplus/camera/screen/f$a;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/oplus/camera/screen/f$a;->right:Lcom/oplus/camera/screen/f$a;

    if-ne p1, p0, :cond_2

    :cond_1
    move p0, v1

    goto :goto_1

    :cond_2
    move p0, v2

    .line 282
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfScreenModeNeedChange, needChange: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", needLock: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ScreenSwitchController"

    invoke-static {v3, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public b()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/oplus/camera/screen/a/e;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 257
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 258
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x65

    .line 259
    iput v1, v0, Landroid/os/Message;->what:I

    .line 260
    iget-object p0, p0, Lcom/oplus/camera/screen/a/e;->i:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 132
    iget v0, p0, Lcom/oplus/camera/screen/a/e;->g:I

    if-eq v0, p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCameraId, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/screen/a/e;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenSwitchController"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iput p1, p0, Lcom/oplus/camera/screen/a/e;->g:I

    .line 136
    iget-object p1, p0, Lcom/oplus/camera/screen/a/e;->i:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x67

    .line 138
    iput v0, p1, Landroid/os/Message;->what:I

    .line 139
    iget-object p0, p0, Lcom/oplus/camera/screen/a/e;->i:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public c()I
    .locals 0

    .line 265
    iget p0, p0, Lcom/oplus/camera/screen/a/e;->f:I

    return p0
.end method

.method public c(I)V
    .locals 2

    .line 210
    sget-object v0, Lcom/oplus/camera/screen/f$a;->common:Lcom/oplus/camera/screen/f$a;

    .line 212
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 213
    sget-object p1, Lcom/oplus/camera/screen/f$a;->common:Lcom/oplus/camera/screen/f$a;

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    sget-object p1, Lcom/oplus/camera/screen/f$a;->out:Lcom/oplus/camera/screen/f$a;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 217
    sget-object p1, Lcom/oplus/camera/screen/f$a;->full:Lcom/oplus/camera/screen/f$a;

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a

    if-ne v0, p1, :cond_3

    .line 219
    sget-object p1, Lcom/oplus/camera/screen/f$a;->full270:Lcom/oplus/camera/screen/f$a;

    goto :goto_0

    :cond_3
    const/16 v0, 0x10e

    if-ne v0, p1, :cond_4

    .line 221
    sget-object p1, Lcom/oplus/camera/screen/f$a;->full90:Lcom/oplus/camera/screen/f$a;

    goto :goto_0

    .line 223
    :cond_4
    sget-object p1, Lcom/oplus/camera/screen/f$a;->full:Lcom/oplus/camera/screen/f$a;

    .line 226
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/screen/a/e;->b:Lcom/oplus/camera/screen/a/a;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, v0}, Lcom/oplus/camera/screen/a/a;->b(Lcom/oplus/camera/screen/f$a;ZZ)V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/oplus/camera/screen/a/e;->e:I

    return-void
.end method
