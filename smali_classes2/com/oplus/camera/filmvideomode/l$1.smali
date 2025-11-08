.class Lcom/oplus/camera/filmvideomode/l$1;
.super Ljava/lang/Object;
.source "FilmSlideBarContainer.java"

# interfaces
.implements Lcom/oplus/camera/professional/LevelPanel$ValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/filmvideomode/l;->a(Landroid/widget/RelativeLayout$LayoutParams;IZLcom/oplus/camera/professional/z;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/filmvideomode/c;

.field final synthetic c:Lcom/oplus/camera/filmvideomode/l;


# direct methods
.method constructor <init>(Lcom/oplus/camera/filmvideomode/l;ILcom/oplus/camera/filmvideomode/c;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    iput p2, p0, Lcom/oplus/camera/filmvideomode/l$1;->a:I

    iput-object p3, p0, Lcom/oplus/camera/filmvideomode/l$1;->b:Lcom/oplus/camera/filmvideomode/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionUp()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/l;->b(Lcom/oplus/camera/filmvideomode/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/l;->c(Lcom/oplus/camera/filmvideomode/l;)Lcom/oplus/camera/professional/p$b;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/filmvideomode/l$1;->a:I

    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/l$1;->b:Lcom/oplus/camera/filmvideomode/c;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    invoke-static {p0}, Lcom/oplus/camera/filmvideomode/l;->d(Lcom/oplus/camera/filmvideomode/l;)Lcom/oplus/camera/capmode/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/oplus/camera/filmvideomode/c;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lcom/oplus/camera/professional/p$b;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onAutoButtonClick()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/l;->b(Lcom/oplus/camera/filmvideomode/l;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    iget v1, p0, Lcom/oplus/camera/filmvideomode/l$1;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/filmvideomode/l;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    iget v1, p0, Lcom/oplus/camera/filmvideomode/l$1;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/filmvideomode/l;->a(ZI)V

    .line 174
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/l;->c(Lcom/oplus/camera/filmvideomode/l;)Lcom/oplus/camera/professional/p$b;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/filmvideomode/l$1;->a:I

    const-string v1, "auto_off"

    invoke-interface {v0, p0, v1, v2}, Lcom/oplus/camera/professional/p$b;->a(ILjava/lang/String;Z)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    iget v1, p0, Lcom/oplus/camera/filmvideomode/l$1;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/filmvideomode/l;->a(ZI)V

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/l;->c(Lcom/oplus/camera/filmvideomode/l;)Lcom/oplus/camera/professional/p$b;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/filmvideomode/l$1;->a:I

    const-string v1, "auto"

    invoke-interface {v0, p0, v1, v2}, Lcom/oplus/camera/professional/p$b;->a(ILjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAutoValueChange(I)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/l;->a(Lcom/oplus/camera/filmvideomode/l;)Lcom/oplus/camera/filmvideomode/l$a;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/filmvideomode/l$1;->a:I

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/oplus/camera/filmvideomode/l$a;->a(IIZ)V

    return-void
.end method

.method public onBarScrolling(Z)V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/l;->b(Lcom/oplus/camera/filmvideomode/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/l;->c(Lcom/oplus/camera/filmvideomode/l;)Lcom/oplus/camera/professional/p$b;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/filmvideomode/l$1;->a:I

    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/l$1;->b:Lcom/oplus/camera/filmvideomode/c;

    iget-object v3, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    invoke-static {v3}, Lcom/oplus/camera/filmvideomode/l;->d(Lcom/oplus/camera/filmvideomode/l;)Lcom/oplus/camera/capmode/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/filmvideomode/c;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oplus/camera/professional/p$b;->a(ILjava/lang/String;Z)V

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    invoke-static {p0, p1}, Lcom/oplus/camera/filmvideomode/l;->a(Lcom/oplus/camera/filmvideomode/l;Z)Z

    return-void
.end method

.method public onManualValueChange(I)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    invoke-static {v0, p1}, Lcom/oplus/camera/filmvideomode/l;->a(Lcom/oplus/camera/filmvideomode/l;I)V

    .line 160
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    iget v1, p0, Lcom/oplus/camera/filmvideomode/l$1;->a:I

    iget-object v2, p0, Lcom/oplus/camera/filmvideomode/l$1;->b:Lcom/oplus/camera/filmvideomode/c;

    invoke-virtual {v2}, Lcom/oplus/camera/filmvideomode/c;->getPreferencesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/oplus/camera/filmvideomode/l;->a(ILjava/lang/String;I)V

    .line 161
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/l$1;->c:Lcom/oplus/camera/filmvideomode/l;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/l;->a(Lcom/oplus/camera/filmvideomode/l;)Lcom/oplus/camera/filmvideomode/l$a;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/filmvideomode/l$1;->a:I

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/oplus/camera/filmvideomode/l$a;->a(IIZ)V

    return-void
.end method
