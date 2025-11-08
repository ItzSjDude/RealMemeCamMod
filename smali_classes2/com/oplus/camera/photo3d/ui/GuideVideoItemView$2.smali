.class Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$2;
.super Ljava/lang/Object;
.source "GuideVideoItemView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$2;->a:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "GuideItemView"

    const-string v0, "onCompletion"

    .line 71
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView$2;->a:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->b()V

    return-void
.end method
