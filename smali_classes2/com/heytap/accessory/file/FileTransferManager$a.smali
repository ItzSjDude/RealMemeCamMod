.class final Lcom/heytap/accessory/file/FileTransferManager$a;
.super Ljava/lang/Object;
.source "FileTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/file/FileTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/heytap/accessory/core/IFileManager;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/accessory/core/IFileManager;)V
    .locals 0

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-object p2, p0, Lcom/heytap/accessory/file/FileTransferManager$a;->b:Ljava/lang/String;

    .line 592
    iput-object p1, p0, Lcom/heytap/accessory/file/FileTransferManager$a;->c:Landroid/content/Context;

    .line 593
    iput-object p3, p0, Lcom/heytap/accessory/file/FileTransferManager$a;->a:Lcom/heytap/accessory/core/IFileManager;

    return-void
.end method
