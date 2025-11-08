.class Lcom/oplus/camera/n/a$5;
.super Ljava/lang/Object;
.source "PortraitCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/n/a;->onFilterItemChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/n/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/n/a;)V
    .locals 0

    .line 1150
    iput-object p1, p0, Lcom/oplus/camera/n/a$5;->a:Lcom/oplus/camera/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1153
    iget-object p0, p0, Lcom/oplus/camera/n/a$5;->a:Lcom/oplus/camera/n/a;

    invoke-static {p0}, Lcom/oplus/camera/n/a;->j(Lcom/oplus/camera/n/a;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->q()V

    return-void
.end method
