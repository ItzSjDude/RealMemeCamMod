.class final Lcom/heytap/accessory/BaseAdapter$1;
.super Ljava/lang/Object;
.source "BaseAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/BaseAdapter;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/BaseAdapter;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/heytap/accessory/BaseAdapter$1;->a:Lcom/heytap/accessory/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 126
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/BaseAdapter$1;->a:Lcom/heytap/accessory/BaseAdapter;

    invoke-static {p0}, Lcom/heytap/accessory/BaseAdapter;->access$200(Lcom/heytap/accessory/BaseAdapter;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 128
    invoke-static {}, Lcom/heytap/accessory/BaseAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bindToFramework failed!"

    invoke-static {v0, v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
