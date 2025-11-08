.class Lcom/oplus/camera/capmode/b$6;
.super Ljava/lang/Object;
.source "CameraMediaCodec.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/b;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/b;)V
    .locals 0

    .line 910
    iput-object p1, p0, Lcom/oplus/camera/capmode/b$6;->a:Lcom/oplus/camera/capmode/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "CameraMediaCodec"

    const-string v1, "initAudioCodec, AudioEncode run"

    .line 913
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    iget-object p0, p0, Lcom/oplus/camera/capmode/b$6;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {p0}, Lcom/oplus/camera/capmode/b;->F(Lcom/oplus/camera/capmode/b;)V

    return-void
.end method
