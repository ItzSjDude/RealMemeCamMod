.class Lcom/oplus/camera/s/c;
.super Ljava/lang/Object;
.source "StarVideoUI.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/SharedPreferences;

.field private c:Lcom/oplus/camera/ui/CameraUIInterface;

.field private d:I

.field private e:Lcom/oplus/camera/ui/widget/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/oplus/camera/ui/CameraUIInterface;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/oplus/camera/s/c;->a:Landroid/app/Activity;

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/s/c;->b:Landroid/content/SharedPreferences;

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lcom/oplus/camera/s/c;->d:I

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/s/c;->e:Lcom/oplus/camera/ui/widget/b;

    .line 53
    iput-object p1, p0, Lcom/oplus/camera/s/c;->a:Landroid/app/Activity;

    .line 54
    iput-object p2, p0, Lcom/oplus/camera/s/c;->b:Landroid/content/SharedPreferences;

    .line 55
    iput-object p3, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    return-void
.end method

.method private synthetic b(I)V
    .locals 1

    .line 208
    iget-object p0, p0, Lcom/oplus/camera/s/c;->b:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    .line 209
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_star_video_record_total_time_key"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private synthetic b(ZLcom/oplus/camera/ui/control/b;ZZ)V
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    .line 125
    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Z)V

    .line 126
    iget-object p1, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->n()V

    .line 127
    iget-object v0, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10031d

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 129
    iget-object p1, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;Z)V

    .line 130
    iget-object p1, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p2, 0x1

    invoke-interface {p1, v0, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(IZ)V

    if-eqz p3, :cond_0

    .line 133
    iget-object p1, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v0, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->y(Z)V

    .line 138
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->H()V

    .line 139
    invoke-virtual {p0, v0}, Lcom/oplus/camera/s/c;->b(Z)V

    if-eqz p4, :cond_1

    .line 142
    iget-object p0, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->as()V

    :cond_1
    return-void
.end method

.method private d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7f10031c

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f100315

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f1003f0

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private synthetic d(Z)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p0, :cond_0

    .line 153
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Z)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/oplus/camera/ui/widget/b;

    iget-object v1, p0, Lcom/oplus/camera/s/c;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/widget/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/s/c;->e:Lcom/oplus/camera/ui/widget/b;

    .line 207
    iget-object v0, p0, Lcom/oplus/camera/s/c;->e:Lcom/oplus/camera/ui/widget/b;

    new-instance v1, Lcom/oplus/camera/s/-$$Lambda$c$n7w2dmeCK4Zb0rbtS0w2EXg58L4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/s/-$$Lambda$c$n7w2dmeCK4Zb0rbtS0w2EXg58L4;-><init>(Lcom/oplus/camera/s/c;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/b;->setModeFrameChangeListener(Lcom/oplus/camera/ui/widget/b$b;)V

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    new-instance v1, Lcom/oplus/camera/ui/widget/b$a;

    iget-object v2, p0, Lcom/oplus/camera/s/c;->a:Landroid/app/Activity;

    const v3, 0x7f1003f4

    .line 215
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x36ee80

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/ui/widget/b$a;-><init>(ILjava/lang/String;)V

    .line 214
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v1, Lcom/oplus/camera/ui/widget/b$a;

    iget-object v2, p0, Lcom/oplus/camera/s/c;->a:Landroid/app/Activity;

    const v3, 0x7f1003f5

    .line 217
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x5265c0

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/ui/widget/b$a;-><init>(ILjava/lang/String;)V

    .line 216
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v1, Lcom/oplus/camera/ui/widget/b$a;

    iget-object v2, p0, Lcom/oplus/camera/s/c;->a:Landroid/app/Activity;

    const v3, 0x7f1003f2

    .line 219
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x6ddd00

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/ui/widget/b$a;-><init>(ILjava/lang/String;)V

    .line 218
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v1, Lcom/oplus/camera/ui/widget/b$a;

    iget-object v2, p0, Lcom/oplus/camera/s/c;->a:Landroid/app/Activity;

    const v3, 0x7f1003f3

    .line 221
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0xdbba00

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/ui/widget/b$a;-><init>(ILjava/lang/String;)V

    .line 220
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object p0, p0, Lcom/oplus/camera/s/c;->e:Lcom/oplus/camera/ui/widget/b;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/b;->setFrameList(Ljava/util/List;)V

    return-void
.end method

.method private synthetic f()V
    .locals 6

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lcom/oplus/camera/s/c;->c(Z)V

    .line 87
    iget-object v1, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->m(Z)V

    .line 88
    iget-object v1, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 89
    iget-object v1, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(IZ)V

    .line 90
    iget-object v1, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v3, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    .line 92
    new-instance v1, Lcom/oplus/camera/ui/control/b;

    const/4 v3, 0x5

    const-string v4, "button_color_inside_red"

    const-string v5, "button_shape_dial_rotate"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 97
    iget-object v3, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 98
    iget-object v1, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    const-wide/16 v3, 0x0

    .line 100
    invoke-virtual {p0, v0, v3, v4}, Lcom/oplus/camera/s/c;->a(IJ)V

    .line 101
    iget-object v0, p0, Lcom/oplus/camera/s/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070a20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3, v0, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/Float;IZZ)V

    .line 104
    iget-object v0, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10031d

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 105
    iget-object v0, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-direct {p0}, Lcom/oplus/camera/s/c;->d()Ljava/util/List;

    move-result-object p0

    const-wide/16 v1, 0x1388

    invoke-interface {v0, p0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/util/List;J)V

    return-void
