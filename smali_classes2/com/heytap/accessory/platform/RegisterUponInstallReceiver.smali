.class public final Lcom/heytap/accessory/platform/RegisterUponInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegisterUponInstallReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String; = "RegisterUponInstallReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/heytap/accessory/platform/RegisterUponInstallReceiver$1;

    invoke-direct {p2, p0}, Lcom/heytap/accessory/platform/RegisterUponInstallReceiver$1;-><init>(Lcom/heytap/accessory/platform/RegisterUponInstallReceiver;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
