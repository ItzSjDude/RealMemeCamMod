.class public Lcom/oplus/tblplayer/misc/MediaUrl;
.super Ljava/lang/Object;
.source "MediaUrl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/misc/MediaUrl$CacheKeyFactory;,
        Lcom/oplus/tblplayer/misc/MediaUrl$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/tblplayer/misc/MediaUrl;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CACHE_KEY_FACTORY:Lcom/oplus/tblplayer/misc/MediaUrl$CacheKeyFactory;

.field private static final SCHEME_ASSET:Ljava/lang/String; = "asset"

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SCHEME_DATA:Ljava/lang/String; = "data"

.field private static final SCHEME_LOCAL:Ljava/lang/String; = "file"

.field private static final SCHEME_RAW:Ljava/lang/String; = "rawresource"

.field private static final SCHEME_RTMP:Ljava/lang/String; = "rtmp"


# instance fields
.field protected final backupUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/tblplayer/misc/MediaUrl;",
            ">;"
        }
    .end annotation
.end field

.field private backupUrlListIndex:I

.field protected final customCacheKey:Ljava/lang/String;

.field protected final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final overrideExtension:Ljava/lang/String;

.field protected final uri:Landroid/net/Uri;

.field protected final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-object v0, Lcom/oplus/tblplayer/misc/-$$Lambda$MediaUrl$yEz6mtt3iXFScWFrdTdPDv4sveU;->INSTANCE:Lcom/oplus/tblplayer/misc/-$$Lambda$MediaUrl$yEz6mtt3iXFScWFrdTdPDv4sveU;

    sput-object v0, Lcom/oplus/tblplayer/misc/MediaUrl;->DEFAULT_CACHE_KEY_FACTORY:Lcom/oplus/tblplayer/misc/MediaUrl$CacheKeyFactory;

    .line 97
    new-instance v0, Lcom/oplus/tblplayer/misc/MediaUrl$1;

    invoke-direct {v0}, Lcom/oplus/tblplayer/misc/MediaUrl$1;-><init>()V

    sput-object v0, Lcom/oplus/tblplayer/misc/MediaUrl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/tblplayer/misc/MediaUrl;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->backupUrlListIndex:I

    .line 63
    iput-object p1, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->uri:Landroid/net/Uri;

    .line 64
    iput-object p2, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->overrideExtension:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->userAgent:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->headers:Ljava/util/Map;

    .line 67
    iput-object p5, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->customCacheKey:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->backupUrlList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Lcom/oplus/tblplayer/misc/MediaUrl$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p6}, Lcom/oplus/tblplayer/misc/MediaUrl;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->backupUrlListIndex:I

    .line 74
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->uri:Landroid/net/Uri;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->overrideExtension:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->userAgent:Ljava/lang/String;

    .line 77
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->headers:Ljava/util/Map;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->customCacheKey:Ljava/lang/String;

    .line 79
    const-class v0, Lcom/oplus/tblplayer/misc/MediaUrl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->backupUrlList:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 213
    :cond_1
    check-cast p1, Lcom/oplus/tblplayer/misc/MediaUrl;

    .line 214
    iget-object v2, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/oplus/tblplayer/misc/MediaUrl;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->overrideExtension:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/tblplayer/misc/MediaUrl;->overrideExtension:Ljava/lang/String;

    .line 215
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->headers:Ljava/util/Map;

    iget-object v3, p1, Lcom/oplus/tblplayer/misc/MediaUrl;->headers:Ljava/util/Map;

    .line 216
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->customCacheKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/tblplayer/misc/MediaUrl;->customCacheKey:Ljava/lang/String;

    .line 217
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCustomCacheKey()Ljava/lang/String;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->customCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object p0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public getOverrideExtension()Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->overrideExtension:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized hasNextBackupSource()Z
    .locals 3

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->backupUrlList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->backupUrlList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->backupUrlListIndex:I

    iget-object v2, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->backupUrlList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 146
    iget-object v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->backupUrlList:Ljava/util/List;

    iget v2, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->backupUrlListIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 147
    monitor-exit p0

    return v0

    .line 151
    :cond_1
    monitor-exit p0

    return v1

    .line 142
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 223
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->overrideExtension:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->headers:Ljava/util/Map;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->customCacheKey:Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public inferContentType()I
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/oplus/tblplayer/utils/AssertUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "asset"

    .line 168
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const-string v1, "content"

    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    const-string v1, "data"

    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p0, 0x8

    return p0

    :cond_3
    const-string v1, "rawresource"

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x7

    return p0

    :cond_4
    const-string v1, "rtmp"

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x9

    return p0

    .line 180
    :cond_5
    iget-object v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->uri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->overrideExtension:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_6
    :goto_0
    const/4 p0, 0x4

    return p0
.end method

.method public isHttpRequestHeadersEmpty()Z
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->headers:Ljava/util/Map;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_0

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

.method public isLocalFileUri()Z
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/oplus/tblplayer/misc/MediaUrl;->inferContentType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized nextBackupSource()Lcom/oplus/tblplayer/misc/MediaUrl;
    .locals 3

    monitor-enter p0

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/tblplayer/misc/MediaUrl;->hasNextBackupSource()Z

    move-result v0

    invoke-static {v0}, Lcom/oplus/tblplayer/utils/AssertUtil;->checkState(Z)V

    .line 159
    iget-object v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->backupUrlList:Ljava/util/List;

    iget v1, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->backupUrlListIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->backupUrlListIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/tblplayer/misc/MediaUrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 85
    iget-object p2, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->overrideExtension:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->userAgent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->headers:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 88
    iget-object p2, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->customCacheKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object p0, p0, Lcom/oplus/tblplayer/misc/MediaUrl;->backupUrlList:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
