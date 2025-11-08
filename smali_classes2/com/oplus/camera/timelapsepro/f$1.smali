.class Lcom/oplus/camera/timelapsepro/f$1;
.super Ljava/lang/Object;
.source "TimeLapseProGuideLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/f;-><init>(Landroid/content/Context;Lcom/oplus/camera/timelapsepro/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/f;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/f$1;->a:Lcom/oplus/camera/timelapsepro/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/f$1;->a:Lcom/oplus/camera/timelapsepro/f;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/f;->a(Lcom/oplus/camera/timelapsepro/f;)Lcom/oplus/camera/timelapsepro/f$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/f$1;->a:Lcom/oplus/camera/timelapsepro/f;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/f;->b()V

    .line 74
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/f$1;->a:Lcom/oplus/camera/timelapsepro/f;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/f;->a(Lcom/oplus/camera/timelapsepro/f;)Lcom/oplus/camera/timelapsepro/f$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/timelapsepro/f$a;->a()V

    :cond_0
    return-void
.end method
