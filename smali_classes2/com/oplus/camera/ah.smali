.class public Lcom/oplus/camera/ah;
.super Ljava/lang/Object;
.source "ZoomUnit.java"


# instance fields
.field private a:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/oplus/camera/ah;->a:Ljava/text/DecimalFormat;

    .line 30
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/ah;->a:Ljava/text/DecimalFormat;

    return-void
.end method

.method private b(F)Z
    .locals 1

    const p0, 0x3f19999a    # 0.6f

    sub-float p0, p1, p0

    .line 34
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float p0, p1, p0

    .line 35
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_1

    const/high16 p0, 0x40000000    # 2.0f

    sub-float p0, p1, p0

    .line 36
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_1

    const/high16 p0, 0x40a00000    # 5.0f

    sub-float p0, p1, p0

    .line 37
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_1

    const/high16 p0, 0x41200000    # 10.0f

    sub-float/2addr p1, p0

    .line 38
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private c(F)F
    .locals 1

    const p0, 0x3f19999a    # 0.6f

    sub-float p0, p1, p0

    .line 46
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/high16 p1, 0x41800000    # 16.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float p0, p1, p0

    .line 48
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    const/high16 p1, 0x41c00000    # 24.0f

    goto :goto_0

    :cond_1
    const/high16 p0, 0x40000000    # 2.0f

    sub-float p0, p1, p0

    .line 50
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_2

    const/high16 p1, 0x42480000    # 50.0f

    goto :goto_0

    :cond_2
    const/high16 p0, 0x40a00000    # 5.0f

    sub-float p0, p1, p0

    .line 52
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_3

    const/high16 p1, 0x42f00000    # 120.0f

    :cond_3
    :goto_0
    return p1
.end method


# virtual methods
.method public a(F)Ljava/lang/String;
    .locals 2

    .line 69
    iget-object p0, p0, Lcom/oplus/camera/ah;->a:Ljava/text/DecimalFormat;

    if-eqz p0, :cond_0

    float-to-double v0, p1

    .line 70
    invoke-virtual {p0, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 73
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(ZF)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 60
    invoke-direct {p0, p2}, Lcom/oplus/camera/ah;->b(F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    invoke-direct {p0, p2}, Lcom/oplus/camera/ah;->c(F)F

    move-result p1

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/camera/ah;->a:Ljava/text/DecimalFormat;

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "mm"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/camera/ah;->a:Ljava/text/DecimalFormat;

    float-to-double v0, p2

    invoke-virtual {p0, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "X"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
