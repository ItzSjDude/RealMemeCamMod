.class public final synthetic Lcom/oplus/camera/ui/widget/-$$Lambda$hobVwP6p8vZmS_btJelTxt7Jx3k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/widget/-$$Lambda$hobVwP6p8vZmS_btJelTxt7Jx3k;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/-$$Lambda$hobVwP6p8vZmS_btJelTxt7Jx3k;->f$0:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
