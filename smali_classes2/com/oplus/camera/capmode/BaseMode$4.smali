.class Lcom/oplus/camera/capmode/BaseMode$4;
.super Ljava/lang/Object;
.source "BaseMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/BaseMode;->onPreviewDecisionResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/BaseMode;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/BaseMode;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$4;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 958
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$4;->a:Lcom/oplus/camera/capmode/BaseMode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->capture(Z)Z

    return-void
.end method
