.class final Lcom/heytap/accessory/stream/a$a;
.super Ljava/lang/Object;
.source "StreamTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/stream/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/heytap/accessory/core/IStreamManager;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/accessory/core/IStreamManager;)V
    .locals 0

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p2, p0, Lcom/heytap/accessory/stream/a$a;->b:Ljava/lang/String;

    .line 410
    iput-object p1, p0, Lcom/heytap/accessory/stream/a$a;->c:Landroid/content/Context;

    .line 411
    iput-object p3, p0, Lcom/heytap/accessory/stream/a$a;->a:Lcom/heytap/accessory/core/IStreamManager;

    return-void
.end method
