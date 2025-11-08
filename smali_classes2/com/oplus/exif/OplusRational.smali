.class public Lcom/oplus/exif/OplusRational;
.super Ljava/lang/Object;
.source "OplusRational.java"


# instance fields
.field private final mDenominator:J

.field private final mNumerator:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/oplus/exif/OplusRational;->mNumerator:J

    .line 36
    iput-wide p3, p0, Lcom/oplus/exif/OplusRational;->mDenominator:J

    return-void
.end method

.method public constructor <init>(Lcom/oplus/exif/OplusRational;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iget-wide v0, p1, Lcom/oplus/exif/OplusRational;->mNumerator:J

    iput-wide v0, p0, Lcom/oplus/exif/OplusRational;->mNumerator:J

    .line 44
    iget-wide v0, p1, Lcom/oplus/exif/OplusRational;->mDenominator:J

    iput-wide v0, p0, Lcom/oplus/exif/OplusRational;->mDenominator:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 77
    :cond_1
    instance-of v2, p1, Lcom/oplus/exif/OplusRational;

    if-eqz v2, :cond_2

    .line 78
    check-cast p1, Lcom/oplus/exif/OplusRational;

    .line 79
    iget-wide v2, p0, Lcom/oplus/exif/OplusRational;->mNumerator:J

    iget-wide v4, p1, Lcom/oplus/exif/OplusRational;->mNumerator:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/oplus/exif/OplusRational;->mDenominator:J

    iget-wide p0, p1, Lcom/oplus/exif/OplusRational;->mDenominator:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public getDenominator()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/oplus/exif/OplusRational;->mDenominator:J

    return-wide v0
.end method

.method public getNumerator()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/oplus/exif/OplusRational;->mNumerator:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcom/oplus/exif/OplusRational;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toDouble()D
    .locals 4

    .line 66
    iget-wide v0, p0, Lcom/oplus/exif/OplusRational;->mNumerator:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/oplus/exif/OplusRational;->mDenominator:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/oplus/exif/OplusRational;->mNumerator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/exif/OplusRational;->mDenominator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
