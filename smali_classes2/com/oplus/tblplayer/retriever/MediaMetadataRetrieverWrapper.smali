.class public Lcom/oplus/tblplayer/retriever/MediaMetadataRetrieverWrapper;
.super Ljava/lang/Object;
.source "MediaMetadataRetrieverWrapper.java"

# interfaces
.implements Lcom/oplus/tblplayer/retriever/IMediaMetadataRetriever;


# static fields
.field private static final TAG:Ljava/lang/String; = "TBLMetadataRetriever"


# instance fields
.field private mInternalRetriever:Landroid/media/MediaMetadataRetriever;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/oplus/tblplayer/retriever/MediaMetadataRetrieverWrapper;->mInternalRetriever:Landroid/media/MediaMetadataRetriever;

    return-void
.end method


# virtual methods
.method public extractMetadata(I)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/tblplayer/retriever/MediaMetadataRetrieverWrapper;->mInternalRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCoverPicture(III)Landroid/graphics/Bitmap;
    .locals 8

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 43
    iget-object v2, p0, Lcom/oplus/tblplayer/retriever/MediaMetadataRetrieverWrapper;->mInternalRetriever:Landroid/media/MediaMetadataRetriever;

    const-wide/16 v3, 0x0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEmbeddedPicture()[B
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oplus/tblplayer/retriever/MediaMetadataRetrieverWrapper;->mInternalRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object p0

    return-object p0
.end method

.method public getFrameAtTime(J)Landroid/graphics/Bitmap;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oplus/tblplayer/retriever/MediaMetadataRetrieverWrapper;->mInternalRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getFrameAtTime(JI)Landroid/graphics/Bitmap;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oplus/tblplayer/retriever/MediaMetadataRetrieverWrapper;->mInternalRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;
    .locals 8

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 61
    iget-object v2, p0, Lcom/oplus/tblplayer/retriever/MediaMetadataRetrieverWrapper;->mInternalRetriever:Landroid/media/MediaMetadataRetriever;

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public release()V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/oplus/tblplayer/retriever/MediaMetadataRetrieverWrapper;->mInternalRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oplus/tblplayer/retriever/MediaMetadataRetrieverWrapper;->mInternalRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/tblplayer/retriever/MediaMetadataRetrieverWrapper;->mInternalRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/tblplayer/retriever/MediaMetadataRetrieverWrapper;->mInternalRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    return-void
.end method
