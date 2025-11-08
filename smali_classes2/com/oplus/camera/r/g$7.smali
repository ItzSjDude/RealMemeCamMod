.class Lcom/oplus/camera/r/g$7;
.super Ljava/lang/Object;
.source "SlowVideoMode.java"

# interfaces
.implements Lcom/oplus/camera/r/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/r/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/r/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/r/g;)V
    .locals 0

    .line 1499
    iput-object p1, p0, Lcom/oplus/camera/r/g$7;->a:Lcom/oplus/camera/r/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1502
    new-instance v0, Lcom/oplus/camera/ui/control/e$d;

    invoke-direct {v0}, Lcom/oplus/camera/ui/control/e$d;-><init>()V

    const/4 v1, 0x1

    .line 1503
    iput v1, v0, Lcom/oplus/camera/ui/control/e$d;->k:I

    .line 1504
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    .line 1505
    iget-object v2, p0, Lcom/oplus/camera/r/g$7;->a:Lcom/oplus/camera/r/g;

    invoke-static {v2}, Lcom/oplus/camera/r/g;->B(Lcom/oplus/camera/r/g;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1, v0}, Lcom/oplus/camera/r/g;->a(Lcom/oplus/camera/r/g;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/camera/ui/control/e$d;)Z

    .line 1506
    iget-object v2, p0, Lcom/oplus/camera/r/g$7;->a:Lcom/oplus/camera/r/g;

    invoke-static {v2, v0, v1, v1}, Lcom/oplus/camera/r/g;->a(Lcom/oplus/camera/r/g;Lcom/oplus/camera/ui/control/e$d;ZZ)V

    .line 1507
    iget-object p0, p0, Lcom/oplus/camera/r/g$7;->a:Lcom/oplus/camera/r/g;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/r/g;->a(Lcom/oplus/camera/r/g;Z)Z

    .line 1509
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProcessFinished !, videoContentUri = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlowVideoMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 1514
    iget-object v0, p0, Lcom/oplus/camera/r/g$7;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0}, Lcom/oplus/camera/r/g;->C(Lcom/oplus/camera/r/g;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/r/g;->a(Lcom/oplus/camera/r/g;Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/oplus/camera/r/g$7;->a:Lcom/oplus/camera/r/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/oplus/camera/r/g;->a(Lcom/oplus/camera/r/g;Lcom/oplus/camera/ui/control/e$d;ZZ)V

    .line 1516
    iget-object p0, p0, Lcom/oplus/camera/r/g$7;->a:Lcom/oplus/camera/r/g;

    invoke-static {p0, v1}, Lcom/oplus/camera/r/g;->a(Lcom/oplus/camera/r/g;Z)Z

    .line 1518
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCompileFailed !, videoContentUri = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlowVideoMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
