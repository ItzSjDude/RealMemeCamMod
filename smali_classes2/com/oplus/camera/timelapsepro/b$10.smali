.class Lcom/oplus/camera/timelapsepro/b$10;
.super Ljava/lang/Object;
.source "ParameterContainer.java"

# interfaces
.implements Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/b;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b$10;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 374
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b$10;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/a/e;->d(Z)V

    return-void
.end method

.method public static synthetic lambda$k_fg28HmsJnR3pX1UP7OIlpdnQA(Lcom/oplus/camera/timelapsepro/b$10;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b$10;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b$10;->a:Lcom/oplus/camera/timelapsepro/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/timelapsepro/b;I)V

    .line 374
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b$10;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/b;->h(Lcom/oplus/camera/timelapsepro/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$10$k_fg28HmsJnR3pX1UP7OIlpdnQA;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$10$k_fg28HmsJnR3pX1UP7OIlpdnQA;-><init>(Lcom/oplus/camera/timelapsepro/b$10;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b$10;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_lapse_iso"

    invoke-static {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V
    .locals 0

    .line 364
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$10;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 365
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$10;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/b;->f(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/ui/inverse/InverseTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->performClick()Z

    .line 368
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b$10;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/b;->g(Lcom/oplus/camera/timelapsepro/b;)V

    return-void
.end method