.end method

.method public static synthetic lambda$M-5x8FNBauq5dDRGjExSuKf2Aws(Lcom/oplus/camera/s/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/s/c;->f()V

    return-void
.end method

.method public static synthetic lambda$MCjS81XJPLL4n_q-c5KWcxvQPr8(Lcom/oplus/camera/s/c;ZLcom/oplus/camera/ui/control/b;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/s/c;->b(ZLcom/oplus/camera/ui/control/b;ZZ)V

    return-void
.end method

.method public static synthetic lambda$ZiZt8qBKlXDRwGvV3Pe__IIp_OU(Lcom/oplus/camera/s/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/s/c;->d(Z)V

    return-void
.end method

.method public static synthetic lambda$n7w2dmeCK4Zb0rbtS0w2EXg58L4(Lcom/oplus/camera/s/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/s/c;->b(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    const v1, 0x7f10031d

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 68
    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lcom/oplus/camera/s/c;->b(Z)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 59
    iput p1, p0, Lcom/oplus/camera/s/c;->d:I

    .line 61
    iget-object p0, p0, Lcom/oplus/camera/s/c;->e:Lcom/oplus/camera/ui/widget/b;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/widget/b;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(IJ)V
    .locals 9

    .line 75
    iget-object v0, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    mul-int/lit16 p0, p1, 0x3e8

    int-to-long v3, p0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-wide v1, p2

    .line 76
    invoke-interface/range {v0 .. v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(JJZZJ)V

    .line 78
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateRecordingTime, recordingTime: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", videoTimeSec: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StarVideoUI"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/oplus/camera/s/c;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Lcom/oplus/camera/s/-$$Lambda$c$ZiZt8qBKlXDRwGvV3Pe__IIp_OU;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/s/-$$Lambda$c$ZiZt8qBKlXDRwGvV3Pe__IIp_OU;-><init>(Lcom/oplus/camera/s/c;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(ZLcom/oplus/camera/ui/control/b;ZZ)V
    .locals 8

    const-string v0, "StarVideoUI"

    const-string v1, "hideRecordingUI"

    .line 120
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/oplus/camera/s/c;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 123
    new-instance v7, Lcom/oplus/camera/s/-$$Lambda$c$MCjS81XJPLL4n_q-c5KWcxvQPr8;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/oplus/camera/s/-$$Lambda$c$MCjS81XJPLL4n_q-c5KWcxvQPr8;-><init>(Lcom/oplus/camera/s/c;ZLcom/oplus/camera/ui/control/b;ZZ)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/oplus/camera/s/c;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Lcom/oplus/camera/s/-$$Lambda$c$M-5x8FNBauq5dDRGjExSuKf2Aws;

    invoke-direct {v1, p0}, Lcom/oplus/camera/s/-$$Lambda$c$M-5x8FNBauq5dDRGjExSuKf2Aws;-><init>(Lcom/oplus/camera/s/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 7

    .line 160
    iget-object v0, p0, Lcom/oplus/camera/s/c;->e:Lcom/oplus/camera/ui/widget/b;

    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/oplus/camera/s/c;->e()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/s/c;->b:Landroid/content/SharedPreferences;

    const v1, 0x5265c0

    const-string v2, "pref_star_video_record_total_time_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/oplus/camera/s/c;->e:Lcom/oplus/camera/ui/widget/b;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/widget/b;->a(I)V

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/s/c;->e:Lcom/oplus/camera/ui/widget/b;

    iget v1, p0, Lcom/oplus/camera/s/c;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/widget/b;->a(IZ)V

    .line 168
    iget-object v0, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/oplus/camera/s/c;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070abb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 170
    iget-object v3, p0, Lcom/oplus/camera/s/c;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070aba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 171
    iget-object v4, p0, Lcom/oplus/camera/s/c;->a:Landroid/app/Activity;

    const v5, 0x7f0900e5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 172
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v6

    sub-int/2addr v4, v6

    sub-int/2addr v5, v4

    .line 173
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    .line 174
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    .line 175
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 176
    invoke-virtual {v4, v2, v2, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 177
    iget-object v1, p0, Lcom/oplus/camera/s/c;->e:Lcom/oplus/camera/ui/widget/b;

    invoke-virtual {v1, v4}, Lcom/oplus/camera/ui/widget/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v1, p0, Lcom/oplus/camera/s/c;->e:Lcom/oplus/camera/ui/widget/b;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/oplus/camera/s/c;->e:Lcom/oplus/camera/ui/widget/b;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 184
    iget-object p0, p0, Lcom/oplus/camera/s/c;->e:Lcom/oplus/camera/ui/widget/b;

    const/4 p1, 0x0

    const-wide/16 v0, 0x12c

    invoke-static {p0, v2, p1, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/s/c;->e:Lcom/oplus/camera/ui/widget/b;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/widget/b;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/oplus/camera/s/c;->a:Landroid/app/Activity;

    .line 228
    iput-object v0, p0, Lcom/oplus/camera/s/c;->b:Landroid/content/SharedPreferences;

    .line 229
    iput-object v0, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    return-void
.end method

.method public c(Z)V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/s/c;->e:Lcom/oplus/camera/ui/widget/b;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-wide/16 v2, 0x12c

    .line 196
    invoke-static {v0, v1, p1, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/b;->setVisibility(I)V

    .line 201
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/s/c;->c:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/s/c;->e:Lcom/oplus/camera/ui/widget/b;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method
