.class Lcom/oplus/camera/ui/preview/ai$6;
.super Ljava/lang/Object;
.source "ZoomSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/ai;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/ai;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/ai;)V
    .locals 0

    .line 1389
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ai$6;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$6;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/ai;->b(Lcom/oplus/camera/ui/preview/ai;)V

    .line 1393
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ai$6;->a:Lcom/oplus/camera/ui/preview/ai;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ai;->setStatus(I)V

    return-void
.end method
