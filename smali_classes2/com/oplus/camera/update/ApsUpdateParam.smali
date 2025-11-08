.class public Lcom/oplus/camera/update/ApsUpdateParam;
.super Ljava/lang/Object;
.source "ApsUpdateParam.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mUpdateContent:Ljava/lang/String;

.field private mUpdateFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/oplus/camera/update/ApsUpdateParam;->mUpdateFilePath:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/oplus/camera/update/ApsUpdateParam;->mUpdateContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUpdateContent()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/camera/update/ApsUpdateParam;->mUpdateContent:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateFilePath()Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/oplus/camera/update/ApsUpdateParam;->mUpdateFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public isValid()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/oplus/camera/update/ApsUpdateParam;->mUpdateFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/update/ApsUpdateParam;->mUpdateContent:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setUpdateContent(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/oplus/camera/update/ApsUpdateParam;->mUpdateContent:Ljava/lang/String;

    return-void
.end method

.method public setUpdateFilePath(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/oplus/camera/update/ApsUpdateParam;->mUpdateFilePath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApsUpdateParam{mUpdateFilePath: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/update/ApsUpdateParam;->mUpdateFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mUpdateContent: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/update/ApsUpdateParam;->mUpdateContent:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
