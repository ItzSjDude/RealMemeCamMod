.class Lcom/oplus/camera/professional/v$6;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->operateSpecificViewCallBack(Ljava/lang/Object;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v;)V
    .locals 0

    .line 2184
    iput-object p1, p0, Lcom/oplus/camera/professional/v$6;->a:Lcom/oplus/camera/professional/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2187
    iget-object v0, p0, Lcom/oplus/camera/professional/v$6;->a:Lcom/oplus/camera/professional/v;

    invoke-static {v0}, Lcom/oplus/camera/professional/v;->G(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/ListProfessionalModeBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2188
    iget-object p0, p0, Lcom/oplus/camera/professional/v$6;->a:Lcom/oplus/camera/professional/v;

    invoke-static {p0}, Lcom/oplus/camera/professional/v;->G(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/ListProfessionalModeBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b()V

    :cond_0
    return-void
.end method
