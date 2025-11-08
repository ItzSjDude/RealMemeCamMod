.class Lcom/oplus/camera/timelapsepro/h$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TimeLapseProMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/h;->ab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    .line 3459
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h$7;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3462
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h$7;->a:Lcom/oplus/camera/timelapsepro/h;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/timelapsepro/h;Z)Z

    .line 3463
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h$7;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/h;->B(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/capmode/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aH()V

    return-void
.end method
