.class public final synthetic Lcom/oplus/camera/capmode/-$$Lambda$w$m-1Sq3iArwzFawybFCdK_j6Tj5o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/capmode/w;

.field private final synthetic f$1:Lcom/oplus/camera/ui/control/e$d;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/capmode/w;Lcom/oplus/camera/ui/control/e$d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/capmode/-$$Lambda$w$m-1Sq3iArwzFawybFCdK_j6Tj5o;->f$0:Lcom/oplus/camera/capmode/w;

    iput-object p2, p0, Lcom/oplus/camera/capmode/-$$Lambda$w$m-1Sq3iArwzFawybFCdK_j6Tj5o;->f$1:Lcom/oplus/camera/ui/control/e$d;

    iput-boolean p3, p0, Lcom/oplus/camera/capmode/-$$Lambda$w$m-1Sq3iArwzFawybFCdK_j6Tj5o;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/camera/capmode/-$$Lambda$w$m-1Sq3iArwzFawybFCdK_j6Tj5o;->f$0:Lcom/oplus/camera/capmode/w;

    iget-object v1, p0, Lcom/oplus/camera/capmode/-$$Lambda$w$m-1Sq3iArwzFawybFCdK_j6Tj5o;->f$1:Lcom/oplus/camera/ui/control/e$d;

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/-$$Lambda$w$m-1Sq3iArwzFawybFCdK_j6Tj5o;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/capmode/w;->lambda$stopVideoRecordThread$0$w(Lcom/oplus/camera/ui/control/e$d;Z)V

    return-void
.end method
