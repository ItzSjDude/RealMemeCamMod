.class final enum Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;
.super Ljava/lang/Enum;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SeekCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

.field public static final enum SEEK_BACKWARD:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

.field public static final enum SEEK_FORWARD_IN_GOP:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

.field public static final enum SEEK_FORWARD_NOT_CACHED:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

.field public static final enum SEEK_FORWARD_OUT_GOP:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 100
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    const/4 v1, 0x0

    const-string v2, "SEEK_FORWARD_NOT_CACHED"

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_NOT_CACHED:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    .line 101
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    const/4 v2, 0x1

    const-string v3, "SEEK_FORWARD_IN_GOP"

    invoke-direct {v0, v3, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_IN_GOP:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    .line 102
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    const/4 v3, 0x2

    const-string v4, "SEEK_FORWARD_OUT_GOP"

    invoke-direct {v0, v4, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_OUT_GOP:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    .line 103
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    const/4 v4, 0x3

    const-string v5, "SEEK_BACKWARD"

    invoke-direct {v0, v5, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_BACKWARD:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    const/4 v0, 0x4

    .line 99
    new-array v0, v0, [Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    sget-object v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_NOT_CACHED:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_IN_GOP:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_FORWARD_OUT_GOP:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->SEEK_BACKWARD:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->$VALUES:[Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;
    .locals 1

    .line 99
    const-class v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    return-object p0
.end method

.method public static values()[Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;
    .locals 1

    .line 99
    sget-object v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->$VALUES:[Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    invoke-virtual {v0}, [Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekCase;

    return-object v0
.end method
