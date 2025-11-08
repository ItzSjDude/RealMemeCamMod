.class Lcom/oplus/camera/professional/v$16;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/oplus/camera/professional/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v;Ljava/lang/String;I)V
    .locals 0

    .line 4205
    iput-object p1, p0, Lcom/oplus/camera/professional/v$16;->c:Lcom/oplus/camera/professional/v;

    iput-object p2, p0, Lcom/oplus/camera/professional/v$16;->a:Ljava/lang/String;

    iput p3, p0, Lcom/oplus/camera/professional/v$16;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4208
    iget-object v0, p0, Lcom/oplus/camera/professional/v$16;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/v$16;->c:Lcom/oplus/camera/professional/v;

    .line 4209
    invoke-static {v0}, Lcom/oplus/camera/professional/v;->G(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/ListProfessionalModeBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/v$16;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/camera/professional/v$16;->c:Lcom/oplus/camera/professional/v;

    .line 4210
    invoke-static {v1}, Lcom/oplus/camera/professional/v;->G(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/ListProfessionalModeBar;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/professional/v$16;->b:I

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4211
    iget-object v0, p0, Lcom/oplus/camera/professional/v$16;->c:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->G(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/ListProfessionalModeBar;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/professional/v$16;->b:I

    iget-object p0, p0, Lcom/oplus/camera/professional/v$16;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
