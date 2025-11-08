.class Lcom/oplus/camera/CameraManager$49$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/control/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$49;->a(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$49;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$49;)V
    .locals 0

    .line 14282
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$49$2;->a:Lcom/oplus/camera/CameraManager$49;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ[B)V
    .locals 6

    .line 14285
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49$2;->a:Lcom/oplus/camera/CameraManager$49;

    const/4 v5, 0x0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/oplus/camera/CameraManager$49;->a(Lcom/oplus/camera/CameraManager$49;JJLandroid/media/Image;)V

    return-void
.end method
