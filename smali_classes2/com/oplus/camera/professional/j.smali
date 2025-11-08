.class public Lcom/oplus/camera/professional/j;
.super Lcom/oplus/camera/professional/r;
.source "HighPictureProMenuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/professional/j$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/professional/r;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "pref_professional_iso_key"

    const-string v1, "100"

    .line 31
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pref_professional_exposure_time_key"

    const-string v1, "1/50s"

    .line 32
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pref_professional_whitebalance_key"

    const-string v1, "2000"

    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "0.00"

    const-string v1, "pref_professional_focus_mode_key"

    .line 34
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pref_professional_exposure_compensation_key"

    .line 35
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(J)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/oplus/camera/professional/j;->h:Lcom/oplus/camera/professional/r$b;

    check-cast v0, Lcom/oplus/camera/professional/j$a;

    invoke-interface {v0, p1, p2}, Lcom/oplus/camera/professional/j$a;->b(J)V

    .line 80
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/professional/r;->a(J)V

    return-void
.end method

.method public a([BZZ)V
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcom/oplus/camera/professional/j;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/j;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/j;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/professional/j;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 89
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/professional/r;->a([BZZ)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/oplus/camera/professional/j;->g:Lcom/oplus/camera/professional/p;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/oplus/camera/professional/j;->g:Lcom/oplus/camera/professional/p;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/professional/j;->c:Landroid/app/Activity;

    .line 44
    invoke-static {v2, v1}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 45
    iget-object p0, p0, Lcom/oplus/camera/professional/j;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/professional/p;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/oplus/camera/professional/j;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/j;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/oplus/camera/professional/j;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {v0}, Lcom/oplus/camera/professional/r$b;->i()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/oplus/camera/professional/j;->d:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/j;->g:Lcom/oplus/camera/professional/p;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/p;->e()V

    .line 67
    iget-object v0, p0, Lcom/oplus/camera/professional/j;->i:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a()V

    .line 68
    iget-object v0, p0, Lcom/oplus/camera/professional/j;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {v0}, Lcom/oplus/camera/professional/r$b;->g()V

    .line 69
    iget-object p0, p0, Lcom/oplus/camera/professional/j;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {p0, v2}, Lcom/oplus/camera/professional/r$b;->b(Z)V

    return v2

    :cond_2
    return v1
.end method
