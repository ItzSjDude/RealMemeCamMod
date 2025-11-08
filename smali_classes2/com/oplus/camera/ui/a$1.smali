.class Lcom/oplus/camera/ui/a$1;
.super Ljava/lang/Object;
.source "BackgroundSplitManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/a;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/a;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/oplus/camera/ui/a$1;->a:Lcom/oplus/camera/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 135
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/a$1;->a:Lcom/oplus/camera/ui/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/a;->a(Lcom/oplus/camera/ui/a;)Lcom/oplus/camera/ui/a$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
