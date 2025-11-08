.class public Lcom/oplus/camera/watch/WatchAgentService$a;
.super Landroid/os/Binder;
.source "WatchAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/watch/WatchAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/watch/WatchAgentService;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/watch/WatchAgentService;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/oplus/camera/watch/WatchAgentService$a;->a:Lcom/oplus/camera/watch/WatchAgentService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/oplus/camera/watch/f;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/oplus/camera/watch/WatchAgentService$a;->a:Lcom/oplus/camera/watch/WatchAgentService;

    invoke-static {p0}, Lcom/oplus/camera/watch/WatchAgentService;->a(Lcom/oplus/camera/watch/WatchAgentService;)Lcom/oplus/camera/watch/f;

    move-result-object p0

    return-object p0
.end method
