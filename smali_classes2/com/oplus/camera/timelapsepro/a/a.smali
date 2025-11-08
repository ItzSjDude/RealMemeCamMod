.class public Lcom/oplus/camera/timelapsepro/a/a;
.super Lcom/oplus/camera/timelapsepro/a/g;
.source "DurationWrapper.java"


# instance fields
.field private a:I

.field private b:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/a/g;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/oplus/camera/timelapsepro/a/a;->b:J

    .line 19
    iput p1, p0, Lcom/oplus/camera/timelapsepro/a/a;->a:I

    if-gtz p1, :cond_0

    .line 22
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1006b1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/a;->c:Ljava/lang/String;

    const-string p1, ""

    .line 23
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/a;->d:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1006cd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/a;->e:Ljava/lang/String;

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/a;->c:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1006b7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/a;->d:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/oplus/camera/timelapsepro/a/a;->b:J

    return-wide v0
.end method

.method public a(Lcom/oplus/camera/timelapsepro/a/i;)Lcom/oplus/camera/timelapsepro/a/a;
    .locals 1

    .line 32
    iget v0, p0, Lcom/oplus/camera/timelapsepro/a/a;->a:I

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/i;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/a/a;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    .line 40
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 41
    iget p1, p0, Lcom/oplus/camera/timelapsepro/a/a;->a:I

    int-to-long v2, p1

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v2, v0

    int-to-long v6, p1

    mul-long/2addr v6, v4

    long-to-double v4, v6

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v6

    div-double/2addr v4, v0

    double-to-long v0, v4

    .line 42
    iput-wide v0, p0, Lcom/oplus/camera/timelapsepro/a/a;->b:J

    .line 43
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1006b8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    double-to-int v1, v2

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 43
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/oplus/camera/timelapsepro/a/a;->a:I

    return p0
.end method
