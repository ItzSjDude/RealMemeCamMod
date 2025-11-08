.class public Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DashManifestParser.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
        "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation


# static fields
.field private static final CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MpdParser"


# instance fields
.field private final contentId:Ljava/lang/String;

.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)(?:/(\\d+))?"

    .line 63
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "CC([1-4])=.*"

    .line 65
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->contentId:Ljava/lang/String;

    .line 85
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 87
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static checkContentTypeConsistency(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1203
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    return p0
.end method

.method private static checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 1181
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    return-object p0
.end method

.method private static filterRedundantIncompleteSchemeDatas(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 1101
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1102
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 1103
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 1104
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1105
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->canReplace(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1108
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1124
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1126
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1127
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1128
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    const-string v0, "application/mp4"

    .line 1130
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_7

    const-string p0, "stpp"

    .line 1132
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "application/ttml+xml"

    return-object p0

    :cond_3
    const-string p0, "wvtt"

    .line 1134
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "application/x-mp4-vtt"

    return-object p0

    :cond_4
    const-string v0, "application/x-rawcc"

    .line 1138
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    const-string p0, "cea708"

    .line 1140
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "application/cea-708"

    return-object p0

    :cond_5
    const-string p0, "eia608"

    .line 1142
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "cea608"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    const-string p0, "application/cea-608"

    return-object p0

    :cond_7
    return-object v1
.end method

.method public static maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1083
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 1088
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1089
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1091
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static mimeTypeIsRawText(Ljava/lang/String;)Z
    .locals 1

    .line 1158
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    .line 1159
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-mp4-vtt"

    .line 1160
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-708"

    .line 1161
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-608"

    .line 1162
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected static parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1313
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1314
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static parseCea608AccessibilityChannel(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1230
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1231
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 1232
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v3, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1234
    sget-object v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1235
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    .line 1236
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1238
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse CEA-608 channel number from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MpdParser"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method protected static parseCea708AccessibilityChannel(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1247
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1248
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 1249
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v3, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1251
    sget-object v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1252
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    .line 1253
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1255
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse CEA-708 service block number from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MpdParser"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method protected static parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1303
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 1307
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "schemeIdUri"

    const-string v1, ""

    .line 1219
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "value"

    .line 1220
    invoke-static {p0, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 1221
    invoke-static {p0, v3, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1223
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1224
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1225
    new-instance p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected static parseDolbyChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "value"

    .line 1342
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1346
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "fa01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "f801"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "a000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "4000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    if-eqz p0, :cond_5

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    return v0

    :cond_2
    const/16 p0, 0x8

    return p0

    :cond_3
    const/4 p0, 0x6

    return p0

    :cond_4
    return v3

    :cond_5
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x185d7c -> :sswitch_3
        0x2cd22f -> :sswitch_2
        0x2f3613 -> :sswitch_1
        0x2fcffc -> :sswitch_0
    .end sparse-switch
.end method

.method protected static parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 1293
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 1297
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->parseXsDuration(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static parseEac3SupplementalProperties(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1263
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1264
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 1265
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v3, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    .line 1266
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    const-string v2, "ec+3"

    .line 1267
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "audio/eac3-joc"

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "audio/eac3"

    return-object p0
.end method

.method protected static parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 2

    const/4 v0, 0x0

    const-string v1, "frameRate"

    .line 1276
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1278
    sget-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1279
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 1280
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    .line 1281
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1282
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    .line 1283
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    :cond_1
    :goto_0
    return p1
.end method

.method protected static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 1318
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1319
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    return p2
.end method

.method protected static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 1323
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1324
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method protected static parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1328
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    move-object p0, p2

    :cond_0
    return-object p0
.end method


# virtual methods
.method protected buildAdaptationSet(IILjava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;"
        }
    .end annotation

    .line 369
    new-instance p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method protected buildEvent(Ljava/lang/String;Ljava/lang/String;JJ[B)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .locals 8

    .line 970
    new-instance p0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p5

    move-wide v5, p3

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object p0
.end method

.method protected buildEventStream(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
    .locals 7

    .line 862
    new-instance p0, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;-><init>(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V

    return-object p0
.end method

.method protected buildFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/exoplayer2/Format;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFIII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    move-object v2, p3

    move-object/from16 v4, p13

    .line 611
    invoke-static {p3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->getSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "audio/eac3"

    .line 613
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    invoke-static/range {p14 .. p14}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseEac3SupplementalProperties(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v3, v0

    .line 616
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v9, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v4, p13

    move/from16 v5, p9

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p11

    .line 617
    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    .line 629
    :cond_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v4, p13

    move/from16 v5, p9

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v9, p11

    move-object/from16 v10, p10

    .line 630
    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    .line 642
    :cond_2
    invoke-static {v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "application/cea-608"

    .line 644
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 645
    invoke-static/range {p12 .. p12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseCea608AccessibilityChannel(Ljava/util/List;)I

    move-result v0

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_3
    const-string v0, "application/cea-708"

    .line 646
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 647
    invoke-static/range {p12 .. p12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseCea708AccessibilityChannel(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    :goto_1
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v4, p13

    move/from16 v5, p9

    move/from16 v6, p11

    move-object/from16 v7, p10

    .line 651
    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    :cond_5
    move-object v3, v0

    :cond_6
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v4, p13

    move/from16 v5, p9

    move/from16 v6, p11

    move-object/from16 v7, p10

    .line 663
    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/Format;->createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method protected buildMediaPresentationDescription(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJJ",
            "Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;"
        }
    .end annotation

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    .line 207
    new-instance v20, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v19}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;-><init>(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)V

    return-object v20
.end method

.method protected buildPeriod(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;"
        }
    .end annotation

    .line 268
    new-instance p0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method protected buildRangedUri(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 6

    .line 1032
    new-instance p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object p0
.end method

.method protected buildRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;"
        }
    .end annotation

    .line 670
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lcom/google/android/exoplayer2/Format;

    .line 671
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeType:Ljava/lang/String;

    .line 673
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeDatas:Ljava/util/ArrayList;

    .line 674
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 675
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    .line 676
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->filterRedundantIncompleteSchemeDatas(Ljava/util/ArrayList;)V

    .line 677
    new-instance p4, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {p4, p3, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 678
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/Format;->copyWithDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    :cond_1
    move-object v3, p0

    .line 680
    iget-object v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->inbandEventStreams:Ljava/util/ArrayList;

    .line 681
    invoke-virtual {v6, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 682
    iget-wide v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->revisionId:J

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->baseUrl:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->newInstance(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object p0

    return-object p0
.end method

.method protected buildSegmentList(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;"
        }
    .end annotation

    .line 771
    new-instance v12, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-object v0, v12

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Ljava/util/List;)V

    return-object v12
.end method

.method protected buildSegmentTemplate(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    .line 819
    new-instance v13, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-object v0, v13

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)V

    return-object v13
.end method

.method protected buildSegmentTimelineElement(JJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;
    .locals 0

    .line 995
    new-instance p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;-><init>(JJ)V

    return-object p0
.end method

.method protected buildSingleSegmentBase(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .locals 11

    .line 720
    new-instance v10, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V

    return-object v10
.end method

.method protected buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .locals 0

    .line 229
    new-instance p0, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected getContentType(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 383
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 384
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    return v0

    .line 386
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    return p0

    .line 388
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 390
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    return v0
.end method

.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 97
    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 98
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const-string p2, "MPD"

    .line 99
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p0

    return-object p0

    .line 100
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "inputStream does not contain a valid media presentation description"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 105
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p0

    return-object p0
.end method

.method protected parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const/4 v0, -0x1

    const-string v1, "id"

    .line 275
    invoke-static {v14, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v16

    .line 276
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    const/4 v13, 0x0

    const-string v2, "mimeType"

    .line 278
    invoke-interface {v14, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "codecs"

    .line 279
    invoke-interface {v14, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "width"

    .line 280
    invoke-static {v14, v2, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    const-string v2, "height"

    .line 281
    invoke-static {v14, v2, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v20

    const/high16 v2, -0x40800000    # -1.0f

    .line 282
    invoke-static {v14, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v21

    const-string v2, "audioSamplingRate"

    .line 284
    invoke-static {v14, v2, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v22

    const-string v12, "lang"

    .line 285
    invoke-interface {v14, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "label"

    .line 286
    invoke-interface {v14, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 288
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 289
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 290
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 291
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 292
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/16 v24, 0x0

    move-object/from16 v6, p2

    move-object/from16 v28, p3

    move/from16 v27, v0

    move v4, v1

    move-object v5, v2

    move-object/from16 v29, v13

    move/from16 v25, v24

    move/from16 v26, v25

    .line 297
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "BaseURL"

    .line 298
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v25, :cond_0

    .line 300
    invoke-static {v14, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    move-object/from16 v32, v0

    move/from16 v25, v1

    :goto_1
    move-object v6, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object v7, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object v1, v14

    move v8, v4

    goto/16 :goto_6

    :cond_0
    :goto_2
    move v2, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object v6, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object v7, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object v1, v14

    goto/16 :goto_5

    :cond_1
    const-string v0, "ContentProtection"

    .line 303
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v0

    .line 305
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v29, v1

    check-cast v29, Ljava/lang/String;

    .line 308
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 309
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const-string v0, "ContentComponent"

    .line 311
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 312
    invoke-interface {v14, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 313
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->checkContentTypeConsistency(II)I

    move-result v0

    move-object/from16 v32, v6

    move-object v6, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object v7, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object v1, v14

    move v8, v0

    goto/16 :goto_6

    :cond_4
    const-string v0, "Role"

    .line 314
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 315
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRole(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    or-int v26, v26, v0

    :cond_5
    :goto_3
    move-object/from16 v32, v6

    goto :goto_1

    :cond_6
    const-string v0, "AudioChannelConfiguration"

    .line 316
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 317
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v27

    goto :goto_3

    :cond_7
    const-string v0, "Accessibility"

    .line 318
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 319
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    const-string v0, "SupplementalProperty"

    .line 320
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 321
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    const-string v0, "Representation"

    .line 322
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, v23

    move/from16 v30, v4

    move-object/from16 v4, v17

    move-object/from16 v31, v5

    move-object/from16 v5, v18

    move-object/from16 v32, v6

    move/from16 v6, v19

    move-object/from16 v33, v7

    move/from16 v7, v20

    move-object/from16 v34, v8

    move/from16 v8, v21

    move-object/from16 v35, v9

    move/from16 v9, v27

    move-object/from16 v36, v10

    move/from16 v10, v22

    move-object/from16 v37, v11

    move-object/from16 v11, v31

    move-object/from16 v38, v12

    move/from16 v12, v26

    move-object/from16 v39, v13

    move-object/from16 v13, v35

    move-object/from16 v14, v28

    .line 324
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    move-result-object v0

    .line 339
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lcom/google/android/exoplayer2/Format;

    .line 340
    invoke-virtual {v15, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->getContentType(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    move/from16 v2, v30

    .line 339
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->checkContentTypeConsistency(II)I

    move-result v1

    move-object/from16 v6, v33

    .line 341
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v1

    move-object/from16 v5, v31

    move-object/from16 v7, v36

    move-object/from16 v1, p1

    goto/16 :goto_6

    :cond_a
    move v2, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object v6, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object/from16 v36, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    const-string v0, "SegmentBase"

    move-object/from16 v1, p1

    .line 342
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 343
    move-object/from16 v0, v28

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-virtual {v15, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v0

    :goto_4
    move-object/from16 v28, v0

    move v8, v2

    move-object/from16 v5, v31

    move-object/from16 v7, v36

    goto :goto_6

    :cond_b
    const-string v0, "SegmentList"

    .line 344
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 345
    move-object/from16 v0, v28

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    invoke-virtual {v15, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    goto :goto_4

    :cond_c
    const-string v0, "SegmentTemplate"

    .line 346
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 347
    move-object/from16 v0, v28

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    invoke-virtual {v15, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    goto :goto_4

    :cond_d
    const-string v0, "InbandEventStream"

    .line 348
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 349
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    move-object/from16 v7, v36

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    move-object/from16 v7, v36

    .line 350
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 351
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_f
    :goto_5
    move v8, v2

    move-object/from16 v5, v31

    :goto_6
    const-string v0, "AdaptationSet"

    .line 353
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 356
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v10, v24

    .line 357
    :goto_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_10

    .line 358
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    iget-object v2, v15, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->contentId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v3, v29

    move-object/from16 v4, v37

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v8

    move-object v3, v9

    move-object/from16 v4, v35

    move-object/from16 v5, v34

    .line 362
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildAdaptationSet(IILjava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v0

    return-object v0

    :cond_11
    move-object v14, v1

    move-object v10, v7

    move v4, v8

    move-object/from16 v8, v34

    move-object/from16 v9, v35

    move-object/from16 v11, v37

    move-object/from16 v12, v38

    move-object/from16 v13, v39

    move-object v7, v6

    move-object/from16 v6, v32

    goto/16 :goto_0
.end method

.method protected parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method protected parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "schemeIdUri"

    const/4 v0, 0x0

    .line 1061
    invoke-static {p1, p0, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    .line 1062
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string p0, "value"

    .line 1063
    invoke-static {p1, p0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    const-string v0, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    .line 1064
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1065
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDolbyChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    .line 1067
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string p0, "AudioChannelConfiguration"

    .line 1068
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1
.end method

.method protected parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    const-string v0, "schemeIdUri"

    .line 413
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 415
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x1d2c5beb

    const/4 v6, 0x2

    if-eq v4, v5, :cond_2

    const v5, 0x2d06c692

    if-eq v4, v5, :cond_1

    const v5, 0x6c0c9d2a

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "urn:mpeg:dash:mp4protection:2011"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v3, v2

    goto :goto_0

    :cond_1
    const-string v4, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v3, v6

    goto :goto_0

    :cond_2
    const-string v4, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v3, v1

    :cond_3
    :goto_0
    if-eqz v3, :cond_6

    if-eq v3, v1, :cond_5

    if-eq v3, v6, :cond_4

    goto :goto_3

    .line 434
    :cond_4
    sget-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    goto :goto_1

    .line 431
    :cond_5
    sget-object v0, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    :goto_1
    move-object v3, p0

    goto :goto_4

    :cond_6
    const-string v0, "value"

    .line 417
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "default_KID"

    .line 418
    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValueIgnorePrefix(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 419
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "00000000-0000-0000-0000-000000000000"

    .line 420
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "\\s+"

    .line 421
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 422
    array-length v4, v3

    new-array v4, v4, [Ljava/util/UUID;

    move v5, v2

    .line 423
    :goto_2
    array-length v6, v3

    if-ge v5, v6, :cond_7

    .line 424
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 426
    :cond_7
    sget-object v3, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-static {v3, v4, p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v3

    .line 427
    sget-object v4, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    move-object v5, p0

    move v6, v2

    move-object v13, v4

    move-object v4, v0

    move-object v0, v13

    goto :goto_5

    :cond_8
    move-object v3, p0

    move-object v5, v3

    move-object v4, v0

    move v6, v2

    move-object v0, v5

    goto :goto_5

    :cond_9
    :goto_3
    move-object v0, p0

    move-object v3, v0

    :goto_4
    move-object v4, v3

    move-object v5, v4

    move v6, v2

    .line 442
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v7, "ms:laurl"

    .line 443
    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v5, "licenseUrl"

    .line 444
    invoke-interface {p1, p0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_6
    move-object v8, v0

    move-object v11, v3

    :goto_7
    move-object v9, v5

    move v12, v6

    goto/16 :goto_9

    :cond_a
    const-string v7, "widevine:license"

    .line 445
    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v6, "robustness_level"

    .line 446
    invoke-interface {p1, p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    const-string v7, "HW"

    .line 447
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v6, v1

    goto :goto_6

    :cond_b
    move v6, v2

    goto :goto_6

    :cond_c
    const/4 v7, 0x4

    if-nez v3, :cond_e

    const-string v8, "pssh"

    .line 449
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTagIgnorePrefix(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 450
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-ne v8, v7, :cond_e

    .line 452
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 453
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v3

    if-nez v3, :cond_d

    const-string v0, "MpdParser"

    const-string v7, "Skipping malformed cenc:pssh data"

    .line 455
    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, p0

    goto :goto_8

    :cond_d
    move-object v11, v0

    :goto_8
    move-object v8, v3

    goto :goto_7

    :cond_e
    if-nez v3, :cond_f

    .line 458
    sget-object v8, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 459
    invoke-virtual {v8, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "mspr:pro"

    .line 460
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 461
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-ne v8, v7, :cond_f

    .line 463
    sget-object v3, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 465
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 464
    invoke-static {v3, v7}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object v3

    goto :goto_6

    .line 467
    :cond_f
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    :goto_9
    const-string v0, "ContentProtection"

    .line 469
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v8, :cond_10

    .line 470
    new-instance p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string v10, "video/mp4"

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[BZ)V

    .line 475
    :cond_10
    invoke-static {v4, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_11
    move-object v0, v8

    move-object v5, v9

    move-object v3, v11

    move v6, v12

    goto/16 :goto_5
.end method

.method protected parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 1

    const/4 p0, 0x0

    const-string v0, "contentType"

    .line 374
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 375
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "audio"

    .line 376
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "video"

    .line 377
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string p1, "text"

    .line 378
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x3

    :cond_3
    :goto_0
    return v0
.end method

.method protected parseEvent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/io/ByteArrayOutputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    const-string v3, "id"

    .line 886
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    const-string v3, "duration"

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 887
    invoke-static {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-string v3, "presentationTime"

    .line 888
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v11, 0x3e8

    move-wide/from16 v13, p4

    .line 889
    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    const-wide/32 v13, 0xf4240

    move-wide v11, v1

    move-wide/from16 v15, p4

    .line 890
    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    const-string v3, "messageData"

    const/4 v4, 0x0

    .line 892
    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    move-object/from16 v5, p6

    .line 893
    invoke-virtual {v4, v0, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseEventObject(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v0

    .line 895
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-nez v3, :cond_0

    goto :goto_0

    .line 901
    :cond_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    move-object v11, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 896
    invoke-virtual/range {v4 .. v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildEvent(Ljava/lang/String;Ljava/lang/String;JJ[B)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object v0

    .line 894
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected parseEventObject(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 915
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 916
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    const-string v0, "UTF-8"

    .line 917
    invoke-interface {p0, p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 920
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    :goto_0
    const-string v0, "Event"

    .line 921
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 922
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 958
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 955
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_2

    .line 952
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_2

    .line 949
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_2

    .line 946
    :pswitch_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_2

    .line 943
    :pswitch_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_2

    .line 940
    :pswitch_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 937
    :pswitch_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 930
    :pswitch_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 931
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 932
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 933
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 932
    invoke-interface {p0, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 927
    :pswitch_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    goto :goto_2

    :pswitch_a
    const/4 v0, 0x0

    .line 924
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 962
    :cond_0
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    goto/16 :goto_0

    .line 964
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 965
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected parseEventStream(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "schemeIdUri"

    .line 834
    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    .line 835
    invoke-static {p1, v2, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "timescale"

    const-wide/16 v3, 0x1

    .line 836
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    .line 837
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 838
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x200

    invoke-direct {v12, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 840
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "Event"

    .line 841
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v0

    move-wide v6, v9

    move-object v8, v12

    .line 843
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseEvent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;

    move-result-object v2

    .line 844
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 846
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    const-string v2, "EventStream"

    .line 848
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 850
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result p1

    new-array v7, p1, [J

    .line 851
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result p1

    new-array v8, p1, [Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    const/4 p1, 0x0

    .line 852
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 853
    invoke-interface {v11, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 854
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v7, p1

    .line 855
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    aput-object v2, v8, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move-object v2, p0

    move-object v3, v1

    move-object v4, v0

    move-wide v5, v9

    .line 857
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildEventStream(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    move-result-object p0

    return-object p0
.end method

.method protected parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 2

    const-string v0, "sourceURL"

    const-string v1, "range"

    .line 1008
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object p0

    return-object p0
.end method

.method protected parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-string v3, "availabilityStartTime"

    .line 111
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    const-string v3, "mediaPresentationDuration"

    .line 112
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    const-string v7, "minBufferTime"

    .line 113
    invoke-static {v0, v7, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const/4 v7, 0x0

    const-string v8, "type"

    .line 114
    invoke-interface {v0, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    if-eqz v8, :cond_0

    const-string v13, "dynamic"

    .line 115
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    move v13, v12

    :goto_0
    if-eqz v13, :cond_1

    const-string v8, "minimumUpdatePeriod"

    .line 116
    invoke-static {v0, v8, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    goto :goto_1

    :cond_1
    move-wide v14, v1

    :goto_1
    if-eqz v13, :cond_2

    const-string v8, "timeShiftBufferDepth"

    .line 119
    invoke-static {v0, v8, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v1

    :goto_2
    if-eqz v13, :cond_3

    const-string v8, "suggestedPresentationDelay"

    .line 121
    invoke-static {v0, v8, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    goto :goto_3

    :cond_3
    move-wide/from16 v18, v1

    :goto_3
    const-string v8, "publishTime"

    .line 122
    invoke-static {v0, v8, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v20

    .line 127
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v13, :cond_4

    move-wide/from16 v22, v1

    goto :goto_4

    :cond_4
    const-wide/16 v22, 0x0

    :goto_4
    move-object/from16 v25, v7

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-wide/from16 v1, v22

    move-object/from16 v7, p2

    move/from16 v22, v12

    .line 132
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v11, "BaseURL"

    .line 133
    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v12, :cond_5

    .line 135
    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-wide/from16 v30, v14

    const/4 v12, 0x1

    goto/16 :goto_9

    :cond_5
    move-wide/from16 v28, v1

    move/from16 p2, v12

    move-wide/from16 v30, v14

    goto/16 :goto_8

    :cond_6
    const-string v11, "ProgramInformation"

    .line 138
    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 139
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseProgramInformation(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;

    move-result-object v11

    move-object/from16 v25, v11

    :goto_6
    move-wide/from16 v30, v14

    goto/16 :goto_9

    :cond_7
    const-string v11, "UTCTiming"

    .line 140
    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 141
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-result-object v11

    move-object/from16 v26, v11

    goto :goto_6

    :cond_8
    const-string v11, "Location"

    .line 142
    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 143
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v27, v11

    goto :goto_6

    :cond_9
    const-string v11, "Period"

    .line 144
    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    if-nez v22, :cond_d

    move-object/from16 v11, p0

    move/from16 p2, v12

    .line 145
    invoke-virtual {v11, v0, v7, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;

    move-result-object v12

    move-wide/from16 v28, v1

    .line 146
    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-wide/from16 v30, v14

    .line 147
    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v14, v23

    if-nez v2, :cond_b

    if-eqz v13, :cond_a

    const/16 v22, 0x1

    goto :goto_8

    .line 153
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine start of period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_b
    iget-object v2, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v14, v23

    if-nez v2, :cond_c

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_7

    .line 157
    :cond_c
    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    add-long/2addr v11, v14

    .line 159
    :goto_7
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v28, v11

    goto :goto_8

    :cond_d
    move-wide/from16 v28, v1

    move/from16 p2, v12

    move-wide/from16 v30, v14

    .line 162
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_8
    move/from16 v12, p2

    move-wide/from16 v1, v28

    :goto_9
    const-string v11, "MPD"

    .line 164
    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v14

    if-nez v0, :cond_10

    cmp-long v0, v1, v14

    if-eqz v0, :cond_e

    goto :goto_b

    :cond_e
    if-eqz v13, :cond_f

    goto :goto_a

    .line 171
    :cond_f
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Unable to determine duration of static manifest."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_a
    move-wide v1, v3

    .line 175
    :goto_b
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    move-object/from16 v4, p0

    move-object/from16 v23, v8

    move-wide v7, v1

    move v11, v13

    move-wide/from16 v12, v30

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    move-object/from16 v22, v27

    .line 179
    invoke-virtual/range {v4 .. v23}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildMediaPresentationDescription(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v0

    return-object v0

    .line 176
    :cond_11
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "No periods found."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v14, v30

    goto/16 :goto_5
.end method

.method protected parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "J)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "id"

    .line 234
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "start"

    .line 235
    invoke-static {p1, v1, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    const-string p3, "duration"

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 236
    invoke-static {p1, p3, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide p3

    .line 238
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 239
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move-object v2, v0

    .line 242
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v8, "BaseURL"

    .line 243
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v1, :cond_7

    .line 245
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v8, "AdaptationSet"

    .line 248
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 249
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v8, "EventStream"

    .line 250
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 251
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseEventStream(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v8, "SegmentBase"

    .line 252
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 253
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string v8, "SegmentList"

    .line 254
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 255
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v2

    goto :goto_0

    :cond_5
    const-string v8, "SegmentTemplate"

    .line 256
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 257
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v2

    goto :goto_0

    .line 259
    :cond_6
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_7
    :goto_0
    const-string v8, "Period"

    .line 261
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v2, p0

    .line 263
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildPeriod(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected parseProgramInformation(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 p0, 0x0

    const-string v0, "moreInformationURL"

    .line 1040
    invoke-static {p1, v0, p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "lang"

    .line 1041
    invoke-static {p1, v0, p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, v0

    .line 1043
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "Title"

    .line 1044
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1045
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    :goto_1
    move-object v4, v1

    goto :goto_2

    :cond_0
    const-string v2, "Source"

    .line 1046
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1047
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v2, "Copyright"

    .line 1048
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1049
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1051
    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :goto_2
    const-string v1, "ProgramInformation"

    .line 1053
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1054
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;

    move-object v1, p1

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    move-object v1, v4

    goto :goto_0
.end method

.method protected parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 7

    const/4 v0, 0x0

    .line 1017
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1020
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 p2, -0x1

    if-eqz p1, :cond_0

    const-string v0, "-"

    .line 1022
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1023
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1024
    array-length v3, p1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 p2, 0x1

    .line 1025
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    sub-long/2addr p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr p1, v3

    move-wide v5, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :cond_1
    move-wide v5, p2

    :goto_0
    move-wide v3, v0

    move-object v1, p0

    .line 1028
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildRangedUri(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object p0

    return-object p0
.end method

.method protected parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-string v3, "id"

    .line 526
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bandwidth"

    const/4 v5, -0x1

    .line 527
    invoke-static {v1, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    const-string v4, "mimeType"

    move-object/from16 v5, p4

    .line 529
    invoke-static {v1, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "codecs"

    move-object/from16 v6, p5

    .line 530
    invoke-static {v1, v5, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v5, "width"

    move/from16 v6, p6

    .line 531
    invoke-static {v1, v5, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "height"

    move/from16 v7, p7

    .line 532
    invoke-static {v1, v6, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    move/from16 v7, p8

    .line 533
    invoke-static {v1, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v7

    const-string v8, "audioSamplingRate"

    move/from16 v10, p10

    .line 535
    invoke-static {v1, v8, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 537
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 538
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 539
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    move/from16 v16, p9

    move-object/from16 v11, p14

    move-object/from16 v17, v2

    move-object/from16 v2, p2

    .line 543
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 p4, v13

    const-string v13, "BaseURL"

    .line 544
    invoke-static {v1, v13}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    if-nez v10, :cond_9

    .line 546
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_0
    const-string v13, "AudioChannelConfiguration"

    .line 549
    invoke-static {v1, v13}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 550
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v13

    move-object/from16 v16, v2

    move-object/from16 v18, v17

    goto/16 :goto_2

    :cond_1
    const-string v13, "SegmentBase"

    .line 551
    invoke-static {v1, v13}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 552
    check-cast v11, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-virtual {v0, v1, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v11

    goto :goto_1

    :cond_2
    const-string v13, "SegmentList"

    .line 553
    invoke-static {v1, v13}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 554
    check-cast v11, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    invoke-virtual {v0, v1, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v11

    goto :goto_1

    :cond_3
    const-string v13, "SegmentTemplate"

    .line 555
    invoke-static {v1, v13}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 556
    check-cast v11, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    invoke-virtual {v0, v1, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v11

    goto :goto_1

    :cond_4
    const-string v13, "ContentProtection"

    .line 557
    invoke-static {v1, v13}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 558
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v13

    .line 559
    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 560
    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 562
    :cond_5
    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 563
    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string v0, "InbandEventStream"

    .line 565
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 566
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const-string v0, "SupplementalProperty"

    .line 567
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 568
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 570
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_9
    :goto_1
    move/from16 v13, v16

    move-object/from16 v18, v17

    move-object/from16 v16, v2

    :goto_2
    move-object/from16 v17, v11

    const-string v0, "Representation"

    .line 572
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v13

    move-object/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v19, v12

    move-object/from16 v12, p13

    move-object/from16 v13, p4

    move-object/from16 v20, v14

    move-object/from16 v14, v19

    .line 575
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v17, :cond_a

    move-object/from16 v1, v17

    goto :goto_3

    .line 590
    :cond_a
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>()V

    .line 592
    :goto_3
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    const-wide/16 v3, -0x1

    move-object/from16 p0, v2

    move-object/from16 p1, v0

    move-object/from16 p2, v16

    move-object/from16 p3, v1

    move-object/from16 p4, v18

    move-object/from16 p5, v15

    move-object/from16 p6, v20

    move-wide/from16 p7, v3

    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    return-object v2

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v11, v17

    move-object/from16 v17, v18

    move/from16 v16, v13

    move-object/from16 v13, p4

    goto/16 :goto_0
.end method

.method protected parseRole(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    const-string v0, "schemeIdUri"

    .line 487
    invoke-static {p1, v0, p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    .line 488
    invoke-static {p1, v1, p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 490
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Role"

    .line 491
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "urn:mpeg:dash:role:2011"

    .line 492
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "main"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 691
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->timescale:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    .line 692
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->presentationTimeOffset:J

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    const-string v8, "presentationTimeOffset"

    invoke-static {v0, v8, v6, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v1, :cond_2

    .line 695
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexStart:J

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    if-eqz v1, :cond_3

    .line 696
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexLength:J

    :cond_3
    const/4 v8, 0x0

    const-string v13, "indexRange"

    .line 697
    invoke-interface {v0, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v4, "-"

    .line 699
    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 700
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    .line 701
    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long/2addr v13, v5

    add-long/2addr v13, v2

    move-wide v15, v13

    move-wide v13, v5

    goto :goto_3

    :cond_4
    move-wide v15, v4

    move-wide v13, v6

    :goto_3
    if-eqz v1, :cond_5

    .line 704
    iget-object v8, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->initialization:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 706
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 707
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 708
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    move-object v8, v1

    goto :goto_4

    .line 710
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_4
    const-string v1, "SegmentBase"

    .line 712
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v7, p0

    .line 714
    invoke-virtual/range {v7 .. v16}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildSingleSegmentBase(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v0

    return-object v0
.end method

.method protected parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 727
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->timescale:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    if-eqz v1, :cond_1

    .line 728
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->presentationTimeOffset:J

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    :goto_1
    const-string v6, "presentationTimeOffset"

    invoke-static {v0, v6, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v1, :cond_2

    .line 730
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->duration:J

    goto :goto_2

    :cond_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v6, "duration"

    invoke-static {v0, v6, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    if-eqz v1, :cond_3

    .line 731
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->startNumber:J

    :cond_3
    const-string v4, "startNumber"

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 738
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v5, "Initialization"

    .line 739
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 740
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    goto :goto_3

    :cond_5
    const-string v5, "SegmentTimeline"

    .line 741
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 742
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    goto :goto_3

    :cond_6
    const-string v5, "SegmentURL"

    .line 743
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v2, :cond_7

    .line 745
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 747
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 749
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_3
    const-string v5, "SegmentList"

    .line 751
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_c

    if-eqz v3, :cond_9

    goto :goto_4

    .line 754
    :cond_9
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->initialization:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    :goto_4
    if-eqz v4, :cond_a

    goto :goto_5

    .line 755
    :cond_a
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->segmentTimeline:Ljava/util/List;

    :goto_5
    if-eqz v2, :cond_b

    goto :goto_6

    .line 756
    :cond_b
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    :cond_c
    :goto_6
    move-object/from16 v18, v2

    move-object v8, v3

    move-object/from16 v17, v4

    move-object/from16 v7, p0

    .line 759
    invoke-virtual/range {v7 .. v18}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildSegmentList(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    return-object v0
.end method

.method protected parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_0

    .line 777
    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->timescale:J

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-string v7, "timescale"

    invoke-static {v1, v7, v5, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    if-eqz v2, :cond_1

    .line 778
    iget-wide v7, v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->presentationTimeOffset:J

    goto :goto_1

    :cond_1
    const-wide/16 v7, 0x0

    :goto_1
    const-string v9, "presentationTimeOffset"

    invoke-static {v1, v9, v7, v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    if-eqz v2, :cond_2

    .line 780
    iget-wide v9, v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->duration:J

    goto :goto_2

    :cond_2
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v11, "duration"

    invoke-static {v1, v11, v9, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    if-eqz v2, :cond_3

    .line 781
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->startNumber:J

    :cond_3
    const-string v11, "startNumber"

    invoke-static {v1, v11, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 782
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    goto :goto_3

    :cond_4
    move-object v4, v3

    :goto_3
    const-string v13, "media"

    invoke-virtual {v0, v1, v13, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object v13

    if-eqz v2, :cond_5

    .line 784
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    goto :goto_4

    :cond_5
    move-object v4, v3

    :goto_4
    const-string v14, "initialization"

    invoke-virtual {v0, v1, v14, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object v14

    move-object v4, v3

    .line 791
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v15, "Initialization"

    .line 792
    invoke-static {v1, v15}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 793
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    goto :goto_5

    :cond_7
    const-string v15, "SegmentTimeline"

    .line 794
    invoke-static {v1, v15}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 795
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    goto :goto_5

    .line 797
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_5
    const-string v15, "SegmentTemplate"

    .line 799
    invoke-static {v1, v15}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v2, :cond_b

    if-eqz v3, :cond_9

    goto :goto_6

    .line 802
    :cond_9
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initialization:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    :goto_6
    if-eqz v4, :cond_a

    goto :goto_7

    .line 803
    :cond_a
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    :cond_b
    :goto_7
    move-object v1, v3

    move-object v15, v4

    move-object/from16 v0, p0

    move-wide v2, v5

    move-wide v4, v7

    move-wide v6, v11

    move-wide v8, v9

    move-object v10, v15

    move-object v11, v14

    move-object v12, v13

    .line 806
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildSegmentTemplate(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    return-object v0
.end method

.method protected parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 975
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    .line 978
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "S"

    .line 979
    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "t"

    .line 980
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-string v5, "d"

    .line 981
    invoke-static {p1, v5, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v5, 0x0

    const-string v6, "r"

    .line 982
    invoke-static {p1, v6, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    :goto_0
    if-ge v5, v6, :cond_2

    .line 984
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildSegmentTimelineElement(JJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 988
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_2
    const-string v3, "SegmentTimeline"

    .line 990
    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0
.end method

.method protected parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 2

    const-string v0, "media"

    const-string v1, "mediaRange"

    .line 1012
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object p0

    return-object p0
.end method

.method protected parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    .locals 0

    const/4 p0, 0x0

    .line 1000
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1002
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->compile(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p3
.end method

.method protected parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 223
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    .line 224
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-result-object p0

    return-object p0
.end method
