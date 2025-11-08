.class Lcom/oplus/camera/ui/preview/MultiFocusView$1;
.super Ljava/lang/Object;
.source "MultiFocusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/MultiFocusView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/MultiFocusView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/MultiFocusView;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/MultiFocusView$1;->a:Lcom/oplus/camera/ui/preview/MultiFocusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 418
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/MultiFocusView$1;->a:Lcom/oplus/camera/ui/preview/MultiFocusView;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/MultiFocusView;->a(Lcom/oplus/camera/ui/preview/MultiFocusView;)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/MultiFocusView;->getLocationOnScreen([I)V

    return-void
.end method
