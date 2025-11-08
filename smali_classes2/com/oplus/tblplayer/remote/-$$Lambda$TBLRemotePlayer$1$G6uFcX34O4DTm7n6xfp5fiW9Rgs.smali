.class public final synthetic Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$G6uFcX34O4DTm7n6xfp5fiW9Rgs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$G6uFcX34O4DTm7n6xfp5fiW9Rgs;->f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;

    iput p2, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$G6uFcX34O4DTm7n6xfp5fiW9Rgs;->f$1:I

    iput p3, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$G6uFcX34O4DTm7n6xfp5fiW9Rgs;->f$2:I

    iput p4, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$G6uFcX34O4DTm7n6xfp5fiW9Rgs;->f$3:I

    iput p5, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$G6uFcX34O4DTm7n6xfp5fiW9Rgs;->f$4:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$G6uFcX34O4DTm7n6xfp5fiW9Rgs;->f$0:Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;

    iget v1, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$G6uFcX34O4DTm7n6xfp5fiW9Rgs;->f$1:I

    iget v2, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$G6uFcX34O4DTm7n6xfp5fiW9Rgs;->f$2:I

    iget v3, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$G6uFcX34O4DTm7n6xfp5fiW9Rgs;->f$3:I

    iget p0, p0, Lcom/oplus/tblplayer/remote/-$$Lambda$TBLRemotePlayer$1$G6uFcX34O4DTm7n6xfp5fiW9Rgs;->f$4:F

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/oplus/tblplayer/remote/TBLRemotePlayer$1;->lambda$notifyVideoSizeChanged$4$TBLRemotePlayer$1(IIIF)V

    return-void
.end method
