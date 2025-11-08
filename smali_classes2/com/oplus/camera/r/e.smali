.class public Lcom/oplus/camera/r/e;
.super Lcom/oplus/camera/r/a;
.source "SLVFps960Mode.java"


# instance fields
.field private d:Z

.field private e:Lcom/c/a;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:Lcom/c/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/r/a;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/oplus/camera/r/e;->d:Z

    .line 51
    new-instance p1, Lcom/oplus/camera/r/e$1;

    invoke-direct {p1, p0}, Lcom/oplus/camera/r/e$1;-><init>(Lcom/oplus/camera/r/e;)V

    iput-object p1, p0, Lcom/oplus/camera/r/e;->h:Lcom/c/b;

    .line 105
    invoke-direct {p0}, Lcom/oplus/camera/r/e;->f()V

    const-string p0, "SLVFps960Mode"

    const-string p1, "SLVFps960Mode, new MeicamVideoEngine"

    .line 107
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/r/e;)Lcom/c/a;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/r/e;->e:Lcom/c/a;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/r/e;Lcom/c/a;)Lcom/c/a;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/oplus/camera/r/e;->e:Lcom/c/a;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/r/e;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/oplus/camera/r/e;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/r/e;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/r/e;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/r/e;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/oplus/camera/r/e;->d:Z

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/r/e;)Lcom/c/b;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/r/e;->h:Lcom/c/b;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/oplus/camera/r/e;->a:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/r/e$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/r/e$2;-><init>(Lcom/oplus/camera/r/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 0

    const/16 p0, 0x3c0

    return p0
.end method

.method public a(I)Lcom/oplus/camera/ui/control/b;
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 149
    new-instance p0, Lcom/oplus/camera/ui/control/b;

    const/4 p1, 0x3

    const/4 v0, 0x1

    const-string v1, "button_color_inside_none"

    const-string v2, "button_shape_dial_still"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 154
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/r/a;->a(I)Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    return-object p0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 204
    iput-object p1, p0, Lcom/oplus/camera/r/e;->f:Ljava/lang/String;

    .line 206
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "slow_motion_platform_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_960"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/oplus/camera/r/e;->d:Z

    .line 177
    iget-object v1, p0, Lcom/oplus/camera/r/e;->e:Lcom/c/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/r/e;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "_display_name"

    .line 178
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "VID"

    const-string v4, "Slow"

    .line 179
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 181
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "title"

    .line 182
    invoke-virtual {v3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "mime_type"

    .line 184
    invoke-virtual {p3, p4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {v2}, Lcom/oplus/camera/Storage;->e(Lcom/oplus/camera/Storage$CameraPicture;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "relative_path"

    invoke-virtual {v3, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 186
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "is_pending"

    invoke-virtual {v3, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    iget-object p3, p0, Lcom/oplus/camera/r/e;->a:Landroid/app/Activity;

    iget-object p4, p0, Lcom/oplus/camera/r/e;->a:Landroid/app/Activity;

    invoke-virtual {p4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    invoke-static {p3, p4, v3}, Lcom/oplus/camera/util/storage/a;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/camera/r/e;->g:Ljava/lang/String;

    .line 189
    iget-object p3, p0, Lcom/oplus/camera/r/e;->e:Lcom/c/a;

    invoke-virtual {p3, p1}, Lcom/c/a;->a(I)Z

    .line 191
    iget-object p1, p0, Lcom/oplus/camera/r/e;->e:Lcom/c/a;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/camera/r/e;->g:Ljava/lang/String;

    const/16 p4, 0x3c0

    iget-object v0, p0, Lcom/oplus/camera/r/e;->f:Ljava/lang/String;

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/2addr p4, v0

    .line 191
    invoke-virtual {p1, p2, p3, p4}, Lcom/c/a;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 197
    iget-object p0, p0, Lcom/oplus/camera/r/e;->c:Lcom/oplus/camera/r/a$a;

    invoke-interface {p0, v2}, Lcom/oplus/camera/r/a$a;->b(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public c()I
    .locals 0

    const/16 p0, 0x8ca

    return p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/oplus/camera/r/e;->d:Z

    .line 124
    iget-object p0, p0, Lcom/oplus/camera/r/e;->e:Lcom/c/a;

    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/c/a;->a()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/oplus/camera/r/e;->a:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/r/e$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/r/e$3;-><init>(Lcom/oplus/camera/r/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 143
    invoke-super {p0}, Lcom/oplus/camera/r/a;->e()V

    return-void
.end method
