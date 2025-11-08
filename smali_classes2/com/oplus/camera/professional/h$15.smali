.class Lcom/oplus/camera/professional/h$15;
.super Ljava/lang/Object;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/h;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/oplus/camera/professional/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/h;Ljava/lang/String;I)V
    .locals 0

    .line 3961
    iput-object p1, p0, Lcom/oplus/camera/professional/h$15;->c:Lcom/oplus/camera/professional/h;

    iput-object p2, p0, Lcom/oplus/camera/professional/h$15;->a:Ljava/lang/String;

    iput p3, p0, Lcom/oplus/camera/professional/h$15;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3964
    iget-object v0, p0, Lcom/oplus/camera/professional/h$15;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/h$15;->c:Lcom/oplus/camera/professional/h;

    .line 3965
    invoke-static {v0}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/h$15;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/camera/professional/h$15;->c:Lcom/oplus/camera/professional/h;

    .line 3966
    invoke-static {v1}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/professional/h$15;->b:I

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/e;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3967
    iget-object v0, p0, Lcom/oplus/camera/professional/h$15;->c:Lcom/oplus/camera/professional/h;

    invoke-static {v0}, Lcom/oplus/camera/professional/h;->C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/professional/h$15;->b:I

    iget-object p0, p0, Lcom/oplus/camera/professional/h$15;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/professional/e;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
