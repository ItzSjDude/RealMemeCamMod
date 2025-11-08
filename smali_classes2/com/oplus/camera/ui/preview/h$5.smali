.class Lcom/oplus/camera/ui/preview/h$5;
.super Ljava/lang/Object;
.source "CameraScreenNail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/h;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/h$5;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 721
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h$5;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/h;->l(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/ui/preview/h$c;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/h$c;->ab()V

    return-void
.end method
