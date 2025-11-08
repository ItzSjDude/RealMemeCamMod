.class public final Lcom/google/android/exoplayer2/ext/av1/Gav1Library;
.super Ljava/lang/Object;
.source "Gav1Library.java"


# static fields
.field private static final LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "goog.exo.gav1"

    .line 25
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/google/android/exoplayer2/util/LibraryLoader;

    const-string v1, "gav1JNI"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/LibraryLoader;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/exoplayer2/ext/av1/Gav1Library;->LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/exoplayer2/ext/av1/Gav1Library;->LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable()Z

    move-result v0

    return v0
.end method
