.class Lcom/oplus/camera/capmode/m$2;
.super Ljava/lang/Object;
.source "LongExposureMode.java"

# interfaces
.implements Lcom/oplus/camera/ui/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/m;->onInitCameraMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/m;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/m;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/oplus/camera/capmode/m$2;->a:Lcom/oplus/camera/capmode/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "LongExposureMode"

    const-string v1, "onUpdate"

    .line 183
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$2;->a:Lcom/oplus/camera/capmode/m;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/m;->mbPaused:Z

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$2;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v0}, Lcom/oplus/camera/capmode/m;->b(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/ui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/i;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    const-wide/32 v2, 0x57e40

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 189
    iget-object p0, p0, Lcom/oplus/camera/capmode/m$2;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {p0}, Lcom/oplus/camera/capmode/m;->b(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/ui/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/i;->a()V

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x55730

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const v0, 0x7f1005e5

    .line 190
    iget-object v1, p0, Lcom/oplus/camera/capmode/m$2;->a:Lcom/oplus/camera/capmode/m;

    .line 191
    invoke-static {v1}, Lcom/oplus/camera/capmode/m;->c(Lcom/oplus/camera/capmode/m;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 192
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$2;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v0}, Lcom/oplus/camera/capmode/m;->d(Lcom/oplus/camera/capmode/m;)V

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$2;->a:Lcom/oplus/camera/capmode/m;

    const v1, 0x7f1005e3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, v2}, Lcom/oplus/camera/capmode/m;->a(Lcom/oplus/camera/capmode/m;IZII)V

    .line 194
    iget-object p0, p0, Lcom/oplus/camera/capmode/m$2;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {p0}, Lcom/oplus/camera/capmode/m;->b(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/ui/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/i;->e()V

    goto :goto_0

    .line 196
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/m$2;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {p0}, Lcom/oplus/camera/capmode/m;->b(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/ui/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/i;->e()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/oplus/camera/capmode/m$2;->a:Lcom/oplus/camera/capmode/m;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->b()V

    return-void
.end method
