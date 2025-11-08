.class final Lcom/heytap/accessory/stream/StreamTransfer$5;
.super Ljava/lang/Object;
.source "StreamTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/accessory/stream/StreamTransfer;->register()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/stream/StreamTransfer;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/stream/StreamTransfer;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer$5;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer$5;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {v0}, Lcom/heytap/accessory/stream/StreamTransfer;->access$1100(Lcom/heytap/accessory/stream/StreamTransfer;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamTransfer$5;->a:Lcom/heytap/accessory/stream/StreamTransfer;

    invoke-static {p0}, Lcom/heytap/accessory/stream/StreamTransfer;->access$1200(Lcom/heytap/accessory/stream/StreamTransfer;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/stream/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/accessory/stream/a;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 493
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
