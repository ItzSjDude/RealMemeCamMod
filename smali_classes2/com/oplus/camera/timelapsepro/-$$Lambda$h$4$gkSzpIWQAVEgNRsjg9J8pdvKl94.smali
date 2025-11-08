.class public final synthetic Lcom/oplus/camera/timelapsepro/-$$Lambda$h$4$gkSzpIWQAVEgNRsjg9J8pdvKl94;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/timelapsepro/h$4;

.field private final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/timelapsepro/h$4;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$4$gkSzpIWQAVEgNRsjg9J8pdvKl94;->f$0:Lcom/oplus/camera/timelapsepro/h$4;

    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$4$gkSzpIWQAVEgNRsjg9J8pdvKl94;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$4$gkSzpIWQAVEgNRsjg9J8pdvKl94;->f$0:Lcom/oplus/camera/timelapsepro/h$4;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$4$gkSzpIWQAVEgNRsjg9J8pdvKl94;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/oplus/camera/timelapsepro/h$4;->lambda$gkSzpIWQAVEgNRsjg9J8pdvKl94(Lcom/oplus/camera/timelapsepro/h$4;Landroid/graphics/Bitmap;)V

    return-void
.end method
