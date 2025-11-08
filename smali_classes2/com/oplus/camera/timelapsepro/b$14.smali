.class Lcom/oplus/camera/timelapsepro/b$14;
.super Ljava/lang/Object;
.source "ParameterContainer.java"

# interfaces
.implements Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/b;->k()V
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

    .line 520
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b$14;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 529
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b$14;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/b;->l(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/a/e;->d(Z)V

    return-void
.end method

.method public static synthetic lambda$_BBpe9w6y_keVJuKbA9m1R2QXaU(Lcom/oplus/camera/timelapsepro/b$14;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b$14;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 528
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b$14;->a:Lcom/oplus/camera/timelapsepro/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/timelapsepro/b;I)V

    .line 529
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b$14;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/b;->h(Lcom/oplus/camera/timelapsepro/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$14$_BBpe9w6y_keVJuKbA9m1R2QXaU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$14$_BBpe9w6y_keVJuKbA9m1R2QXaU;-><init>(Lcom/oplus/camera/timelapsepro/b$14;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 531
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b$14;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/b;->l(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b$14;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "time_lapse_ev"

    if-eqz v0, :cond_0

    .line 532
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b$14;->a:Lcom/oplus/camera/timelapsepro/b;

    const-string v0, "auto"

    invoke-static {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b$14;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/b;->l(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/b;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V
    .locals 0

    return-void
.end method
