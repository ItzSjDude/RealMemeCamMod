.class public final synthetic Lcom/heytap/accessory/discovery/-$$Lambda$BaseManager$aMieKosyIF9uIP9iv30hlIzfv5M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/heytap/accessory/discovery/d;


# direct methods
.method public synthetic constructor <init>(Lcom/heytap/accessory/discovery/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/accessory/discovery/-$$Lambda$BaseManager$aMieKosyIF9uIP9iv30hlIzfv5M;->f$0:Lcom/heytap/accessory/discovery/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/heytap/accessory/discovery/-$$Lambda$BaseManager$aMieKosyIF9uIP9iv30hlIzfv5M;->f$0:Lcom/heytap/accessory/discovery/d;

    invoke-static {p0}, Lcom/heytap/accessory/discovery/BaseManager;->lambda$runOnBackGround$2(Lcom/heytap/accessory/discovery/d;)V

    return-void
.end method
