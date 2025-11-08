.class Lcom/cdv/io/NvAndroidVideoFileReaderSW$2;
.super Ljava/lang/Object;
.source "NvAndroidVideoFileReaderSW.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CleanupDecoder(Z)V
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

    .line 509
    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$2;->this$0:Lcom/cdv/io/NvAndroidVideoFileReaderSW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 512
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$2;->this$0:Lcom/cdv/io/NvAndroidVideoFileReaderSW;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->access$200(Lcom/cdv/io/NvAndroidVideoFileReaderSW;Z)V

    return-void
.end method
