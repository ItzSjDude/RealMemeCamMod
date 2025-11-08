.class public Lcom/oplus/camera/aps/service/ApsService$LocalBinder;
.super Landroid/os/Binder;
.source "ApsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/aps/service/ApsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/camera/aps/service/ApsService;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/aps/service/ApsService;)V
    .locals 0

    .line 918
    iput-object p1, p0, Lcom/oplus/camera/aps/service/ApsService$LocalBinder;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/oplus/camera/aps/service/ApsService;
    .locals 0

    .line 920
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$LocalBinder;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    return-object p0
.end method
