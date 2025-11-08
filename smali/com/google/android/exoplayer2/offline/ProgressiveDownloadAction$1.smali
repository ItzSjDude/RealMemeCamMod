.class final Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction$1;
.super Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
.source "ProgressiveDownloadAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic readFromStream(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/offline/DownloadAction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction$1;->readFromStream(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;

    move-result-object p0

    return-object p0
.end method

.method public readFromStream(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 38
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    .line 39
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 40
    new-array v0, v0, [B

    .line 41
    invoke-virtual {p2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 42
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 43
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;-><init>(Landroid/net/Uri;Z[BLjava/lang/String;)V

    return-object v1
.end method
