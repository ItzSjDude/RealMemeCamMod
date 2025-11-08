.class public Lcom/b/a/c;
.super Ljava/lang/Object;
.source "ModelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Lcom/b/a/g; = null

.field private static final g:Ljava/lang/String; = "c"

.field private static p:Lcom/b/a/c;

.field private static final q:[Lcom/b/a/c$a;


# instance fields
.field public c:Landroid/app/Activity;

.field public d:Lcom/b/a/f;

.field e:J

.field f:Ljava/lang/Runnable;

.field private h:I

.field private i:I

.field private j:Landroid/net/Uri;

.field private k:Z

.field private l:[F

.field private m:Lcom/b/a/e;

.field private n:Lcom/b/a/j;

.field private o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    .line 433
    new-array v0, v0, [Lcom/b/a/c$a;

    new-instance v1, Lcom/b/a/c$a;

    sget-object v2, Lcom/b/a/a/d;->FixedGaze:Lcom/b/a/a/d;

    const/16 v3, 0xfa0

    const/16 v4, 0x3e8

    invoke-direct {v1, v2, v3, v4}, Lcom/b/a/c$a;-><init>(Lcom/b/a/a/d;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/b/a/c$a;

    sget-object v2, Lcom/b/a/a/d;->DollyZoom:Lcom/b/a/a/d;

    invoke-direct {v1, v2, v3, v4}, Lcom/b/a/c$a;-><init>(Lcom/b/a/a/d;II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/b/a/c$a;

    sget-object v2, Lcom/b/a/a/d;->Circle:Lcom/b/a/a/d;

    const/16 v3, 0x1388

    invoke-direct {v1, v2, v3, v4}, Lcom/b/a/c$a;-><init>(Lcom/b/a/a/d;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/b/a/c$a;

    sget-object v2, Lcom/b/a/a/d;->Swing:Lcom/b/a/a/d;

    invoke-direct {v1, v2, v3, v4}, Lcom/b/a/c$a;-><init>(Lcom/b/a/a/d;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/b/a/c;->q:[Lcom/b/a/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/b/a/c;->h:I

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/b/a/c;->k:Z

    const/4 v0, 0x4

    .line 61
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/b/a/c;->l:[F

    const-wide/16 v0, -0x1

    .line 403
    iput-wide v0, p0, Lcom/b/a/c;->e:J

    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcom/b/a/c;->f:Ljava/lang/Runnable;

    const-string p0, "ModelActivity"

    const-string v0, "default constructor"

    .line 156
    invoke-static {p0, v0}, Lcom/b/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static a()Lcom/b/a/c;
    .locals 1

    .line 75
    sget-object v0, Lcom/b/a/c;->p:Lcom/b/a/c;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/b/a/c;

    invoke-direct {v0}, Lcom/b/a/c;-><init>()V

    sput-object v0, Lcom/b/a/c;->p:Lcom/b/a/c;

    .line 78
    :cond_0
    sget-object v0, Lcom/b/a/c;->p:Lcom/b/a/c;

    return-object v0
.end method

.method public static b()V
    .locals 2

    const-string v0, "ModelActivity"

    const-string v1, "release"

    .line 82
    invoke-static {v0, v1}, Lcom/b/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/b/a/c;->p:Lcom/b/a/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/b/a/c;->m:Lcom/b/a/e;

    .line 84
    iput-object v1, v0, Lcom/b/a/c;->n:Lcom/b/a/j;

    .line 85
    iput-object v1, v0, Lcom/b/a/c;->o:Landroid/os/Handler;

    .line 86
    iput-object v1, v0, Lcom/b/a/c;->c:Landroid/app/Activity;

    .line 87
    iput-object v1, v0, Lcom/b/a/c;->d:Lcom/b/a/f;

    .line 88
    sput-object v1, Lcom/b/a/c;->b:Lcom/b/a/g;

    .line 89
    sput-object v1, Lcom/b/a/c;->p:Lcom/b/a/c;

    return-void
.end method

.method private g()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 236
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/f;Landroid/view/Surface;IILcom/b/a/k;)V
    .locals 7

    const-string v0, "ModelActivity"

    const-string v1, "init"

    .line 94
    invoke-static {v0, v1}, Lcom/b/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/b/a/c;->d:Lcom/b/a/f;

    .line 97
    invoke-interface {p1}, Lcom/b/a/f;->a()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/c;->c:Landroid/app/Activity;

    .line 100
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    sget-object v2, Lcom/b/a/c;->a:Ljava/lang/String;

    const-string v3, "uri"

    if-eqz v2, :cond_0

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/b/a/c;->a:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/andresoviedo/a/a/b;->a(Ljava/io/File;)V

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    sget-object v2, Lcom/b/a/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/b/a/c;->j:Landroid/net/Uri;

    .line 119
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/b/a/c;->i:I

    const-string v0, "immersiveMode"

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/c;->k:Z

    const/4 v0, 0x1

    :try_start_0
    const-string v2, "backgroundColor"

    .line 122
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 123
    iget-object v2, p0, Lcom/b/a/c;->l:[F

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    .line 124
    iget-object v1, p0, Lcom/b/a/c;->l:[F

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 125
    iget-object v1, p0, Lcom/b/a/c;->l:[F

    const/4 v2, 0x2

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v2

    .line 126
    iget-object v1, p0, Lcom/b/a/c;->l:[F

    const/4 v2, 0x3

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    aput p1, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params: uri \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/c;->j:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Renderer"

    invoke-static {v1, p1}, Lcom/b/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lcom/b/a/c;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/b/a/c;->o:Landroid/os/Handler;

    .line 136
    new-instance p1, Lcom/b/a/j;

    invoke-direct {p1, p0}, Lcom/b/a/j;-><init>(Lcom/b/a/c;)V

    iput-object p1, p0, Lcom/b/a/c;->n:Lcom/b/a/j;

    .line 137
    iget-object p1, p0, Lcom/b/a/c;->n:Lcom/b/a/j;

    invoke-virtual {p1}, Lcom/b/a/j;->a()V

    .line 143
    :try_start_1
    new-instance p1, Lcom/b/a/e;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/b/a/e;-><init>(Lcom/b/a/c;Landroid/view/Surface;IILcom/b/a/k;)V

    iput-object p1, p0, Lcom/b/a/c;->m:Lcom/b/a/e;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 146
    iget-object p2, p0, Lcom/b/a/c;->c:Landroid/app/Activity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error loading OpenGL view:\n"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 152
    :goto_1
    invoke-direct {p0}, Lcom/b/a/c;->g()V

    return-void
.end method

.method public c()Lcom/b/a/j;
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/b/a/c;->n:Lcom/b/a/j;

    return-object p0
.end method

.method public d()Lcom/b/a/e;
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/b/a/c;->m:Lcom/b/a/e;

    return-object p0
.end method

.method public e()V
    .locals 0

    .line 387
    invoke-virtual {p0}, Lcom/b/a/c;->d()Lcom/b/a/e;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/b/a/e;->a()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    .line 396
    invoke-virtual {p0}, Lcom/b/a/c;->d()Lcom/b/a/e;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/b/a/e;->b()V

    :cond_0
    return-void
.end method
