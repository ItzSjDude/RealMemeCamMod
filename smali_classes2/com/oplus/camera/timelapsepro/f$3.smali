.class Lcom/oplus/camera/timelapsepro/f$3;
.super Landroid/os/Handler;
.source "TimeLapseProGuideLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/f;-><init>(Landroid/content/Context;Lcom/oplus/camera/timelapsepro/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/f;Landroid/os/Looper;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/f$3;->a:Lcom/oplus/camera/timelapsepro/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
