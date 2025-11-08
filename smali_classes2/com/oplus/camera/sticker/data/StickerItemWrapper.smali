.class public Lcom/oplus/camera/sticker/data/StickerItemWrapper;
.super Lcom/oplus/camera/sticker/data/StickerItem;
.source "StickerItemWrapper.java"

# interfaces
.implements Lcom/oplus/camera/sticker/download/thumbnail/a;


# static fields
.field private static final TAG:Ljava/lang/String; = "StickerItemWrapper"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mLogoPath:Ljava/lang/String;

.field private mThumbnailPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/oplus/camera/sticker/data/StickerItem;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->mFilePath:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->mThumbnailPath:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->mLogoPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownloadFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 106
    invoke-static {p2}, Lcom/oplus/camera/sticker/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 107
    sget-object p2, Lcom/oplus/camera/sticker/c/b;->l:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/oplus/camera/sticker/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFirstDownloadFileMd5()Ljava/lang/String;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getThumbnailMd5()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFirstDownloadUrl()Ljava/lang/String;
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLogoPath()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->mLogoPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondDownloadFileMd5()Ljava/lang/String;
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getLogoMd5()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecondDownloadUrl()Ljava/lang/String;
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getLogoUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->mThumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method public onFirstDownloadFinish(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 75
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 76
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/oplus/camera/sticker/provider/FileProvider;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "thumbnail_file_uri"

    .line 77
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "thumbnail_path"

    .line 78
    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getStickerUUID()Ljava/lang/String;

    move-result-object p0

    const-string p3, "uuid"

    invoke-static {p1, p3, p0, p2}, Lcom/oplus/camera/sticker/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    :cond_0
    return-void
.end method

.method public onSecondDownloadFinish(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 96
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/oplus/camera/sticker/provider/FileProvider;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logo_file_uri"

    .line 98
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "logo_path"

    .line 99
    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getStickerUUID()Ljava/lang/String;

    move-result-object p0

    const-string p3, "uuid"

    invoke-static {p1, p3, p0, p2}, Lcom/oplus/camera/sticker/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    :cond_0
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setLogoPath(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->mLogoPath:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->mThumbnailPath:Ljava/lang/String;

    return-void
.end method

.method public toDumpString()Ljava/lang/String;
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getStickerId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getStickerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reqTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getLastRequestTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getDownloadState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getDownloadTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getDownloadUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getCategoryPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pVer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getProtocolVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", attr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getAttribute()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", buildIn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->isBuildIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasMusic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->hasMusic()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->needUpdate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNew: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->isStickerNew()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->isValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getStickerUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileMd5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getFileMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbMd5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getThumbnailMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logoMd5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItemWrapper;->getLogoMd5()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
