.class Lcom/oplus/camera/ui/preview/p$a;
.super Ljava/lang/Object;
.source "GradienterAssistView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:Z

.field private f:F

.field private g:F


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 948
    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->a:I

    const/4 v0, 0x0

    .line 949
    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->b:I

    .line 950
    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->c:I

    const-wide/16 v1, 0x0

    .line 952
    iput-wide v1, p0, Lcom/oplus/camera/ui/preview/p$a;->d:J

    .line 954
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/p$a;->e:Z

    const/4 v0, 0x0

    .line 956
    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->f:F

    .line 957
    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->g:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/preview/p$1;)V
    .locals 0

    .line 940
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/p$a;F)F
    .locals 0

    .line 940
    iput p1, p0, Lcom/oplus/camera/ui/preview/p$a;->f:F

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/p$a;)I
    .locals 0

    .line 940
    iget p0, p0, Lcom/oplus/camera/ui/preview/p$a;->a:I

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/p$a;I)I
    .locals 0

    .line 940
    iput p1, p0, Lcom/oplus/camera/ui/preview/p$a;->a:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/p$a;J)J
    .locals 0

    .line 940
    iput-wide p1, p0, Lcom/oplus/camera/ui/preview/p$a;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)V
    .locals 0

    .line 940
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/p$a;->j(Lcom/oplus/camera/ui/preview/p$a;)V

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;FF)V
    .locals 3

    .line 992
    iget v0, p2, Lcom/oplus/camera/ui/preview/p$a;->a:I

    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->a:I

    .line 993
    iget-wide v0, p2, Lcom/oplus/camera/ui/preview/p$a;->d:J

    iput-wide v0, p0, Lcom/oplus/camera/ui/preview/p$a;->d:J

    .line 995
    iget v0, p1, Lcom/oplus/camera/ui/preview/p$a;->b:I

    int-to-float v1, v0

    iget v2, p2, Lcom/oplus/camera/ui/preview/p$a;->b:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p3

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->b:I

    .line 997
    iget v0, p1, Lcom/oplus/camera/ui/preview/p$a;->c:I

    int-to-float v1, v0

    iget v2, p2, Lcom/oplus/camera/ui/preview/p$a;->c:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p3

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->c:I

    .line 999
    iget-boolean v0, p2, Lcom/oplus/camera/ui/preview/p$a;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/preview/p$a;->b:I

    iget v1, p2, Lcom/oplus/camera/ui/preview/p$a;->b:I

    sub-int/2addr v0, v1

    .line 1000
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/preview/p$a;->c:I

    iget v1, p2, Lcom/oplus/camera/ui/preview/p$a;->c:I

    sub-int/2addr v0, v1

    .line 1001
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p4, p4, v0

    if-lez p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iput-boolean p4, p0, Lcom/oplus/camera/ui/preview/p$a;->e:Z

    const/4 p4, 0x2

    .line 1003
    iget v0, p2, Lcom/oplus/camera/ui/preview/p$a;->a:I

    if-eq p4, v0, :cond_1

    const/4 p4, 0x3

    if-ne p4, v0, :cond_4

    .line 1004
    :cond_1
    iget p4, p2, Lcom/oplus/camera/ui/preview/p$a;->a:I

    iget v0, p1, Lcom/oplus/camera/ui/preview/p$a;->a:I

    if-eq p4, v0, :cond_3

    .line 1005
    iget p1, p1, Lcom/oplus/camera/ui/preview/p$a;->f:F

    const/4 p4, 0x0

    cmpl-float p4, p1, p4

    const/high16 v0, 0x42b40000    # 90.0f

    if-lez p4, :cond_2

    sub-float/2addr p1, v0

    goto :goto_1

    :cond_2
    add-float/2addr p1, v0

    .line 1008
    :goto_1
    iget p2, p2, Lcom/oplus/camera/ui/preview/p$a;->f:F

    sub-float/2addr p2, p1

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    iput p1, p0, Lcom/oplus/camera/ui/preview/p$a;->f:F

    goto :goto_2

    .line 1010
    :cond_3
    iget p1, p1, Lcom/oplus/camera/ui/preview/p$a;->f:F

    iget p2, p2, Lcom/oplus/camera/ui/preview/p$a;->f:F

    .line 1011
    invoke-static {p1, p2}, Lcom/oplus/camera/ui/preview/p;->a(FF)F

    move-result p2

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    iput p1, p0, Lcom/oplus/camera/ui/preview/p$a;->f:F

    :cond_4
    :goto_2
    return-void
.end method

