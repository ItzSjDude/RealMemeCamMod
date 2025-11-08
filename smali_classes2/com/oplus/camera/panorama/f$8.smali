.class Lcom/oplus/camera/panorama/f$8;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Lcom/oplus/camera/panorama/PanoramaProgressBar$RearPanoramaInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/panorama/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/panorama/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/panorama/f;)V
    .locals 0

    .line 1957
    iput-object p1, p0, Lcom/oplus/camera/panorama/f$8;->a:Lcom/oplus/camera/panorama/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReportDirectionChange(I)V
    .locals 0

    .line 1960
    iget-object p0, p0, Lcom/oplus/camera/panorama/f$8;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {p0, p1}, Lcom/oplus/camera/panorama/f;->i(Lcom/oplus/camera/panorama/f;I)V

    return-void
.end method
