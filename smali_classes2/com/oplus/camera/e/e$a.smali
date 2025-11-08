.class Lcom/oplus/camera/e/e$a;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/e/e;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/oplus/camera/e/e;)V
    .locals 0

    .line 1772
    iput-object p1, p0, Lcom/oplus/camera/e/e$a;->a:Lcom/oplus/camera/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1773
    iput-object p1, p0, Lcom/oplus/camera/e/e$a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1774
    iput-boolean p1, p0, Lcom/oplus/camera/e/e$a;->c:Z

    .line 1775
    iput-boolean p1, p0, Lcom/oplus/camera/e/e$a;->d:Z

    .line 1776
    iput-boolean p1, p0, Lcom/oplus/camera/e/e$a;->e:Z

    const/4 p1, 0x1

    .line 1777
    iput-boolean p1, p0, Lcom/oplus/camera/e/e$a;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/e/e;Lcom/oplus/camera/e/e$1;)V
    .locals 0

    .line 1772
    invoke-direct {p0, p1}, Lcom/oplus/camera/e/e$a;-><init>(Lcom/oplus/camera/e/e;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFinish, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e$a;->a:Lcom/oplus/camera/e/e;

    iget v1, v1, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", finish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    iput-boolean p1, p0, Lcom/oplus/camera/e/e$a;->d:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .line 1780
    iput-boolean p1, p0, Lcom/oplus/camera/e/e$a;->e:Z

    .line 1781
    iput-boolean p2, p0, Lcom/oplus/camera/e/e$a;->f:Z

    return-void
.end method

.method public a()Z
    .locals 0

    .line 1791
    iget-boolean p0, p0, Lcom/oplus/camera/e/e$a;->d:Z

    return p0
.end method

.method public b()Z
    .locals 0

    .line 1795
    iget-boolean p0, p0, Lcom/oplus/camera/e/e$a;->f:Z

    return p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 1799
    iget-object p0, p0, Lcom/oplus/camera/e/e$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public run()V
    .locals 3

    .line 1812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloseStreamTask, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e$a;->a:Lcom/oplus/camera/e/e;

    iget v1, v1, Lcom/oplus/camera/e/e;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOutSurfaceMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e$a;->a:Lcom/oplus/camera/e/e;

    .line 1813
    invoke-static {v1}, Lcom/oplus/camera/e/e;->y(Lcom/oplus/camera/e/e;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/e/e$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSurfaceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/e$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mbWillCloseSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/e/e$a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    .line 1812
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1816
    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/e$a;->a(Z)V

    return-void
.end method
