.class public Lcom/heytap/accessory/b/b/a;
.super Ljava/lang/Object;
.source "ServiceProfileBuilder.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/heytap/accessory/bean/ServiceProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ANY"

    const-string v1, "ONE_ACCESSORY"

    const-string v2, "ONE_PEERAGENT"

    .line 49
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heytap/accessory/b/b/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/ServiceProfile;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2242
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2245
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    move v1, v0

    .line 2246
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 2247
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 236
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    rem-int/lit16 p0, p0, 0xf5

    add-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/b/f;
        }
    .end annotation

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    new-instance v0, Lcom/heytap/accessory/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid attribute :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/heytap/accessory/b/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/b/f;
        }
    .end annotation

    const-string v0, "serviceChannel/id"

    .line 177
    invoke-static {v0, p0}, Lcom/heytap/accessory/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 181
    :catch_0
    new-instance v0, Lcom/heytap/accessory/b/f;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Invalid XML attributeserviceChannel/id value:"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/heytap/accessory/b/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/b/f;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 190
    :cond_0
    sget-object v1, Lcom/heytap/accessory/b/b/a;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 193
    :cond_1
    sget-object v1, Lcom/heytap/accessory/b/b/a;->a:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 196
    :cond_2
    sget-object v1, Lcom/heytap/accessory/b/b/a;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 199
    :cond_3
    new-instance v0, Lcom/heytap/accessory/b/f;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Invalid XML attributeserviceProfile / serviceLimit value:"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/heytap/accessory/b/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/b/f;
        }
    .end annotation

    const-string v0, "impl"

    const/4 v1, 0x0

    .line 89
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v0, v2}, Lcom/heytap/accessory/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {v0, v2}, Lcom/heytap/accessory/bean/ServiceProfile;->setServiceImpl(Ljava/lang/String;)V

    const-string v0, "name"

    .line 93
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "profile/name"

    .line 94
    invoke-static {v2, v0}, Lcom/heytap/accessory/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {v2, v0}, Lcom/heytap/accessory/bean/ServiceProfile;->setName(Ljava/lang/String;)V

    const-string v0, "urn"

    .line 98
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "profile/id"

    .line 100
    invoke-static {v5, v3}, Lcom/heytap/accessory/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v5, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {v5, v3}, Lcom/heytap/accessory/bean/ServiceProfile;->setId(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "profile/version"

    .line 103
    invoke-static {v2, v0}, Lcom/heytap/accessory/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {v2, v0}, Lcom/heytap/accessory/bean/ServiceProfile;->setVersion(Ljava/lang/String;)V

    const-string v0, "limit"

    .line 106
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/accessory/b/b/a;->c(Ljava/lang/String;)I

    move-result v0

    .line 107
    iget-object v2, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {v2, v0}, Lcom/heytap/accessory/bean/ServiceProfile;->setServiceLimit(I)V

    const-string v0, "timeout"

    .line 109
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/accessory/b/b/a;->d(Ljava/lang/String;)I

    move-result v0

    .line 110
    iget-object v2, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {v2, v0}, Lcom/heytap/accessory/bean/ServiceProfile;->setServiceTimeout(I)V

    const-string v0, "connectionType"

    .line 112
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "transport/type"

    .line 113
    invoke-static {v2, v0}, Lcom/heytap/accessory/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v0}, Lcom/heytap/accessory/b/j;->a(Ljava/lang/String;)I

    move-result v0

    .line 115
    iget-object v2, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {v2, v0}, Lcom/heytap/accessory/bean/ServiceProfile;->setTransportType(I)V

    const-string v0, "awakenable"

    .line 117
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/heytap/accessory/b/b/a;->e(Ljava/lang/String;)I

    move-result v0

    .line 119
    iget-object v2, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {v2, v0}, Lcom/heytap/accessory/bean/ServiceProfile;->setAwakenable(I)V

    const-string v0, "features"

    .line 121
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "\\|"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 124
    array-length v0, p1

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v1, p1, v4

    const-string v2, "MSGEXPY"

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object p0, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {p0, v3}, Lcom/heytap/accessory/bean/ServiceProfile;->setIsMexSupported(I)V

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static d(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/b/f;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 207
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    return v1

    :cond_1
    const-string v1, "ServiceProfileBuilder"

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Negetive service timeout:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " initializing timeout to 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 214
    :catch_0
    new-instance v0, Lcom/heytap/accessory/b/f;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Invalid XML attributeserviceProfile / serviceTimeout value:"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/heytap/accessory/b/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static e(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/b/f;
        }
    .end annotation

    .line 254
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "enable"

    .line 257
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "disable"

    .line 260
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 263
    :cond_2
    new-instance v0, Lcom/heytap/accessory/b/f;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Invalid XML attribute profile / awakenable value:"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/heytap/accessory/b/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 80
    new-instance v0, Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-direct {v0}, Lcom/heytap/accessory/bean/ServiceProfile;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    return-void
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/b/f;
        }
    .end annotation

    .line 62
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "provider"

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {v0, v2}, Lcom/heytap/accessory/bean/ServiceProfile;->setRole(I)V

    .line 65
    invoke-direct {p0, p1}, Lcom/heytap/accessory/b/b/a;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void

    :cond_0
    const-string v1, "consumer"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {v0, v3}, Lcom/heytap/accessory/bean/ServiceProfile;->setRole(I)V

    .line 68
    invoke-direct {p0, p1}, Lcom/heytap/accessory/b/b/a;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void

    :cond_1
    const-string v1, "channel"

    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    const-string v1, "id"

    .line 1134
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/accessory/b/b/a;->b(Ljava/lang/String;)I

    move-result v1

    const-string v4, "priority"

    .line 1135
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "qosPriority"

    .line 1137
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v5, "serviceChannel/priority"

    .line 1219
    invoke-static {v5, v4}, Lcom/heytap/accessory/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Low"

    .line 1220
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    const-string v5, "Medium"

    .line 1223
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v3

    goto :goto_0

    :cond_4
    const-string v5, "High"

    .line 1226
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v4, v6

    :goto_0
    const-string v5, "reliability"

    .line 1140
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v5, "qosType"

    .line 1142
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    const-string v7, "serviceChannel / reliability"

    .line 1267
    invoke-static {v7, v5}, Lcom/heytap/accessory/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "enable"

    .line 1268
    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v5, 0x5

    goto :goto_1

    :cond_6
    const-string v7, "disable"

    .line 1271
    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v5, 0x4

    :goto_1
    const-string v7, "class"

    .line 1145
    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    :goto_2
    move v2, v3

    goto :goto_3

    :cond_7
    const-string v0, "filetransfer"

    .line 2163
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    const-string v0, "streaming"

    .line 2165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v2, v6

    goto :goto_3

    :cond_9
    const-string v0, "default"

    .line 2167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    .line 2170
    :cond_a
    invoke-static {p1}, Lcom/heytap/accessory/b/b/a;->a(Ljava/lang/String;)I

    move-result v2

    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "user defined value "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceProfileBuilder"

    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :goto_3
    iget-object p1, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/ServiceProfile;->getServiceChannelList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_b

    .line 1149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    iget-object v0, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {v0, p1}, Lcom/heytap/accessory/bean/ServiceProfile;->setServiceChannelList(Ljava/util/List;)V

    .line 1153
    :cond_b
    new-instance v0, Lcom/heytap/accessory/bean/ServiceChannel;

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/heytap/accessory/bean/ServiceChannel;-><init>(IIII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1157
    iget-object p0, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {p0, v3}, Lcom/heytap/accessory/bean/ServiceProfile;->setIsSocketSupported(I)V

    goto :goto_4

    .line 1154
    :cond_c
    new-instance p0, Lcom/heytap/accessory/b/f;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Duplicate Service channel description for channel ID:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/heytap/accessory/b/f;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1274
    :cond_d
    new-instance p0, Lcom/heytap/accessory/b/f;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid XML attributeserviceChannel / reliability value:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/heytap/accessory/b/f;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1229
    :cond_e
    new-instance p0, Lcom/heytap/accessory/b/f;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid XML attributeserviceChannel / priority value:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/heytap/accessory/b/f;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_4
    return-void
.end method

.method public b()Lcom/heytap/accessory/bean/ServiceProfile;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/heytap/accessory/b/b/a;->b:Lcom/heytap/accessory/bean/ServiceProfile;

    return-object p0
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 1

    .line 75
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "provider"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 76
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "consumer"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
