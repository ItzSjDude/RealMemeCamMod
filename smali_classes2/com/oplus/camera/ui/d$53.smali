.class Lcom/oplus/camera/ui/d$53;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->fy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;Ljava/lang/String;)V
    .locals 0

    .line 10001
    iput-object p1, p0, Lcom/oplus/camera/ui/d$53;->b:Lcom/oplus/camera/ui/d;

    iput-object p2, p0, Lcom/oplus/camera/ui/d$53;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 10004
    iget-object v0, p0, Lcom/oplus/camera/ui/d$53;->b:Lcom/oplus/camera/ui/d;

    iget-object p0, p0, Lcom/oplus/camera/ui/d$53;->a:Ljava/lang/String;

    const-string v1, "pref_camera_high_resolution_key"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
