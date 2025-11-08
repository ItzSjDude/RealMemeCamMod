.class public Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;
.super Ljava/lang/Object;
.source "FFmpegMediaMetadataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Metadata"
.end annotation


# static fields
.field public static final BOOLEAN_VAL:I = 0x3

.field public static final BYTE_ARRAY_VAL:I = 0x7

.field public static final DATE_VAL:I = 0x6

.field public static final DOUBLE_VAL:I = 0x5

.field public static final INTEGER_VAL:I = 0x2

.field public static final LONG_VAL:I = 0x4

.field public static final STRING_VAL:I = 0x1


# instance fields
.field private mParcel:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;


# direct methods
.method public constructor <init>(Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->this$0:Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkMetadataId(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private checkType(Ljava/lang/String;I)V
    .locals 2

    .line 1001
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-void

    .line 1005
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but got "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAll()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 915
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    return-object p0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x3

    .line 937
    invoke-direct {p0, p1, v0}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->checkType(Ljava/lang/String;I)V

    .line 938
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x7

    .line 961
    invoke-direct {p0, p1, v0}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->checkType(Ljava/lang/String;I)V

    .line 962
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    const/4 v0, 0x6

    .line 969
    invoke-direct {p0, p1, v0}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->checkType(Ljava/lang/String;I)V

    .line 970
    iget-object v0, p0, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 971
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 973
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 974
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0

    .line 976
    :cond_0
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    .line 977
    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    .line 979
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 980
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 1

    const/4 v0, 0x5

    .line 953
    invoke-direct {p0, p1, v0}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->checkType(Ljava/lang/String;I)V

    .line 954
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x2

    .line 929
    invoke-direct {p0, p1, v0}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->checkType(Ljava/lang/String;I)V

    .line 930
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 1

    const/4 v0, 0x4

    .line 945
    invoke-direct {p0, p1, v0}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->checkType(Ljava/lang/String;I)V

    .line 946
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 921
    invoke-direct {p0, p1, v0}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->checkType(Ljava/lang/String;I)V

    .line 922
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 2

    .line 902
    invoke-direct {p0, p1}, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->checkMetadataId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object p0, p0, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 903
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parse(Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 893
    :cond_0
    iput-object p1, p0, Lcom/oplus/tblplayer/ffmpeg/FFmpegMediaMetadataRetriever$Metadata;->mParcel:Ljava/util/HashMap;

    const/4 p0, 0x1

    return p0
.end method
