.class Lcom/oplus/camera/ui/preview/a/q$7;
.super Ljava/lang/Object;
.source "ImageStickerTools.java"

# interfaces
.implements Lcom/oplus/camera/sticker/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/q;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/q;)V
    .locals 0

    .line 977
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "ImageStickerTools"

    const-string v1, "onStickerImportFinish"

    .line 1036
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/q;->g()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1039
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/q;->c()V

    .line 1041
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/q;->e(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/v;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1042
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/q;->e(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/v;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/a/v;->a()V

    .line 1044
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(I)V
    .locals 2

    .line 980
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/q;->g()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 982
    :try_start_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/q;->c()V

    .line 984
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/q;->e(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/v;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 985
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/q;->e(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/v;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/a/v;->a()V

    .line 988
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 2

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStickerDelete, item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageStickerTools"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x1

    .line 1021
    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/sticker/data/StickerItem;->matchAppAttribute(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1025
    :cond_0
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/q;->g()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1026
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/q;->c()V

    .line 1028
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/q;->e(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/v;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1029
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/q;->e(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/v;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/v;->c(Lcom/oplus/camera/sticker/data/StickerItem;)V

    .line 1031
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/sticker/data/StickerItem;I)V
    .locals 2

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStickerDownloadFail, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageStickerTools"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1057
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onStickerDownloadFail return! Since item: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->e(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/v;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->e(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/v;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/oplus/camera/ui/preview/a/v;->a(Lcom/oplus/camera/sticker/data/StickerItem;I)V

    .line 1066
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {p2}, Lcom/oplus/camera/ui/preview/a/q;->f(Lcom/oplus/camera/ui/preview/a/q;)Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1067
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {p2}, Lcom/oplus/camera/ui/preview/a/q;->f(Lcom/oplus/camera/ui/preview/a/q;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/q$b;

    .line 1068
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/ui/preview/a/q;->a(Lcom/oplus/camera/ui/preview/a/q;Lcom/oplus/camera/ui/preview/a/q$b;Z)V

    :cond_2
    return-void
.end method

.method public b(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "ImageStickerTools"

    const-string p1, "onStickerDownloadSuccess return"

    .line 994
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 999
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStickerDownloadSuccess, item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageStickerTools"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 1001
    invoke-virtual {p1, v0}, Lcom/oplus/camera/sticker/data/StickerItem;->setDownloadState(I)V

    .line 1003
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/q;->g()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1004
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/q;->c()V

    .line 1006
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/q;->e(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/v;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1007
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/q;->e(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/v;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/oplus/camera/ui/preview/a/v;->b(Lcom/oplus/camera/sticker/data/StickerItem;)V

    .line 1009
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->f(Lcom/oplus/camera/ui/preview/a/q;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1012
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->f(Lcom/oplus/camera/ui/preview/a/q;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/q$b;

    .line 1013
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oplus/camera/ui/preview/a/q;->a(Lcom/oplus/camera/ui/preview/a/q;Lcom/oplus/camera/ui/preview/a/q$b;Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 1009
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public b(Lcom/oplus/camera/sticker/data/StickerItem;I)V
    .locals 2

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStickerDownloadPause, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageStickerTools"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1077
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onStickerDownloadPause return! Since item: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->e(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/v;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/q;->e(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/v;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/oplus/camera/ui/preview/a/v;->a(Lcom/oplus/camera/sticker/data/StickerItem;I)V

    .line 1086
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {p2}, Lcom/oplus/camera/ui/preview/a/q;->f(Lcom/oplus/camera/ui/preview/a/q;)Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1087
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {p2}, Lcom/oplus/camera/ui/preview/a/q;->f(Lcom/oplus/camera/ui/preview/a/q;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/q$b;

    .line 1088
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/ui/preview/a/q;->a(Lcom/oplus/camera/ui/preview/a/q;Lcom/oplus/camera/ui/preview/a/q$b;Z)V

    :cond_2
    return-void
.end method

.method public c(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 2

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateStickerDownloadTime, item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageStickerTools"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/q;->g()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1097
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/q;->c()V

    .line 1099
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/q;->e(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/v;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1100
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q$7;->a:Lcom/oplus/camera/ui/preview/a/q;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/q;->e(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/v;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/v;->d(Lcom/oplus/camera/sticker/data/StickerItem;)V

    .line 1102
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
