.class public Lcom/oplus/camera/screen/a/b;
.super Ljava/lang/Object;
.source "OutCaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/screen/a/b$b;,
        Lcom/oplus/camera/screen/a/b$a;,
        Lcom/oplus/camera/screen/a/b$c;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z


# instance fields
.field private c:Lcom/oplus/camera/ui/OutCaptureGuideView;

.field private d:Lcom/oplus/camera/screen/out/c;

.field private e:Lcom/oplus/camera/screen/out/f;

.field private f:Lcom/oplus/camera/screen/a/a$a;

.field private g:Lcom/oplus/camera/screen/a/b$b;

.field private h:Landroid/os/Handler;

.field private i:Lcom/oplus/camera/screen/a/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/oplus/camera/screen/a/b;->c:Lcom/oplus/camera/ui/OutCaptureGuideView;

    .line 35
    iput-object v0, p0, Lcom/oplus/camera/screen/a/b;->d:Lcom/oplus/camera/screen/out/c;

    .line 36
    iput-object v0, p0, Lcom/oplus/camera/screen/a/b;->e:Lcom/oplus/camera/screen/out/f;

    .line 37
    iput-object v0, p0, Lcom/oplus/camera/screen/a/b;->f:Lcom/oplus/camera/screen/a/a$a;

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/screen/a/b;->g:Lcom/oplus/camera/screen/a/b$b;

    .line 39
    iput-object v0, p0, Lcom/oplus/camera/screen/a/b;->h:Landroid/os/Handler;

    .line 40
    sget-object v0, Lcom/oplus/camera/screen/a/b$c;->idle:Lcom/oplus/camera/screen/a/b$c;

    iput-object v0, p0, Lcom/oplus/camera/screen/a/b;->i:Lcom/oplus/camera/screen/a/b$c;

    .line 43
    new-instance v0, Lcom/oplus/camera/screen/a/b$a;

    invoke-direct {v0, p0}, Lcom/oplus/camera/screen/a/b$a;-><init>(Lcom/oplus/camera/screen/a/b;)V

    iput-object v0, p0, Lcom/oplus/camera/screen/a/b;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/screen/a/b;)Lcom/oplus/camera/screen/a/b$c;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/screen/a/b;->i:Lcom/oplus/camera/screen/a/b$c;

    return-object p0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 5

    const-string v0, "OutCaptureManager"

    const-string v1, "showReEntryPresentation"

    .line 84
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v3, v4, v1, v2}, Lcom/oplus/camera/util/e;->a(IZJ)V

    const-string v1, "display"

    .line 87
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const/16 v2, 0x1000

    .line 88
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 89
    new-instance v2, Lcom/oplus/camera/screen/out/f;

    invoke-direct {v2, p1, v1}, Lcom/oplus/camera/screen/out/f;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v2, p0, Lcom/oplus/camera/screen/a/b;->e:Lcom/oplus/camera/screen/out/f;

    .line 90
    iget-object p1, p0, Lcom/oplus/camera/screen/a/b;->e:Lcom/oplus/camera/screen/out/f;

    new-instance v1, Lcom/oplus/camera/screen/a/-$$Lambda$b$nGdUUjD7cF6fHgRHnT8tfiO39MU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/screen/a/-$$Lambda$b$nGdUUjD7cF6fHgRHnT8tfiO39MU;-><init>(Lcom/oplus/camera/screen/a/b;)V

    invoke-virtual {p1, v1}, Lcom/oplus/camera/screen/out/f;->a(Lcom/oplus/camera/screen/out/f$a;)V

    .line 97
    iget-object p0, p0, Lcom/oplus/camera/screen/a/b;->e:Lcom/oplus/camera/screen/out/f;

    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/f;->show()V

    const-string p0, "showReEntryPresentation X"

    .line 99
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;I)V
    .locals 6

    .line 119
    iget-object v0, p0, Lcom/oplus/camera/screen/a/b;->i:Lcom/oplus/camera/screen/a/b$c;

    sget-object v1, Lcom/oplus/camera/screen/a/b$c;->guide:Lcom/oplus/camera/screen/a/b$c;

    const/4 v2, 0x0

    const/16 v3, 0x1e

    const-string v4, "OutCaptureManager"

    const/4 v5, 0x1

    if-ne v0, v1, :cond_0

    if-le p2, v3, :cond_3

    const-string p2, "onEvent, to expand"

    .line 121
    invoke-static {v4, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object p2, Lcom/oplus/camera/screen/a/b$c;->expand:Lcom/oplus/camera/screen/a/b$c;

    iput-object p2, p0, Lcom/oplus/camera/screen/a/b;->i:Lcom/oplus/camera/screen/a/b$c;

    .line 124
    invoke-direct {p0, p1, v2}, Lcom/oplus/camera/screen/a/b;->a(Landroid/app/Activity;Z)V

    .line 125
    invoke-direct {p0, v5}, Lcom/oplus/camera/screen/a/b;->a(Z)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/screen/a/b;->i:Lcom/oplus/camera/screen/a/b$c;

    sget-object v0, Lcom/oplus/camera/screen/a/b$c;->expand:Lcom/oplus/camera/screen/a/b$c;

    if-ne p1, v0, :cond_3

    const/16 p1, 0xa

    if-ge p2, p1, :cond_1

    .line 128
    invoke-static {}, Lcom/oplus/camera/screen/a/b;->g()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "onEvent, to idle"

    .line 129
    invoke-static {v4, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/oplus/camera/screen/a/b;->b()V

    .line 132
    invoke-direct {p0, v2}, Lcom/oplus/camera/screen/a/b;->a(Z)V

    goto :goto_0

    :cond_1
    if-ge p2, v3, :cond_2

    const-string p1, "onEvent, send msg"

    .line 134
    invoke-static {v4, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/oplus/camera/screen/a/b;->h:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    iget-object p0, p0, Lcom/oplus/camera/screen/a/b;->h:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 139
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/screen/a/b;->h:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Landroid/app/Activity;Z)V
    .locals 5

    const-string v0, "OutCaptureManager"

    const-string v1, "showPresentation"

    .line 103
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v4, v1, v2}, Lcom/oplus/camera/util/e;->a(IZJ)V

    const-string v1, "display"

    .line 106
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const/16 v2, 0x1000

    .line 107
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 108
    new-instance v2, Lcom/oplus/camera/screen/out/c;

    invoke-direct {v2, p1, v1}, Lcom/oplus/camera/screen/out/c;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v2, p0, Lcom/oplus/camera/screen/a/b;->d:Lcom/oplus/camera/screen/out/c;

    .line 109
    iget-object p1, p0, Lcom/oplus/camera/screen/a/b;->d:Lcom/oplus/camera/screen/out/c;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/screen/out/c;->a(Z)V

    .line 110
    iget-object p1, p0, Lcom/oplus/camera/screen/a/b;->d:Lcom/oplus/camera/screen/out/c;

    new-instance p2, Lcom/oplus/camera/screen/a/-$$Lambda$b$wgPYxMIY-NcZGFN6D4UFh5gAoQo;

    invoke-direct {p2, p0}, Lcom/oplus/camera/screen/a/-$$Lambda$b$wgPYxMIY-NcZGFN6D4UFh5gAoQo;-><init>(Lcom/oplus/camera/screen/a/b;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/screen/out/c;->a(Lcom/oplus/camera/screen/out/c$a;)V

    .line 111
    iget-object p0, p0, Lcom/oplus/camera/screen/a/b;->d:Lcom/oplus/camera/screen/out/c;

    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/c;->show()V

    const-string p0, "showPresentation X"

    .line 113
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/screen/a/b;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/a/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/oplus/camera/screen/a/b;->k()V

    .line 167
    iget-object p0, p0, Lcom/oplus/camera/screen/a/b;->g:Lcom/oplus/camera/screen/a/b$b;

    if-eqz p0, :cond_0

    .line 168
    invoke-interface {p0, p1}, Lcom/oplus/camera/screen/a/b$b;->a(Z)V

    :cond_0
    return-void
.end method

.method private b(Landroid/app/Activity;)Lcom/oplus/camera/screen/a/a$a;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/oplus/camera/screen/a/b;->f:Lcom/oplus/camera/screen/a/a$a;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/oplus/camera/screen/a/-$$Lambda$b$S0HKtrgJhum0svMeZDFkvxA2Hf0;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/screen/a/-$$Lambda$b$S0HKtrgJhum0svMeZDFkvxA2Hf0;-><init>(Lcom/oplus/camera/screen/a/b;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/oplus/camera/screen/a/b;->f:Lcom/oplus/camera/screen/a/a$a;

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/screen/a/b;->f:Lcom/oplus/camera/screen/a/a$a;

    return-object p0
.end method

.method private c(Landroid/app/Activity;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/oplus/camera/screen/a/b;->c:Lcom/oplus/camera/ui/OutCaptureGuideView;

    if-nez v0, :cond_0

    const v0, 0x7f0900a8

    .line 227
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 228
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0c012d

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0902a1

    .line 229
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/OutCaptureGuideView;

    iput-object p1, p0, Lcom/oplus/camera/screen/a/b;->c:Lcom/oplus/camera/ui/OutCaptureGuideView;

    .line 230
    iget-object p1, p0, Lcom/oplus/camera/screen/a/b;->c:Lcom/oplus/camera/ui/OutCaptureGuideView;

    new-instance v0, Lcom/oplus/camera/screen/a/-$$Lambda$EpeFfsufbbAxvy7Q9ggJfyHahMs;

    invoke-direct {v0, p0}, Lcom/oplus/camera/screen/a/-$$Lambda$EpeFfsufbbAxvy7Q9ggJfyHahMs;-><init>(Lcom/oplus/camera/screen/a/b;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/OutCaptureGuideView;->setListener(Lcom/oplus/camera/ui/OutCaptureGuideView$a;)V

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/screen/a/b;->c:Lcom/oplus/camera/ui/OutCaptureGuideView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OutCaptureGuideView;->a()V

    return-void
.end method

.method public static g()Z
    .locals 3

    .line 264
    invoke-static {}, Lcom/oplus/camera/util/Util;->h()I

    move-result v0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIntentOutCapture, foldStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OutCaptureManager"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static h()Z
    .locals 2

    .line 276
    sget-boolean v0, Lcom/oplus/camera/screen/a/b;->b:Z

    const/4 v1, 0x0

    .line 277
    sput-boolean v1, Lcom/oplus/camera/screen/a/b;->b:Z

    return v0
.end method

.method public static i()Z
    .locals 2

    .line 286
    sget-boolean v0, Lcom/oplus/camera/screen/a/b;->a:Z

    const/4 v1, 0x0

    .line 287
    sput-boolean v1, Lcom/oplus/camera/screen/a/b;->a:Z

    return v0
.end method

.method private j()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/oplus/camera/screen/a/b;->d:Lcom/oplus/camera/screen/out/c;

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0}, Lcom/oplus/camera/screen/out/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/oplus/camera/screen/a/b;->d:Lcom/oplus/camera/screen/out/c;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/out/c;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/oplus/camera/screen/a/b;->d:Lcom/oplus/camera/screen/out/c;

    :cond_1
    return-void
.end method

.method private k()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/oplus/camera/screen/a/b;->c:Lcom/oplus/camera/ui/OutCaptureGuideView;

    if-eqz v0, :cond_0

    const-string v0, "OutCaptureManager"

    const-string v1, "hideOutCaptureGuide"

    .line 238
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object p0, p0, Lcom/oplus/camera/screen/a/b;->c:Lcom/oplus/camera/ui/OutCaptureGuideView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OutCaptureGuideView;->b()V

    :cond_0
    return-void
.end method

.method private synthetic l()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/screen/a/b;->a(ZZ)V

    return-void
.end method

.method public static synthetic lambda$S0HKtrgJhum0svMeZDFkvxA2Hf0(Lcom/oplus/camera/screen/a/b;Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/screen/a/b;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public static synthetic lambda$nGdUUjD7cF6fHgRHnT8tfiO39MU(Lcom/oplus/camera/screen/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/screen/a/b;->m()V

    return-void
.end method

.method public static synthetic lambda$wgPYxMIY-NcZGFN6D4UFh5gAoQo(Lcom/oplus/camera/screen/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/screen/a/b;->l()V

    return-void
.end method

.method private synthetic m()V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/oplus/camera/screen/a/b;->a()V

    .line 93
    iget-object p0, p0, Lcom/oplus/camera/screen/a/b;->g:Lcom/oplus/camera/screen/a/b$b;

    if-eqz p0, :cond_0

    .line 94
    invoke-interface {p0}, Lcom/oplus/camera/screen/a/b$b;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "OutCaptureManager"

    const-string v1, "checkHideReEntry"

    .line 173
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/oplus/camera/screen/a/b;->e:Lcom/oplus/camera/screen/out/f;

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {v1}, Lcom/oplus/camera/screen/out/f;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/oplus/camera/screen/a/b;->e:Lcom/oplus/camera/screen/out/f;

    invoke-virtual {v1}, Lcom/oplus/camera/screen/out/f;->dismiss()V

    :cond_0
    const/4 v1, 0x0

    .line 180
    iput-object v1, p0, Lcom/oplus/camera/screen/a/b;->e:Lcom/oplus/camera/screen/out/f;

    const/4 p0, -0x1

    const/4 v1, 0x0

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lcom/oplus/camera/util/e;->a(IZJ)V

    :cond_1
    const-string p0, "checkHideReEntry X"

    .line 185
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/oplus/camera/screen/a/b$b;)V
    .locals 4

    const-string v0, "OutCaptureManager"

    const-string v1, "requestDeviceFolded"

    .line 47
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcom/oplus/camera/screen/a/b;->g:Lcom/oplus/camera/screen/a/b$b;

    .line 51
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string p2, "requestDeviceFolded, show guide"

    .line 52
    invoke-static {v0, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/a/b;->c(Landroid/app/Activity;)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v1, v2, v3}, Lcom/oplus/camera/util/e;->a(IZJ)V

    .line 56
    sget-object p2, Lcom/oplus/camera/screen/a/b$c;->guide:Lcom/oplus/camera/screen/a/b$c;

    iput-object p2, p0, Lcom/oplus/camera/screen/a/b;->i:Lcom/oplus/camera/screen/a/b$c;

    .line 57
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/a/b;->b(Landroid/app/Activity;)Lcom/oplus/camera/screen/a/a$a;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/screen/FolderAngleDetectService;->a(Lcom/oplus/camera/screen/a/a$a;)V

    goto :goto_0

    :cond_0
    const-string p0, "requestDeviceFolded, without guide"

    .line 59
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {v1, v1, p0, p1}, Lcom/oplus/camera/util/e;->a(IZJ)V

    :goto_0
    const-string p0, "requestDeviceFolded X"

    .line 64
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    const-string v0, "OutCaptureManager"

    const-string v1, "checkHideOutCapture"

    .line 199
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sput-boolean p1, Lcom/oplus/camera/screen/a/b;->b:Z

    .line 202
    sput-boolean p2, Lcom/oplus/camera/screen/a/b;->a:Z

    .line 204
    sget-object p1, Lcom/oplus/camera/screen/a/b$c;->idle:Lcom/oplus/camera/screen/a/b$c;

    iput-object p1, p0, Lcom/oplus/camera/screen/a/b;->i:Lcom/oplus/camera/screen/a/b$c;

    .line 205
    invoke-direct {p0}, Lcom/oplus/camera/screen/a/b;->k()V

    .line 207
    invoke-direct {p0}, Lcom/oplus/camera/screen/a/b;->j()V

    .line 209
    iget-object p0, p0, Lcom/oplus/camera/screen/a/b;->f:Lcom/oplus/camera/screen/a/a$a;

    invoke-static {p0}, Lcom/oplus/camera/screen/FolderAngleDetectService;->b(Lcom/oplus/camera/screen/a/a$a;)V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const/4 p2, -0x1

    const/4 v1, 0x0

    invoke-static {p2, v1, p0, p1}, Lcom/oplus/camera/util/e;->a(IZJ)V

    const-string p0, "checkHideOutCapture X"

    .line 212
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/screen/a/b;->a(ZZ)V

    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/oplus/camera/screen/a/b$b;)V
    .locals 2

    const-string v0, "OutCaptureManager"

    const-string v1, "checkIntent"

    .line 68
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput-object p2, p0, Lcom/oplus/camera/screen/a/b;->g:Lcom/oplus/camera/screen/a/b$b;

    .line 72
    invoke-static {}, Lcom/oplus/camera/screen/a/b;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 73
    sget-object p2, Lcom/oplus/camera/screen/a/b$c;->expand:Lcom/oplus/camera/screen/a/b$c;

    iput-object p2, p0, Lcom/oplus/camera/screen/a/b;->i:Lcom/oplus/camera/screen/a/b$c;

    const/4 p2, 0x1

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/screen/a/b;->a(Landroid/app/Activity;Z)V

    .line 75
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/a/b;->b(Landroid/app/Activity;)Lcom/oplus/camera/screen/a/a$a;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/screen/FolderAngleDetectService;->a(Lcom/oplus/camera/screen/a/a$a;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Lcom/oplus/camera/screen/a/b;->i()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 77
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/a/b;->a(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    const-string p0, "checkIntent X"

    .line 80
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/screen/a/b;->f:Lcom/oplus/camera/screen/a/a$a;

    invoke-static {v0}, Lcom/oplus/camera/screen/FolderAngleDetectService;->b(Lcom/oplus/camera/screen/a/a$a;)V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/oplus/camera/screen/a/b;->f:Lcom/oplus/camera/screen/a/a$a;

    .line 195
    iget-object p0, p0, Lcom/oplus/camera/screen/a/b;->h:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause, mStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/screen/a/b;->i:Lcom/oplus/camera/screen/a/b$c;

    invoke-virtual {v1}, Lcom/oplus/camera/screen/a/b$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OutCaptureManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/oplus/camera/screen/a/b;->i:Lcom/oplus/camera/screen/a/b$c;

    sget-object v1, Lcom/oplus/camera/screen/a/b$c;->guide:Lcom/oplus/camera/screen/a/b$c;

    if-ne v0, v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/oplus/camera/screen/a/b;->b()V

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/screen/a/b;->j()V

    .line 252
    invoke-virtual {p0}, Lcom/oplus/camera/screen/a/b;->a()V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 256
    iget-object p0, p0, Lcom/oplus/camera/screen/a/b;->i:Lcom/oplus/camera/screen/a/b$c;

    sget-object v0, Lcom/oplus/camera/screen/a/b$c;->expand:Lcom/oplus/camera/screen/a/b$c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()Z
    .locals 1

    .line 260
    iget-object p0, p0, Lcom/oplus/camera/screen/a/b;->i:Lcom/oplus/camera/screen/a/b$c;

    sget-object v0, Lcom/oplus/camera/screen/a/b$c;->guide:Lcom/oplus/camera/screen/a/b$c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
