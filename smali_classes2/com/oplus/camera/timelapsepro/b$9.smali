.class Lcom/oplus/camera/timelapsepro/b$9;
.super Ljava/lang/Object;
.source "ParameterContainer.java"

# interfaces
.implements Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;


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

    .line 341
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b$9;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;I)V
    .locals 1

    .line 344
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$9;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oplus/camera/timelapsepro/a/e;->a(I)V

    .line 346
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$9;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result p1

    if-nez p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$9;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/timelapsepro/a/e;->f()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b$9;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/timelapsepro/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$9;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result p2

    const-string v0, "pref_time_lapse_pro_index_of_iso_key"

    invoke-static {p1, v0, p2}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/timelapsepro/b;Ljava/lang/String;I)V

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$9;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/b;->c(Lcom/oplus/camera/timelapsepro/b;)V

    .line 352
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$9;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/b;->d(Lcom/oplus/camera/timelapsepro/b;)V

    .line 354
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$9;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/b;->e(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 355
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b$9;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/b;->e(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(Z)V

    .line 356
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b$9;->a:Lcom/oplus/camera/timelapsepro/b;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/timelapsepro/b;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
