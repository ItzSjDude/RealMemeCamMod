.class Lcom/oplus/camera/s/d$2;
.super Ljava/lang/Object;
.source "StarryMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/s/d;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/s/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/s/d;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/oplus/camera/s/d$2;->a:Lcom/oplus/camera/s/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 107
    iget-object p0, p0, Lcom/oplus/camera/s/d$2;->a:Lcom/oplus/camera/s/d;

    invoke-static {p0}, Lcom/oplus/camera/s/d;->d(Lcom/oplus/camera/s/d;)Lcom/oplus/camera/capmode/a;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    return-void
.end method
