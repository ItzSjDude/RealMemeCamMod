.class Lcom/oplus/camera/timelapsepro/b$12;
.super Ljava/lang/Object;
.source "ParameterContainer.java"

# interfaces
.implements Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/b;->j()V
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

    .line 454
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b$12;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 467
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b$12;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/b;->i(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/a/e;->d(Z)V

    return-void
.end method

.method public static synthetic lambda$WNHMVRniA9Lw-laBYlHnDSjfqCs(Lcom/oplus/camera/timelapsepro/b$12;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b$12;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b$12;->a:Lcom/oplus/camera/timelapsepro/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/timelapsepro/b;I)V

    .line 467
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b$12;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/b;->h(Lcom/oplus/camera/timelapsepro/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$12$WNHMVRniA9Lw-laBYlHnDSjfqCs;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$12$WNHMVRniA9Lw-laBYlHnDSjfqCs;-><init>(Lcom/oplus/camera/timelapsepro/b$12;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 468
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b$12;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/b;->i(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_lapse_exp"

    invoke-static {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V
    .locals 0

    .line 457
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$12;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/b;->i(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 458
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$12;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/b;->k(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/ui/inverse/InverseTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->performClick()Z

    .line 461
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b$12;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/b;->g(Lcom/oplus/camera/timelapsepro/b;)V

    return-void
.end method
