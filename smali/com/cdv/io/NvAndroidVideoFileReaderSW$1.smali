.class Lcom/cdv/io/NvAndroidVideoFileReaderSW$1;
.super Ljava/lang/Object;
.source "NvAndroidVideoFileReaderSW.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cdv/io/NvAndroidVideoFileReaderSW;->setupDecoderWithImageReader(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cdv/io/NvAndroidVideoFileReaderSW;


# direct methods
.method constructor <init>(Lcom/cdv/io/NvAndroidVideoFileReaderSW;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$1;->this$0:Lcom/cdv/io/NvAndroidVideoFileReaderSW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    .line 464
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$1;->this$0:Lcom/cdv/io/NvAndroidVideoFileReaderSW;

    invoke-static {p1}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->access$000(Lcom/cdv/io/NvAndroidVideoFileReaderSW;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$1;->this$0:Lcom/cdv/io/NvAndroidVideoFileReaderSW;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->access$102(Lcom/cdv/io/NvAndroidVideoFileReaderSW;Z)Z

    .line 466
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$1;->this$0:Lcom/cdv/io/NvAndroidVideoFileReaderSW;

    invoke-static {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->access$000(Lcom/cdv/io/NvAndroidVideoFileReaderSW;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 467
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
