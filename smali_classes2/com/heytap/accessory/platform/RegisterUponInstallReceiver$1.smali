.class Lcom/heytap/accessory/platform/RegisterUponInstallReceiver$1;
.super Ljava/lang/Object;
.source "RegisterUponInstallReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/accessory/platform/RegisterUponInstallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/accessory/platform/RegisterUponInstallReceiver;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/platform/RegisterUponInstallReceiver;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/heytap/accessory/platform/RegisterUponInstallReceiver$1;->this$0:Lcom/heytap/accessory/platform/RegisterUponInstallReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
