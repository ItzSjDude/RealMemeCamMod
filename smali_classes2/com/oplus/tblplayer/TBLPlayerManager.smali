.class public final Lcom/oplus/tblplayer/TBLPlayerManager;
.super Ljava/lang/Object;
.source "TBLPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/TBLPlayerManager$PlayerType;
    }
.end annotation


# static fields
.field private static final IJKPLAYER_WRAPPER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/oplus/tblplayer/IMediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TBLPlayerManager"

.field public static final TBL_PLAYER_TYPE_ANDROID:I = 0x3

.field public static final TBL_PLAYER_TYPE_EXO:I = 0x0

.field public static final TBL_PLAYER_TYPE_IJK:I = 0x2

.field public static final TBL_PLAYER_TYPE_REMOTE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "com.oplus.tblplayer.wrapper.ijk.TBLIjkPlayerWrapper"

    .line 35
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oplus/tblplayer/IMediaPlayer;

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating TBLIjkPlayerWrapper class"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const/4 v0, 0x0

    .line 45
    :goto_0
    sput-object v0, Lcom/oplus/tblplayer/TBLPlayerManager;->IJKPLAYER_WRAPPER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlayer(Landroid/content/Context;)Lcom/oplus/tblplayer/IMediaPlayer;
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-static {p0, v0, v0, v0}, Lcom/oplus/tblplayer/TBLPlayerManager;->createPlayerInternal(Landroid/content/Context;III)Lcom/oplus/tblplayer/IMediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static createPlayer(Landroid/content/Context;II)Lcom/oplus/tblplayer/IMediaPlayer;
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-static {p0, p1, p2, v0}, Lcom/oplus/tblplayer/TBLPlayerManager;->createPlayerInternal(Landroid/content/Context;III)Lcom/oplus/tblplayer/IMediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static createPlayer(Landroid/content/Context;III)Lcom/oplus/tblplayer/IMediaPlayer;
    .locals 0

    .line 100
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/tblplayer/TBLPlayerManager;->createPlayerInternal(Landroid/content/Context;III)Lcom/oplus/tblplayer/IMediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method private static createPlayerInternal(Landroid/content/Context;III)Lcom/oplus/tblplayer/IMediaPlayer;
    .locals 3

    const/4 v0, 0x0

    .line 112
    invoke-static {p0, v0}, Lcom/oplus/tblplayer/config/Globals;->maybeInitialize(Landroid/content/Context;Lcom/oplus/tblplayer/config/GlobalsConfig;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TBLPlayer [1.5.9-GALLERY], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBLPlayerManager"

    invoke-static {v1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPlayerInternal: with player type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", with extractor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {p3}, Lcom/oplus/tblplayer/utils/LogUtil;->getExtractorTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", with codec: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {p2}, Lcom/oplus/tblplayer/utils/LogUtil;->getRendererTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v1, v0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    .line 133
    sget-object p1, Lcom/oplus/tblplayer/TBLPlayerManager;->IJKPLAYER_WRAPPER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_0

    .line 135
    :try_start_0
    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/tblplayer/IMediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "createPlayer: TBLIjkPlayerWrapper"

    .line 143
    invoke-static {v1, p1}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 138
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Error instantiating TBLIjkPlayerWrapper class"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 141
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Must implementation module lib-ijkplayer"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unsupported player type."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_2
    new-instance p1, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;

    invoke-direct {p1, p0}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer;-><init>(Landroid/content/Context;)V

    const-string p0, "createPlayer: TBLRemotePlayer"

    .line 129
    invoke-static {v1, p0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_3
    new-instance p1, Lcom/oplus/tblplayer/TBLExoPlayer;

    invoke-direct {p1, p0, p2, p3}, Lcom/oplus/tblplayer/TBLExoPlayer;-><init>(Landroid/content/Context;II)V

    const-string p0, "createPlayer: TBLExoPlayer"

    .line 123
    invoke-static {v1, p0}, Lcom/oplus/tblplayer/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public static initGlobals(Landroid/content/Context;Lcom/oplus/tblplayer/config/GlobalsConfig;)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/tblplayer/config/Globals;->maybeInitialize(Landroid/content/Context;Lcom/oplus/tblplayer/config/GlobalsConfig;)V

    return-void
.end method
