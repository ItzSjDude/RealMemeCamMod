.class Lcom/oplus/camera/util/Util$a;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/util/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/text/SimpleDateFormat;

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 3797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3798
    iput-object p1, p0, Lcom/oplus/camera/util/Util$a;->a:Ljava/lang/String;

    .line 3799
    new-instance p1, Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/oplus/camera/util/Util$a;->a:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/oplus/camera/util/Util$a;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 1

    .line 3868
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 3870
    iget-object p0, p0, Lcom/oplus/camera/util/Util$a;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(JZ)Ljava/lang/String;
    .locals 11

    .line 3809
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 3810
    iget-object v1, p0, Lcom/oplus/camera/util/Util$a;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_0"

    const/16 v3, 0xa

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    if-eqz p3, :cond_3

    .line 3813
    div-long v7, p1, v5

    iget-wide v9, p0, Lcom/oplus/camera/util/Util$a;->c:J

    div-long/2addr v9, v5

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 3814
    iput-wide p1, p0, Lcom/oplus/camera/util/Util$a;->c:J

    .line 3815
    iput v4, p0, Lcom/oplus/camera/util/Util$a;->d:I

    .line 3818
    :cond_0
    iget v7, p0, Lcom/oplus/camera/util/Util$a;->d:I

    if-ge v7, v3, :cond_1

    .line 3819
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_BURST00"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/util/Util$a;->d:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3821
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_BURST0"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/util/Util$a;->d:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3824
    :goto_0
    iget v7, p0, Lcom/oplus/camera/util/Util$a;->d:I

    if-nez v7, :cond_2

    .line 3825
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_COVER"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3828
    :cond_2
    iget v7, p0, Lcom/oplus/camera/util/Util$a;->d:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/oplus/camera/util/Util$a;->d:I

    goto :goto_1

    .line 3830
    :cond_3
    div-long v7, p1, v5

    iget-wide v9, p0, Lcom/oplus/camera/util/Util$a;->c:J

    div-long/2addr v9, v5

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 3833
    iget v7, p0, Lcom/oplus/camera/util/Util$a;->d:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/oplus/camera/util/Util$a;->d:I

    .line 3835
    iget v7, p0, Lcom/oplus/camera/util/Util$a;->d:I

    if-ge v7, v3, :cond_4

    .line 3836
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/util/Util$a;->d:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3838
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/util/Util$a;->d:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3841
    :cond_5
    iput-wide p1, p0, Lcom/oplus/camera/util/Util$a;->c:J

    .line 3842
    iput v4, p0, Lcom/oplus/camera/util/Util$a;->d:I

    .line 3847
    :goto_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->am()Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz p3, :cond_8

    invoke-static {}, Lcom/oplus/camera/util/Util;->aK()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 3848
    new-instance p3, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "\'IMG_\'yyyyMMdd\'_\'HHmmss"

    invoke-direct {p3, v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3849
    invoke-virtual {p3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    .line 3851
    div-long v0, p1, v5

    iget-wide v7, p0, Lcom/oplus/camera/util/Util$a;->c:J

    div-long/2addr v7, v5

    cmp-long v0, v0, v7

    if-eqz v0, :cond_6

    .line 3852
    iput-wide p1, p0, Lcom/oplus/camera/util/Util$a;->c:J

    .line 3853
    iput v4, p0, Lcom/oplus/camera/util/Util$a;->d:I

    .line 3856
    :cond_6
    iget p1, p0, Lcom/oplus/camera/util/Util$a;->d:I

    if-ge p1, v3, :cond_7

    .line 3857
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_00"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/util/Util$a;->d:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 3859
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/util/Util$a;->d:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    :goto_2
    return-object v1
.end method

.method public a()V
    .locals 3

    .line 3803
    iget-object v0, p0, Lcom/oplus/camera/util/Util$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3804
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/oplus/camera/util/Util$a;->b:Ljava/text/SimpleDateFormat;

    :cond_0
    return-void
.end method
