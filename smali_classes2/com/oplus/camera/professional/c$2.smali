.class Lcom/oplus/camera/professional/c$2;
.super Ljava/lang/Object;
.source "HSLevelPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/c;->a(ILandroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/professional/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/c;I)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/oplus/camera/professional/c$2;->b:Lcom/oplus/camera/professional/c;

    iput p2, p0, Lcom/oplus/camera/professional/c$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/oplus/camera/professional/c$2;->b:Lcom/oplus/camera/professional/c;

    iget-object v0, v0, Lcom/oplus/camera/professional/c;->d:Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;

    iget v1, p0, Lcom/oplus/camera/professional/c$2;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/CommonComponent/HSScaleBar;->scrollTo(I)V

    .line 253
    iget-object v0, p0, Lcom/oplus/camera/professional/c$2;->b:Lcom/oplus/camera/professional/c;

    invoke-static {v0}, Lcom/oplus/camera/professional/c;->a(Lcom/oplus/camera/professional/c;)Lcom/oplus/camera/professional/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/oplus/camera/professional/c$2;->b:Lcom/oplus/camera/professional/c;

    invoke-static {v0}, Lcom/oplus/camera/professional/c;->a(Lcom/oplus/camera/professional/c;)Lcom/oplus/camera/professional/c$a;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/professional/c$2;->a:I

    invoke-interface {v0, p0}, Lcom/oplus/camera/professional/c$a;->a(I)V

    :cond_0
    return-void
.end method
