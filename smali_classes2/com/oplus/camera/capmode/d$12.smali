.class Lcom/oplus/camera/capmode/d$12;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/d;->cameraIdChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/d;)V
    .locals 0

    .line 1743
    iput-object p1, p0, Lcom/oplus/camera/capmode/d$12;->a:Lcom/oplus/camera/capmode/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1746
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$12;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {p0}, Lcom/oplus/camera/capmode/d;->access$400(Lcom/oplus/camera/capmode/d;)V

    return-void
.end method
