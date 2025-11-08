.class Lcom/oplus/epona/internal/ActivityStackManager$1;
.super Ljava/lang/Object;
.source "ActivityStackManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/epona/internal/ActivityStackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/epona/internal/ActivityStackManager;


# direct methods
.method constructor <init>(Lcom/oplus/epona/internal/ActivityStackManager;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/oplus/epona/internal/ActivityStackManager$1;->this$0:Lcom/oplus/epona/internal/ActivityStackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/epona/internal/ActivityStackManager$1;->this$0:Lcom/oplus/epona/internal/ActivityStackManager;

    invoke-static {p0, p1}, Lcom/oplus/epona/internal/ActivityStackManager;->access$000(Lcom/oplus/epona/internal/ActivityStackManager;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/oplus/epona/internal/ActivityStackManager$1;->this$0:Lcom/oplus/epona/internal/ActivityStackManager;

    invoke-static {p0, p1}, Lcom/oplus/epona/internal/ActivityStackManager;->access$100(Lcom/oplus/epona/internal/ActivityStackManager;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
