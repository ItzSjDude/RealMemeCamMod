.class Lcom/oplus/camera/ui/d$44;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->aj(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;Z)V
    .locals 0

    .line 8508
    iput-object p1, p0, Lcom/oplus/camera/ui/d$44;->b:Lcom/oplus/camera/ui/d;

    iput-boolean p2, p0, Lcom/oplus/camera/ui/d$44;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 8511
    iget-object v0, p0, Lcom/oplus/camera/ui/d$44;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->G(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/g;

    move-result-object v0

    iget-boolean p0, p0, Lcom/oplus/camera/ui/d$44;->a:Z

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->c(Z)V

    return-void
.end method
