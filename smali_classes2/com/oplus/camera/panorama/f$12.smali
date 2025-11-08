.class Lcom/oplus/camera/panorama/f$12;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Lcom/oplus/camera/ui/camerascreenhint/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/panorama/f;->k()V
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

    .line 717
    iput-object p1, p0, Lcom/oplus/camera/panorama/f$12;->a:Lcom/oplus/camera/panorama/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/oplus/camera/panorama/f$12;->a:Lcom/oplus/camera/panorama/f;

    invoke-virtual {p0}, Lcom/oplus/camera/panorama/f;->isBottomGuideEntryViewShown()Z

    move-result p0

    return p0
.end method