.method private a(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)V
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    if-nez p1, :cond_1

    move-object p1, p3

    :cond_1
    if-eqz p1, :cond_2

    .line 1030
    iget p1, p1, Lcom/oplus/camera/ui/preview/p$a;->g:F

    iput p1, p0, Lcom/oplus/camera/ui/preview/p$a;->g:F

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;FF)V
    .locals 0

    .line 940
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;FF)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)V
    .locals 0

    .line 940
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/preview/p$a;->a(Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;Lcom/oplus/camera/ui/preview/p$a;)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 960
    iget v0, p0, Lcom/oplus/camera/ui/preview/p$a;->a:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/preview/p$a;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/preview/p$a;->c:I

    if-nez v0, :cond_0

    iget p0, p0, Lcom/oplus/camera/ui/preview/p$a;->f:F

    const/4 v0, 0x0

    .line 963
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/p$a;Z)Z
    .locals 0

    .line 940
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/p$a;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/p$a;F)F
    .locals 0

    .line 940
    iput p1, p0, Lcom/oplus/camera/ui/preview/p$a;->g:F

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/p$a;I)I
    .locals 0

    .line 940
    iput p1, p0, Lcom/oplus/camera/ui/preview/p$a;->b:I

    return p1
.end method

.method private b()V
    .locals 1

    const/4 v0, -0x1

    .line 967
    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->a:I

    const/4 v0, 0x0

    .line 968
    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->b:I

    .line 969
    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->c:I

    const/4 v0, 0x0

    .line 970
    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->f:F

    .line 971
    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->g:F

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/p$a;)Z
    .locals 0

    .line 940
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/p$a;->e:Z

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/p$a;I)I
    .locals 0

    .line 940
    iput p1, p0, Lcom/oplus/camera/ui/preview/p$a;->c:I

    return p1
.end method

.method private c()Lcom/oplus/camera/ui/preview/p$a;
    .locals 1

    .line 985
    new-instance v0, Lcom/oplus/camera/ui/preview/p$a;

    invoke-direct {v0}, Lcom/oplus/camera/ui/preview/p$a;-><init>()V

    .line 986
    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/p$a;->j(Lcom/oplus/camera/ui/preview/p$a;)V

    return-object v0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/p$a;)Z
    .locals 0

    .line 940
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p$a;->a()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/p$a;)Lcom/oplus/camera/ui/preview/p$a;
    .locals 0

    .line 940
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p$a;->c()Lcom/oplus/camera/ui/preview/p$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/preview/p$a;)F
    .locals 0

    .line 940
    iget p0, p0, Lcom/oplus/camera/ui/preview/p$a;->g:F

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/preview/p$a;)I
    .locals 0

    .line 940
    iget p0, p0, Lcom/oplus/camera/ui/preview/p$a;->b:I

    return p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/preview/p$a;)I
    .locals 0

    .line 940
    iget p0, p0, Lcom/oplus/camera/ui/preview/p$a;->c:I

    return p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/preview/p$a;)F
    .locals 0

    .line 940
    iget p0, p0, Lcom/oplus/camera/ui/preview/p$a;->f:F

    return p0
.end method

.method static synthetic i(Lcom/oplus/camera/ui/preview/p$a;)V
    .locals 0

    .line 940
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/p$a;->b()V

    return-void
.end method

.method private j(Lcom/oplus/camera/ui/preview/p$a;)V
    .locals 2

    .line 975
    iget v0, p1, Lcom/oplus/camera/ui/preview/p$a;->a:I

    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->a:I

    .line 976
    iget v0, p1, Lcom/oplus/camera/ui/preview/p$a;->b:I

    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->b:I

    .line 977
    iget v0, p1, Lcom/oplus/camera/ui/preview/p$a;->c:I

    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->c:I

    .line 978
    iget v0, p1, Lcom/oplus/camera/ui/preview/p$a;->f:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/p$a;->f:F

    .line 979
    iget-boolean v0, p1, Lcom/oplus/camera/ui/preview/p$a;->e:Z

    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/p$a;->e:Z

    .line 980
    iget-wide v0, p1, Lcom/oplus/camera/ui/preview/p$a;->d:J

    iput-wide v0, p0, Lcom/oplus/camera/ui/preview/p$a;->d:J

    .line 981
    iget p1, p1, Lcom/oplus/camera/ui/preview/p$a;->g:F

    iput p1, p0, Lcom/oplus/camera/ui/preview/p$a;->g:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attitude={\"mCanvasRotateDegree\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/p$a;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",\"mIndicatorLeftOffset\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/p$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"mIndicatorTopOffset\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/p$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"mRectRotateDegrees\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/p$a;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",\"mTimeStamp\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/ui/preview/p$a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\"mType\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/p$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"mbAdjusted\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/p$a;->e:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
